<ul class="list-group">

  {foreach from=$vehiculos item=vehiculo}
      <li class="list-group-item">
      Vehiculo: {$vehiculo['nombre']} | Potencia: {$vehiculo['potencia']} hp| Categoria:{$vehiculo['fk_id_categoria']}
      <a href="borrarVehiculo/{$vehiculo['id_vehiculo']}"> Eliminar</a>
  </li>
  {/foreach}
</ul>
