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