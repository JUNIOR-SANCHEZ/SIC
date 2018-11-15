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
                    {$con=1}
                    {foreach item=x from=$consulta}
                    <tr>
                        <td>{$con}</td>
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
                    {$con++}
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