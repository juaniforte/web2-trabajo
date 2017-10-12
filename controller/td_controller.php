<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once('model/td_model.php');
include_once('view/td_view.php');
define('HOME', 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/');

class td_controller
{
  private $view;
  private $model;

  function __construct()
  {
    $this->view = new td_view();
    $this->model = new td_model();
  }

  public function home()
  {
    $this->view->home();
  }

  public function quienes_somos()
  {
    $this->view->quienes_somos();
  }

  public function que_es_un_trd()
  {
    $this->view->que_es_un_trd();
  }

  public function preg_frecuentes()
  {
    $this->view->preg_frecuentes();
  }

  public function multimedia()
  {
    $this->view->multimedia();
  }

  public function agregarVehiculo()
  {
    $nombre = $_POST['nombre'];
    $potencia = $_POST['potencia'];
    $fk_id_categoria = $_POST['fk_id_categoria'];

    $this->model->insertVehiculo($nombre, $potencia, $fk_id_categoria);
    header('Location: '.HOME.'/Inscripcion');
  }

  public function borrarVehiculo($params)
  {
    $id_borrar = $params[0];
    $this->model->deleteVehiculo($id_borrar);
    header('Location: '.HOME.'/Inscripcion');
  }

  function mostrarVehiculos(){

    $vehiculos = $this->model->getVehiculo();
    $this->view->mostrarVehiculos($vehiculos);
  }

  public function agregarCategoria()
  {
    $categoria = $_POST['categoria'];
    $descripcion = $_POST['descripcion'];
    $this->model->insertCategoria($categoria, $descripcion);
    header('Location: '.HOME.'/Inscripcion');
  }

  function mostrarCat(){
    $categorias = $this->model->getCategorias();
    $this->view->mostrarCategorias($categorias);
  }

  public function borrarCategoria($params)
  {
    $id_borrar = $params[0];
    $this->model->deleteCategoria($id_borrar);
    header('Location: '.HOME.'/Inscripcion');
  }

  public function login()
  {
    $this->view->login();
  }

  public function verify()
  {
    $userName = $_POST['usuario'];
    $password = $_POST['password'];
    if(!empty($userName) && !empty($password)){
      $user = $this->model->getUser($userName);
      if((!empty($user)) && password_verify($password, $user[0]['password'])) {
        session_start();
        $_SESSION["permiso"] = $user[0]['permiso'];
        $_SESSION['USER'] = $userName;
        $_SESSION['LAST_ACTIVITY'] = time();
        header('Location: '.HOME.'/Inscripcion');
      }
      else{
        $this->view->mostrarLogin('Usuario o Password incorrectos');
      }
    }
  }

  public function inscripcion()
  {
    session_start();
    $categorias = $this->model->getCategorias();
    if ( (!empty($_SESSION["permiso"]))   && $_SESSION["permiso"]==2){
      $categorias = $this->model->getCategorias();
      $vehiculos = $this->model->getVehiculo();
      $this->view->categorias($categorias, $vehiculos);

    }elseif ( (!empty($_SESSION["permiso"]))   && $_SESSION["permiso"]==1){
      $categorias = $this->model->getCategorias();
      $vehiculos = $this->model->getVehiculo();
      $this->view->vehiculos($categorias, $vehiculos);
    }else{
      $categorias = $this->model->getCategorias();
      $vehiculos = $this->model->getVehiculo();
      $this->view->inscripcion($categorias, $vehiculos);
      //print_r($hash = password_hash('123', PASSWORD_DEFAULT));
    }
    // if ($_SESSION["permiso"]=2){
    //   $categorias = $this->model->getCategorias();
    //   $this->view->inscripcion($categorias);
    //   $this->view->categorias();
    //   $this->view->vehiculos();
    //
    // }elseif ($_SESSION["permiso"]=1){
    //   $categorias = $this->model->getCategorias();
    //   $this->view->inscripcion($categorias);
    // }else{
    //   $this->view->inscripcion();
    // }


  }

  public function destroy()
  {
    session_start();
    session_destroy();
    header('Location: '.HOME.'');
  }

}

?>
