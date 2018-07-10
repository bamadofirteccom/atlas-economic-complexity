

    <!--SECTION-->
    <section class="l-main-container">
      <!--Main Content-->
      <div class="login-wrapper">
        <div class="carga-container">
          <!--Logo-->
          <h1 class="login-logo">Cargar Archivos</h1>
          <!--Login Form-->
    
            <?php echo $error;?> 
      			<?php echo form_open_multipart('datos/do_upload');?>
      			<?php echo "<input type='file' name='userfile' size='20' />"; ?>
      			<?php echo "<input type='submit' id='btn_carga' name='submit' value='Cargar' /> ";?>
      			<?php echo "</form>"?>
			
        </div>
      </div>
    </section>



