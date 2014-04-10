<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
//JHtml::_('behavior.framework', true);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<script src="<?php echo $this->baseurl ?>/templates/mytemplate/js/vendor/jquery-1.10.2.min.js"></script>
<script src="<?php echo $this->baseurl ?>/templates/mytemplate/js/main.js"></script>

<jdoc:include type="head" />

<!--[if lt IE 9]>
   <script>
      document.createElement('header');
      document.createElement('nav');
      document.createElement('section');
      document.createElement('article');
      document.createElement('aside');
      document.createElement('footer');
   </script>
<![endif]-->


<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/normalize.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/main.css" type="text/css" />

<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/mytemplate/js/jquery.colorbox.js"></script>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/mytemplate/css/colorbox/colorbox.css" type="text/css" />

</head>
<body>
    <div class="wrap middle-wrapper">
        <header class="clearfix">
            <jdoc:include type="modules" name="header"  />
            <a href="/" class="logo"><span>ПОРТАЛ</span> г. КРАСНОГРАД</a>
        </header>
        <section class="middle">
            <jdoc:include type="modules" name="mainmanu" style="xhtml" />
            <?php if($this->countModules('left')) : ?>
               <aside class="modules_l">
                    <jdoc:include type="modules" name="left" style="xhtml" />
               </aside>
            <?php endif; ?>
           <section class="main clearfix">
                <div class="content">
                    <?php if ($this->getBuffer('message')) : ?>
                       <div class="message"><jdoc:include type="message" /></div>
               <?php endif; ?>
                    <jdoc:include type="modules" name="breadcumbs"  />
                    <jdoc:include type="component" />
                </div>
           </section>
        </section>
    </div>
    <footer>
        <div class="wrap">
            <jdoc:include type="modules" name="footer"  />
        </div>  
    </footer>
</body>
</html>