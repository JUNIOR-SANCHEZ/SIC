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