{include file="header.tpl"}

<div id="main">
  <div class="container contenedor">

    <img class="foto" src="img/foto_base.jpg" alt="auto"><p></p>



<div id="main">
  <div class="container contenedor">

    <div class="col-md-12 contenido"> <!--separador -->
      <h3> Agregar Categoria:
        <i class="fa fa-car pull-right hidden-xs-down" aria-hidden="true"></i>
      </h3>
    </div>


    <div class="col-md-6 contenido">
      <form action="agregarCategoria" method="post">
        <div class="form-group">
          <h4>Categoria</h4>
          <input type="text" class="form-control" id="categoria" name="categoria" placeholder="Categoria">
        </div>

        <div class="form-group">
          <h4>Descripcion</h4>
          <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Descripcion">
        </div>

        <button type="submit" class="btn btn-default">Agregar Categoria!</button>
      </form><p></p>
    </div>


    <div class="col-md-6 contenido">
      <h4>Categorias:
      </i>
    </h4>
    <div id="listaCategorias"></div>
    <p></p>
  </div>


  <div class="container col-md-12 contenido"> <!--separador -->
    <h3> Inscribir Vehiculo:
      <i class="fa fa-car pull-right hidden-xs-down" aria-hidden="true"></i>
    </h3>
  </div>


  <div class="col-md-6 contenido">
    <form action="agregarVehiculo" method="post">
      <div class="form-group">
        <h4>Marca y Modelo</h4>
        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
      </div>
      <div class="form-group">
        <h4>Potencia (en hp)</h4>
        <input type="text" class="form-control" id="potencia" name="potencia" placeholder="Potencia">
      </div>
      <div class="form-group">
        <h4>Categoria</h4>
        <input type="text" class="form-control" id="fk_id_categoria" name="fk_id_categoria" placeholder="Categoria">
          <select class="form-control selectpicker"id="categoria" data-style="btn-primary" name="fk_id_categoria" >
          {foreach from=$categorias key=index item=categoria}
          <option value="{$categoria['id_categoria']}">{$categoria['categoria']}</option>
          {/foreach}
        </select>
      </div>
      <button type="submit" class="btn btn-default">Agregar Vehiculo!</button>
    </form><p></p>
  </div>


  <div class="col-md-6 contenido">
    <h4>Inscriptos:
    </i>
  </h4>
  <div id="vehiculos"></div>
  <p></p>
  </div>

</div>

<div class="col-md-12 contenido">
<form action="logout">
  <h3>Salir:</h3>
  <button type="submit" class="btn btn-default">LogOut</button>
</form><p></p>
</div>

</div>

</div>
</div>
{include file="footer.tpl"}
