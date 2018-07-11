

    <!--SECTION-->
    <section class="l-main-container">
      <!--Main Content-->
      <div class="login-wrapper">
        <div class="carga-container">
          <!--Logo-->
          <h1 class="login-logo">Cargar Archivos</h1>
          <!--Login Form-->

            <!--<div class="msg-error" style="display:<?php echo ($msg!='' && $msg!=null)? 'block':'none'; ?>"><?= $msg;?></div>-->
            <div class="msg-error" >Debe seleccionar una plantilla</div>
            <?php echo $error;?> 
      			<?php echo form_open_multipart('datos/do_upload', array('id' => 'formCargaArchivo','name'=>'formCargaArchivo' ));?>

            <?php echo "<div class='row'><label>Seleccione Plantilla : </label>
                          <select id='selPlantilla' name='selPlantilla'>
                            <option value='0'>-- Seleccione --</option>
                            <option value='1'>Provincia_exportacion_producto_pais_anio</option>
                            <option value='2'>Provincia_exportacion_anio</option>
                          </select>
                        </div>" ;?>

      			<?php echo "<div class='row'> <input type='file' name='userfile' size='20' />"; ?>
      			<?php echo "<input type='submit' id='btn_carga' name='submit' value='Cargar' /> </div>";?>
      			<?php echo "</form>"?>
			
        </div>
      </div>
    </section>



