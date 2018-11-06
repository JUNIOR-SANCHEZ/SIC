<section class="content-header">
    <h1>
        Productos
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{$_layoutParams.root}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">productos</li>
    </ol>
</section>
<section class="content">
    <div class="row">
                <div class="col-sm-12">
            <a href="{$_layoutParams.root}almacen/producto/exel" class="btn btn-info"> 
            <i class="fa fa-file-excel-o" aria-hidden="true"></i>
             Exel
            </a>
            <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-ins">
                <i class="fa fa-plus    "></i>
                Nuevo Producto
            </button>
        </div>
                <hr>
        <div id="contenedor">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                        <div class="box-tools">
                            <ul class="pagination pagination-sm no-margin pull-right">
                                {if isset($paginador)}{$paginador}{/if}
                            </ul>
                        </div>
                    </div>
                    <div class="box-body no-padding">
                        <div class="table-responsive">
                              <table class="table ">
                    <tr>
                        <th style="width: 10px">#</th>
                        <th>Id_categoria</th>
                        <th>Id_presentacion</th>
                        <th>Id_marca</th>
                        <th>Descripcion</th>
                        <th>Min_producto</th>
                        <th>Max_producto</th>
                        <th>stock</th>
                    </tr>
                    {foreach item=x from=$consulta}
                    <tr>
                        <td>{$x["id"]}</td>
                        <td>{$x["id_cate"]}</td>
                        <td>{$x["id_pres"]}</td>
                        <td>{$x["id_marc"]}</td>
                        <td>{$x["description"]}</td>
                        <td>{$x["minProd"]}</td>
                        <td>{$x["maxProd"]}</td>
                        <td>{$x["stock"]}</td>
                    </tr>
                    {/foreach}
                </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="modal fade" id="modal-ins">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Nuevo Producto</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-ins" method="{$_layoutParams.root}almacen/producto/insertar_ajax">
                        <input type="hidden" name="" value="0" id="hiddent-prod-ins">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Tipo de Categoria</label>
                                <div class="col-sm-8">
                                    <select class="form-control custom-select" name="categoria_id" id="">
                                        <option value="0">Selección:</option>
                                        {foreach item=x from=$cate}
                                        <option value="{$x['id']}">{$x["description"]}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Presentacion</label>
                                <div class="col-sm-8">
                                    <select class="form-control custom-select" name="presentacion_id" id="">
                                        <option value="0">Selección:</option>
                                        {foreach item=x from=$pres}
                                        <option value="{$x['id']}">{$x["description"]}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Marca</label>
                                <div class="col-sm-8">
                                   <select class="form-control custom-select" name="marca_id" id="">
                                        <option value="0">Selección:</option>
                                        {foreach item=x from=$marc}
                                        <option value="{$x['id']}">{$x["description"]}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Descripcion</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtdescripcion" class="form-control" id="inp-des-ins"
                                        placeholder="Descripcion">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Minimo Producto</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txt_min_producto" class="form-control" id="inp-miprod-ins"
                                        placeholder="Minimo de producto">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Maximo Producto</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txt_max_producto" class="form-control" id="inp-maprod-ins"
                                        placeholder="Maximo de producto">
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Stock</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txt_stock" class="form-control" id="inp-sto-ins"
                                        placeholder="Stock">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times-circle-o"></i>
                        Cerrar</button>
                    <button type="button" id="btn-guardar-ins" class="btn btn-primary"><i class="fa fa-save"></i> Guardar</button>
                </div>
            </div>
        </div>
    </div>
</section>
