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
            <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-ins">Nuevo
                Proveedor</button>
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
                        <table class="table">
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

    <div class="modal fade" id="modal-ins">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Proveedores</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Tipo de Contribuyente</label>

                                <div class="col-sm-10">
                                    <input type="text" name="txttipo_contr" class="form-control" id="txttipo_contr" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</section>
