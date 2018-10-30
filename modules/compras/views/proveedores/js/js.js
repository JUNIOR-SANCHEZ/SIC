$(document).ready(function(){
    function paginacion(dato) {
        $.post(_root_ + "compras/proveedores/consulta_paginacion_ajax", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });
    
    $("#txttipo_contr").autocomplete({
        source: function(request,response){
            var ruta = _root_ + "compras/proveedores/tipo_contr_ajax";
            $.ajax({
                url:ruta,
                dataType:"json",
                data:{q:request.term},
                success:function(data){
                    response(data);
                }
            });
        },
        minLength:1,
        select:function(event,ui){
            alert("selecciono: "+ui.item.label);
        }
    });
    
});
