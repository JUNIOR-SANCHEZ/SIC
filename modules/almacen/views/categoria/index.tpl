<section class="content-header">
    <h1>
        Categoria
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="{$_layoutParams.root}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">categoria</li>
    </ol>
</section>
<section class="content">
    <div class="row">
            <div class="col-sm-12">
            <a href="{$_layoutParams.root}almacen/categoria/exel" class="btn btn-info"> 
            <i class="fa fa-file-excel-o" aria-hidden="true"></i>
             Exel
            </a>
            <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-ins">
                <i class="fa fa-plus    "></i>
                Nueva Categoria
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
                                    <th>Descripcion</th>
                                    <th>Estado</th>
                                </tr>
                                {foreach item=x from=$consulta}
                                <tr>
                                 <td>{$x["id"]}</td>
                                    <td>{$x["description"]}</td>
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
                    <h4 class="modal-title">Nueva Categoria</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <input type="hidden" name="categoria_id" value="0" id="hiddent-cont-ins">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Descripcion</label>
                                <div class="col-sm-8">
                                    <input type="text" name="txtdescripcion" class="form-control" id="inp-cont-ins"
                                        placeholder="Ingrese Descripcion">
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
