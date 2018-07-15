

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
                            <option value='3'>Provincia_exportacion_anio_producto</option>
                            <option value='4'>Provincia_anio</option>
                            <option value='5'>Peru_exportacion_anio</option>
                            <option value='6'>Departamento_exportacion_anio</option>
                            <option value='7'>Producto_anio</option>
                            <option value='8'>Departamento_exportacion_producto_pais_anio</option>
                            <option value='9'>Departamento_exportacion_anio_producto</option>
                            <option value='10'>Departamento_anio</option>
                            <option value='11'>Pais_exportacion_anio_producto</option>
                            <option value='12'>Partner_exportacion_anio_producto<>

                          </select>
                        </div>" ;?>

      			<?php echo "<div class='row'> <input type='file' name='userfile' size='20' />"; ?>
      			<?php echo "<input type='submit' id='btn_carga' name='submit' value='Cargar' /> </div>";?>
      			<?php echo "</form>"?>
			
        </div>
      </div>
    </section>



