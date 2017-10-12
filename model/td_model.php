<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

class td_model
{

  private $db;
  function __construct()
  {
    $this->db = new PDO('mysql:host=localhost;'.'dbname=track_day;charset=utf8', 'root', 'root');
  }

  function getVehiculo()
  {
    $sentencia = $this->db->prepare( "select * from vehiculo");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function insertVehiculo($nombre, $potencia, $fk_id_categoria)
  {
    $sentencia = $this->db->prepare("INSERT INTO vehiculo(nombre,potencia,fk_id_categoria) VALUES(?,?,?)");
    $sentencia->execute([$nombre, $potencia, $fk_id_categoria]);
  }

  function deleteVehiculo($id_vehiculo)
  {
    $sentencia = $this->db->prepare( "delete from vehiculo where id_vehiculo=?");
    return $sentencia->execute([$id_vehiculo]);
  }

  function getCategorias(){
    $sentencia = $this->db->prepare( "select * from categoria");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function insertCategoria($categoria, $descripcion)
  {
    $sentencia = $this->db->prepare("INSERT INTO categoria(categoria,nombre) VALUES(?,?)");
    $sentencia->execute([$categoria, $descripcion]);
  }

  function deleteCategoria($id_categoria)
  {
    $sentencia = $this->db->prepare( "delete from categoria where id_categoria=?");
    return $sentencia->execute([$id_categoria]);
  }

  function getUser($userName){
  $sentencia = $this->db->prepare( "select * from usuario where usuario = ? limit 1");
  $sentencia->execute([$userName]);
  return $sentencia->fetchAll(PDO::FETCH_ASSOC);
}

}
?>
