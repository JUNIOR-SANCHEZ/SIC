<section class="content-header">
    <h1>
        Clientes
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{$_layoutParams.root}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">clientes</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-sm-12">
            <a href="{$_layoutParams.root}compras/proveedores/exel" class="btn btn-info">
                <i class="fa fa-file-excel-o" aria-hidden="true"></i>
                Exel
            </a>
            <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-ins">
                <i class="fa fa-plus    "></i>
                Nuevo Proveedor
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
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>Cedula</th>
                                    <th>Dirección</th>
                                    <th>Correo</th>
                                    <th>Teléfono</th>
                                    <th>Celular</th>
                                </tr>
                                {if isset($consulta) && !empty($consulta)}
                                {foreach item=x from=$consulta}
                                <tr>
                                    <td>{$x["id"]}</td>
                                    <td>{$x["name"]}</td>
                                    <td>{$x["lastname"]}</td>
                                    <td>{$x["card"]}</td>
                                    <td>{$x["address"]}</td>
                                    <td>{$x["email"]}</td>
                                    <td>{$x["phone"]|default:"null"}</td>
                                    <td>{$x["mobile"]|default:"null"}</td>
                                    <td>
                                        <a data-ruta="{$_layoutParams.root}ventas/clientes/consulta_id_ajax/{$x['id']}"
                                            class="btn-select btn btn-link" data-toggle="modal" data-target="#modal-mod">
                                            <i class="fa fa-edit"></i>
                                        </a>
                                    </td>
                                </tr>
                                {/foreach}
                                {else}
                                <tr>
                                    <th colspan="9">
                                        <h1 class="text-center">
                                            No hay datos que mostrar
                                        </h1>
                                    </th>
                                </tr>
                                {/if}
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
                    <h4 class="modal-title">Nuevo Cliente</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-ins" action="{$_layoutParams.root}ventas/clientes/insertar_ajax">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Nombres: </label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtnombre" class="form-control" id="inp-nom-ins"
                                        placeholder="Nombres" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Apellidos</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtapellido" class="form-control" id="inp-ruc-ins"
                                        placeholder="Apellidos" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Cedula: </label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcedula" class="form-control" id="inp-ced-ins"
                                        placeholder="Cedula">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Dirección</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtdireccion" class="form-control" id="inp-dir-ins"
                                        placeholder="Dirección">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" name="txtemail" class="form-control" id="inp-ema-ins"
                                        placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Teléfono</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txttelefono" class="form-control" id="inp-tel-ins"
                                        placeholder="Teléfono" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Celular</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcelular" class="form-control" id="inp-cel-ins"
                                        placeholder="Celular" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="$('#form-ins')[0].reset();"><i
                            class="fa fa-times-circle-o"></i>
                        Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-guardar-ins"><i class="fa fa-save"></i>
                        Guardar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-mod">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Modificar Cliente</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-mod" action="{$_layoutParams.root}ventas/clientes/modificar_ajax">
                        <input type="hidden" name="id" value="0" id="inp-id-mod">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Nombres: </label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtnombre" class="form-control" id="inp-nom-mod"
                                        placeholder="Nombres" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Apellidos</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtapellido" class="form-control" id="inp-ape-mod"
                                        placeholder="Apellidos" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Cedula: </label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcedula" class="form-control" id="inp-ced-mod"
                                        placeholder="Cedula">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Dirección</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtdireccion" class="form-control" id="inp-dir-mod"
                                        placeholder="Dirección">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" name="txtemail" class="form-control" id="inp-ema-mod"
                                        placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Teléfono</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txttelefono" class="form-control" id="inp-tel-mod"
                                        placeholder="Teléfono" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Celular</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcelular" class="form-control" id="inp-cel-mod"
                                        placeholder="Celular" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="$('#form-mod')[0].reset();"><i
                            class="fa fa-times-circle-o"></i>
                        Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-guardar-mod"><i class="fa fa-save"></i>
                        Guardar</button>
                </div>
            </div>
        </div>
    </div>
</section>