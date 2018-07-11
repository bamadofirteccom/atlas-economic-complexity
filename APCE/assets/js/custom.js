$(document).on('ready', function () {


$("#formInicioSesion").submit(function(e){
    e.preventDefault();
});

$('body').on("change","#selPlantilla",function(){
    val = $(this).val();

    if(val != 0){
        $('.msg-error').css('display','none');
    }else{
        $('.msg-error').html('Debe seleccionar una plantilla');
        $('.msg-error').css('display','block');
    }
});

$('body').on("click","#submit-login",function(){


    $.post(
            base_url+'usuario/iniciarSesion',
            $("#formInicioSesion").serialize(),
            function (data){

                if(data.status=='success'){
                    toastr.success(data.msj, 'Exito!');

                    setTimeout(function(){ 
                        window.location.href = base_url+"datos";

                    }, 1000);

                }else{
                    toastr.warning(data.msj, 'Error!');
                }
            },
        'json'
        ).error(function(){
            toastr.warning('ocurrio un error', 'Error');
        });

});


});