<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Atlas Peruano Complejidad Economica - Login</title>

    <script type="text/javascript"> var base_url = "<?= base_url();?>";</script>
    <script src="<?=base_url();?>assets/js/jquery-1.12.4.min.js"></script>
    <script src="<?=base_url();?>assets/js/jquery.toastr.min.js"></script>
    <script src="<?=base_url();?>assets/js/modernizr.min.js"></script>
    <script src="<?=base_url();?>assets/js/bootstrap.min.js"></script>
    <script src="<?=base_url();?>assets/js/custom.js"></script>

    

    <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/toastr.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/theme.css">
    <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/general.css">

</head>
<body class="login-bg  pace-done"><div class="pace-effect-1 pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

    <header class="header--pageheader header--pageheader--home">
      <div class="pageheader__bground"></div>
      <div class="pageheader__home__cap"></div>
      <div class="pageheader__wrap">

        <div class="branding"></div>
        <nav class="pageheader__nav"></nav>
        <div class="pageheader__menu">
          <?php if($this->session->userdata('sesion_usuario')!=null){ ?>

            <ul>
              <li>
                <a class="ember-view pageheader__menu__item" href="<?=base_url();?>usuario/salir" data-side-search-link="about">Cerrar Sesión</a>
              </li>
          </ul>

          <?php } ?> 

      
        </div>

        <div class="pageheader__homeintro">
          <header class="index__header__wrap">
            <div class="stream__header index__header">
              <h1 class="stream__head index__head">El Atlas Peruano de Complejidad Económica</h1>
              <h2 class="stream__subhead">Visualice las posibilidades de cualquier producto de exportación o lugar en Perú.</h2>
            </div>
          </header>
        </div>

      </div>
</header>