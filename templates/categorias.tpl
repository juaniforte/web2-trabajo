<ul class="list-group">
  {foreach from=$categorias item=categoria}
      <li class="list-group-item">
      Categoria: {$categoria['categoria']} | Descripcion: {$categoria['nombre']} hp
      <a href="borrarCategoria/{$categoria['id_categoria']}"> Eliminar</a>
  </li>
  {/foreach}
</ul>
