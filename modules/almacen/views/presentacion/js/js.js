$(document).ready(function () {
    var pagina=1;
    $('[data-mask]').inputmask();

    function paginacion(dato) {
        $.post(_root_ + "almacen/presentacion/consulta_ajax", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        paginacion(pag);
    });
    $(document).delegate(".btn-select", "click", function (e) {
        e.preventDefault();
        var ruta = $(this).attr("href");
        $.get(ruta,function(data){
            console.log(data);
            
        },"json")
    });

    $("#inp-des_p-ins").autocomplete({
        source: function (request, response) {
            var ruta = _root_ + "almacen/presentacion/consulta_ajax";
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
            $.post(_root_ + "compras/proveedores/consulta_fila_ajax", {
                    dato: ui.item.label
                },
                function (data) {
                    $("hiddent-des_p-ins").val(data.id);
                },"json");
        }
    });
    $("#btn-guardar-ins").on("click", function (e) {
        e.preventDefault();
        var formData = new FormData(document.getElementById("form-ins"));
        var ruta = $("#form-ins").attr("method");
        $.ajax({
            url: ruta,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            type: 'POST',
            success: function (data) {
                swal("En hora buena!", data, "success");
                paginacion(pagina);
                $("#form-ins")[0].reset();
            }
        })
    });
});