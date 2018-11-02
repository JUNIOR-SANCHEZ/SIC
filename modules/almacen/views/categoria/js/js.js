$(document).ready(function () {
    $('[data-mask]').inputmask();

    function paginacion(dato) {
        $.post(_root_ + "almacen/categoria/consulta_ajax", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });

    $("#inp-cont-ins").autocomplete({
        source: function (request, response) {
            var ruta = _root_ + "almacen/categoria/autocomplete_ajax";
            $.ajax({
                url: ruta,
                dataType: "json",
                data: {
                    q: request.term
                },
                success: function (data) {
                    response(data);
                }
            });
        },
        minLength: 1,
        select: function (event, ui) {
            $.post(_root_ + "almacen/categoria/consulta_fila_ajax", {
                    dato: ui.item.label
                },
                function (data) {
                    $("#hiddent-cont-ins").val(data.id);
                },"json");
        }
    });

});