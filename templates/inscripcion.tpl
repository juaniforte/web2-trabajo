{include file="header.tpl"}

<div id="main">
  <div class="container contenedor inscripcionCaja">

    <img class="foto" src="img/foto_base.jpg" alt="auto"><p></p>

    <div class="row loginCaja">

      <div class="col-md-1"></div>

      <div class="col-md-10">

        <h3>Para inscribiste primero necesitas logearte!</h3>


        <form action="Login">
          <button type="submit" class="btn btn-default">Login</button>
        </form>

          </div>


          <div class="col-md-1"></div>



        <div class="col-md-6 contenido">
          <h4>Inscriptos:
          </i>
        </h4>

        <ul class="list-group">
          {foreach from=$vehiculos item=vehiculo}
              <li class="list-group-item">
              Vehiculo: {$vehiculo['nombre']} | Potencia: {$vehiculo['potencia']} hp| Categoria:{$vehiculo['fk_id_categoria']}
              <!-- <a href="borrarVehiculo/{$vehiculo['id_vehiculo']}"> Eliminar</a> -->
          </li>
          {/foreach}
        </ul>

      </div>
        <div class="col-md-6 contenido">

          <h4>Categorias:
        </h4>

          <ul class="list-group">
            {foreach from=$categorias item=categoria}
                <li class="list-group-item">
                Categoria: {$categoria['categoria']} | Descripcion: {$categoria['nombre']} hp
                <!-- <a href="borrarCategoria/{$categoria['id_categoria']}"> Eliminar</a> -->
            </li>
            {/foreach}
          </ul>

</div>

      </div>



















</div>
</div>
</div>
{include file="footer.tpl"}
