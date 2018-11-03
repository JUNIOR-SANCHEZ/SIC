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