<?php

error_reporting(E_ALL);
ini_set('display_errors', '1');

class ConfigApp
{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
      ''=> 'td_controller#home',
      'Home'=> 'td_controller#home',
      'QuienesSomos'=> 'td_controller#quienes_somos',
      'QueEsUnTrackDay'=> 'td_controller#que_es_un_trd',
      'PreguntasFrecuentes'=> 'td_controller#preg_frecuentes',
      'Multimedia'=> 'td_controller#multimedia',
      'Inscripcion'=> 'td_controller#inscripcion',
      'agregarVehiculo'=> 'td_controller#agregarVehiculo',
      'borrarVehiculo'=> 'td_controller#borrarVehiculo',
      'mostrarVehiculos'=> 'td_controller#mostrarVehiculos',
      'mostrarCat'=> 'td_controller#mostrarCat',
      'agregarCategoria'=> 'td_controller#agregarCategoria',
      'mostrarCategorias'=> 'td_controller#mostrarCategorias',
      'borrarCategoria'=> 'td_controller#borrarCategoria',
      'Login'=> 'td_controller#login',
      'verificarUsuario' => 'td_controller#verify',
      'logout' => 'td_controller#destroy'

    ];
}
?>
