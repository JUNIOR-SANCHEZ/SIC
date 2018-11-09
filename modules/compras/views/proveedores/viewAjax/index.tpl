<table class="table ">
    <tr>
        <th style="width: 10px">#</th>
        <th>Ruc</th>
        <th>Empresa</th>
        <th>Estado</th>
        <th>Representante</th>
        <th>Dirección</th>
        <th>Correo</th>
        <th>Teléfono</th>
        <th>Celular</th>
    </tr>
    {if isset($consulta) && !empty($consulta)}
    {foreach item=x from=$consulta}
    <tr>
        <td>{$x["id"]}</td>
        <td>{$x["ruc"]}</td>
        <td>{$x["business_name"]}</td>
        <td>
            <input type="checkbox" class="checked" style="display: none;" data-id="{$x['id']}" id="chec_{$x['id']}" {if
                $x['state']==1} checked {/if}/> {if $x["state"]==0} <label class="label label-danger" for="chec_{$x['id']}">Inactivo</label>
            {else}
            <label for="chec_{$x['id']}" class="label label-success">Activo</label>
            {/if}
        </td>
        <td>{$x["representative"]}</td>
        <td>{$x["address"]}</td>
        <td>{$x["email"]}</td>
        <td>{$x["phone"]}</td>
        <td>{$x["mobile"]|default:"null"}</td>

        <td>
            <a data-prov="{$_layoutParams.root}compras/proveedores/consulta_id_ajax/{$x['id']}" class="btn-select btn btn-link"
                data-toggle="modal" data-target="#modal-mod">
                <i class="fa fa-edit"></i>
            </a>
        </td>

    </tr>
    {/foreach}
    {else}
    <tr>
        <th colspan="8">
            <h1 class="text-center">
                No hay datos que mostrar
            </h1>
        </th>
    </tr>
    {/if}
</table>