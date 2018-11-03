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
                        <td>
                            <input type="checkbox" class="checked" style="display: none;" data-id="{$x['id']}" id="chec_{$x['id']}"
                                {if $x['state']==1} checked {/if}/> {if $x["state"]==0} <label class="label label-danger"
                                for="chec_{$x['id']}">Inactivo</label>
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