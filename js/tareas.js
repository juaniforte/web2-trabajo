$(document).ready(function(){

//  $(".showTareas").on("click", function(){
    $.ajax({
      url: "http://localhost/track_day_tablas/mostrarVehiculos",
      success: function(result){
        $("#vehiculos").html(result);
      }
    });

    $.ajax({
      url: "http://localhost/track_day_tablas/mostrarCat",
      success: function(result){
        $("#listaCategorias").html(result);
      }
    });


});
