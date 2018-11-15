$(document).ready(function () {
    var pagina = 1;
    function paginacion(pag) {
        $.post(_root_ + 'ventas/clientes/consulta_ajax', pag, function (data) {
            $("#contenedor").html('');
            $('#contenedor').html(data);
        });
    }
    $(document).delegate('.pagina', 'click', function () {
        var pag = 'pagina=' + $(this).attr('pagina');
        pagina = pag;
        paginacion(pag);
    });
    $(document).delegate('.btn-select', 'click', function (e) {
        e.preventDefault();
        var ruta = $(this).attr('data-ruta');
        $.get(ruta, function (data) {
            $('#inp-nom-mod').val(data.name);
            $('#inp-ape-mod').val(data.lastname);
            $('#inp-ced-mod').val(data.card);
            $('#inp-dir-mod').val(data.address);
            $('#inp-ema-mod').val(data.email);
            $('#inp-cel-mod').val(data.mobile);
            $('#inp-tel-mod').val(data.phone);
            $('#inp-id-mod').val(data.id);
        }, 'json');
    });
    $('#btn-guardar-ins').on('click', function (e) {
        e.preventDefault();
        var formData = new FormData(document.getElementById('form-ins'));
        var ruta = $('#form-ins').attr('action');
        
        $.ajax({
            url: ruta,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            dataType: 'JSON',
            type: 'POST',
            success: function (data) {
                console.log(data);
                if (data.error) {
                    console.log(data.sql);
                    swal('Lo sentimos de a producido un error!', data.error, 'error');
                } else {
                    $("#modal-ins").modal('hide');
                    swal('En hora buena!', data, 'success');
                    paginacion(pagina);
                    $('#form-ins')[0].reset();
                }
            }
        });
    });
    $('#btn-guardar-mod').on('click', function (e) {
        e.preventDefault();
        var formData = new FormData(document.getElementById('form-mod'));
        var ruta = $('#form-mod').attr('action');
        $.ajax({
            url: ruta,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            dataType: 'JSON',
            type: 'POST',
            success: function (data) {
                if (data.error) {
                    console.log(data.sql);
                    swal('Lo sentimos de a producido un error!', "nose pudo ingresar", 'error');
                } else {
                    $("#modal-mod").modal('hide');
                    swal('En hora buena!',data, 'success');
                    paginacion(pagina);
                    $('#form-mod')[0].reset();

                }
            }
        });
    });

});