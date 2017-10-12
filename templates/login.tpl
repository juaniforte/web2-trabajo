{include file="header.tpl"}

<div id="main">
  <div class="container contenedor">

    <img class="foto" src="img/nissan.jpg" alt="auto"><p></p>

        <div class="row loginCaja">

          <div class="col-md-3"></div>

          <div class="col-md-6">

            <div class="container col-md-12 contenido"> <!--separador -->
              <h3> Ingresar:
                <i class="fa fa-car pull-right hidden-xs-down" aria-hidden="true"></i>
              </h3>
            </div>

            <form action="verificarUsuario" method="post">
              <div class="form-group">
                <h4>Usuario:</h4>
                <input type="text" class="form-control" id="usuario" name="usuario" placeholder="roberto.petrusa" required>
              </div>
              <div class="form-group">
                <h4>Password:</h4>
                <input type="password" class="form-control" id="password" name ="password" placeholder="Password" required>
              </div>
              {if !empty($error) }
                <div class="alert alert-danger" role="alert">{$error}</div>
              {/if}
              <button type="submit" class="btn btn-default">Login</button>
            </form>
          </div>

          <div class="col-md-3"></div>

        </div>


    </div>



{include file="footer.tpl"}
