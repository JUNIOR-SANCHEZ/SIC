<section class="content-header">
    <h1>
        Proveedores
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{$_layoutParams.root}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">proveedor</li>
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
                                    <th>Ruc</th>
                                    <th>Empresa</th>
                                    <th>Representante</th>
                                    <th>Dirección</th>
                                    <th>Correo</th>
                                    <th>Teléfono</th>
                                    <th>Celular</th>
                                    <th>Estado</th>
                                </tr>
                                {foreach item=x from=$consulta}
                                <tr>
                                    <td>{$x["id"]}</td>
                                    <td>
                                        <a data-prov="{$_layoutParams.root}compras/proveedores/consulta_id_ajax/{$x['id']}"
                                            class="btn-select btn btn-link" data-toggle="modal" data-target="#modal-mod">
                                            {$x["ruc"]}
                                        </a>
                                    </td>
                                    <td>{$x["business_name"]}</td>
                                    <td>{$x["representative"]}</td>
                                    <td>{$x["address"]}</td>
                                    <td>{$x["email"]}</td>
                                    <td>{$x["phone"]}</td>
                                    <td>{$x["mobile"]|default:"null"}</td>
                                    <td>
                                        <input type="checkbox" class="checked" style="display: none;" data-id="{$x['id']}"
                                            id="chec_{$x['id']}" {if $x['state']==1} checked {/if}/> {if $x["state"]==0}
                                            <label class="label label-danger" for="chec_{$x['id']}">Inactivo</label>
                                        {else}
                                        <label for="chec_{$x['id']}" class="label label-success">Activo</label>
                                        {/if}
                                    </td>

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
                    <h4 class="modal-title">Nuevo Proveedor</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-ins" action="{$_layoutParams.root}compras/proveedores/modificar_ajax">
                        <input type="hidden" name="contribuyente_id" value="0" id="hiddent-cont-ins">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Tipo Contribuyente</label>
                                <div class="col-sm-8">
                                    <select class="form-control custom-select" name="cb_contribuyente" id="">
                                        <option value="0">Selección:</option>
                                        {foreach item=x from=$tipo_cont}
                                        <option value="{$x['id']}">{$x["description"]}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Ruc</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtruc" class="form-control" id="inp-ruc-ins" placeholder="Ruc"
                                        required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Empresa</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtempresa" class="form-control" id="inp-emp-ins"
                                        placeholder="Empresa">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Representante</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtrepresentante" class="form-control" id="inp-rep-ins"
                                        placeholder="Representante">
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
                    <h4 class="modal-title">Modificar Proveedor</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="form-mod" action="{$_layoutParams.root}compras/proveedores/modificar_ajax">
                        <input type="hidden" name="id" value="0" id="inp-cont-mod">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Tipo Contribuyente</label>
                                <div class="col-sm-8">
                                    <select class="form-control custom-select" name="cb_contribuyente" id="sel-contribuyente-mod">
                                        <option value="0">Selección:</option>
                                        {foreach item=x from=$tipo_cont}
                                        <option value="{$x['id']}">{$x["description"]}</option>
                                        {/foreach}
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Ruc</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtruc" class="form-control" id="inp-ruc-mod" placeholder="Ruc"
                                        required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Empresa</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtempresa" class="form-control" id="inp-emp-mod"
                                        placeholder="Empresa">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Representante</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtrepresentante" class="form-control" id="inp-rep-mod"
                                        placeholder="Representante">
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
                    <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="$('#form-ins')[0].reset();"><i
                            class="fa fa-times-circle-o"></i>
                        Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-guardar-mod"><i class="fa fa-save"></i>
                        Guardar</button>
                </div>
            </div>
        </div>
    </div>
</section>