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
                                    <td><a href="">{$x["ruc"]}</a></td>
                                    <td>{$x["business_name"]}</td>
                                    <td>{$x["representative"]}</td>
                                    <td>{$x["address"]}</td>
                                    <td>{$x["email"]}</td>
                                    <td>{$x["phone"]}</td>
                                    <td>{$x["mobile"]|default:"null"}</td>
                                    <td>{if $x["state"]== 0}Inactivo{else}Activo{/if}</td>
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
                    <form class="form-horizontal">
                        <input type="hidden" name="contribuyente_id" value="0" id="hiddent-cont-ins">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Tipo Contribuyente</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcontribuyente" class="form-control" id="inp-cont-ins"
                                        placeholder="Tipo contribuyente">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Ruc</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtruc" class="form-control" id="inp-ruc-ins" placeholder="Ruc">
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
                                        data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-4 control-label">Celular</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtcelular" class="form-control" id="inp-cel-ins"
                                        data-inputmask='"mask": "(999) 999-9999"' data-mask>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times-circle-o"></i>
                        Cerrar</button>
                    <button type="button" class="btn btn-primary"><i class="fa fa-save"></i> Guardar</button>
                </div>
            </div>
        </div>
    </div>
</section>