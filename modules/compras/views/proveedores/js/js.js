//TODO: CRUD JQUERY AJAX 

$(document).ready(function () {
    var pagina = 1;

    $('[data-mask]').inputmask();
    $("#inp-ruc-ins").inputmask("999999999-001");
    $("#inp-ruc-mod").inputmask("999999999-001");
  
    function paginacion(dato) {
        $.post(_root_ + "compras/proveedores/consulta_ajax", dato,
            function (response) {
                $("#contenedor").html("");
                $("#contenedor").html(response);
            });
    }
    $(document).delegate(".pagina", "click", function () {
        var pag = "pagina=" + $(this).attr("pagina");
        pagina = pag;
        paginacion(pag);
    });
    
    $(document).delegate(".btn-select", "click", function (e) {
        e.preventDefault();
        var ruta = $(this).attr("data-prov");
        $.get(ruta, function (data) {
            $("#inp-cont-mod").val(data.id);
            $("#inp-ruc-mod").val(data.ruc);
            $("#inp-emp-mod").val(data.business_name);
            $("#inp-rep-mod").val(data.representative);
            $("#inp-dir-mod").val(data.address);
            $("#inp-ema-mod").val(data.email);
            $("#inp-tel-mod").val(data.phone);
            $("#inp-cel-mod").val(data.mobile);
            $(`#sel-contribuyente-mod option[value="${data.taxpayer_type}"]`).attr("selected",true);
        }, "json");
    });
    $(document).delegate(".checked", "click", function () {
        var id = $(this).attr("data-id");
        var checked = 0;
        var ruta = _root_ + "compras/proveedores/estado_ajax";
        var formData = new FormData();
        formData.append("id", id);
        if ($(this).is(":checked")) {
            checked = 1;
        }
        formData.append("check", checked);
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
    //FIXME: ELIMINAR FUNCION PARA AUTOCOMPLETAR
    $("#inp-cont-ins").autocomplete({
        source: function (request, response) {
            var ruta = _root_ + "compras/proveedores/autocomplete_ajax";
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
                    $("#hiddent-cont-ins").val(data.id);
                }, "json");
        }
    });

    $("#btn-guardar-ins").on("click", function (e) {
        e.preventDefault();
        var formData = new FormData(document.getElementById("form-ins"));
        var ruta = $("#form-ins").attr("action");
        $.ajax({
            url: ruta,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            dataType: "JSON",
            type: 'POST',
            success: function (data) {
                if (data.error) {
                    swal("Lo sentimo se a producido un error! ", data.error, "error");
                } else {
                    swal("En hora buena!", data, "success");
                    paginacion(pagina);
                    $("#form-ins")[0].reset();
                }
            }
        });
    });

    $("#btn-guardar-mod").on("click",function(e){
        e.preventDefault();
        var formData = new FormData(document.getElementById("form-mod"))
        var ruta = $("#form-mod").attr("action");
        $.ajax({
            url:ruta,
            data:formData,
            cache:false,
            contentType:false,
            processData:false,
            dataType: "JSON",
            type:"POST",
            success:function(data){
                if (data.error) {
                    swal("Lo sentimo se a producido un error! ", data.error, "error");
                } else {
                    $("#modal-mod").modal("hide");
                    swal("En hora buena!", data, "success");
                    paginacion(pagina);
                    $("#form-mod")[0].reset();
                }
            }
        });
    });
});