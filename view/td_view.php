<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once 'libs/Smarty.class.php';

class td_view
{
  private $smarty;

  function __construct()
  {
    $this->smarty = new Smarty();
    $this->smarty->assign('titulo', 'Track Day Argentina');
  }

  function home(){
    $this->smarty->display('templates/index.tpl');
  }

  function quienes_somos(){
    $this->smarty->display('templates/quienes_somos.tpl');
  }

  function que_es_un_trd(){
    $this->smarty->display('templates/que_es_un_trd.tpl');
  }

  function preg_frecuentes(){
    $this->smarty->display('templates/preg_frecuentes.tpl');
  }

  function multimedia(){
    $this->smarty->display('templates/multimedia.tpl');
  }

  function inscripcion($categorias, $vehiculos){
    $this->smarty->assign('categorias', $categorias);
    $this->smarty->assign('vehiculos', $vehiculos);
    $this->smarty->display('templates/inscripcion.tpl');
  }

  function vehiculos(){
    $this->smarty->display('templates/ADMInscripcion.tpl');
  }

  function categorias(){
    $this->smarty->display('templates/ADMcategorias.tpl');
  }

  function mostrarVehiculos($vehiculos){

    $this->smarty->assign('vehiculos', $vehiculos);
    $this->smarty->display('templates/tareas.tpl');
  }

  function mostrarCategorias($categorias){

    $this->smarty->assign('categorias', $categorias);
    $this->smarty->display('templates/categorias.tpl');
  }

  function login(){
    $this->smarty->display('templates/login.tpl');
  }

  function mostrarLogin($error = ''){
    $this->smarty->assign('error', $error);
    $this->smarty->display('templates/login.tpl');
  }

}
?>
