<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Atlas Peruano Complejidad Economica - Login</title>

    <script type="text/javascript"> var base_url = "<?= base_url();?>";</script>
    <script src="<?=base_url();?>assets/js/jquery-1.12.4.min.js"></script>
    <script src="<?=base_url();?>assets/js/jquery.toastr.min.js"></script>
    <script src="<?=base_url();?>assets/js/custom.js"></script>   

    <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/toastr.css">

</head>
<body>
    
    <form class="send_message_form message form" method="post" id="formInicioSesion" novalidate>
      <div class="form-group name">
        <label for="txtuser">Usuario :</label>
        <input id="txtuser" name="txtuser" type="text" placeholder="" class="form-control-line form-success-clean" required="" aria-required="true">
      </div>

      <div class="form-group name">
        <label for="txtpassword">Password :</label>
        <input id="txtpassword" name="txtpassword" type="password" placeholder="" class="form-control-line form-success-clean" required="" aria-required="true">
      </div>
      
      <div class="btns">
        <button id="submit-message" class="btn btn-normal btn-white btn-round btn-full email_b" name="submit_message">
          <span class="txt">Ingresar</span>
          <span class="arrow-icon"></span>
        </button>
      </div>
    </form>

</body>
</html>