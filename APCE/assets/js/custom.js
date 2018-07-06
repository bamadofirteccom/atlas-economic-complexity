$(document).on('ready', function () {


$("#formInicioSesion").submit(function(e){
    e.preventDefault();
});


$('body').on("click","#submit-message",function(){


    $.post(
            base_url+'usuario/iniciarSesion',
            $("#formInicioSesion").serialize(),
            function (data){

                if(data.status=='success'){
                    toastr.success(data.msj, 'Exito!');
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