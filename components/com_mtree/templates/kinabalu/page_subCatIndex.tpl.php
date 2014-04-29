<?php
#
# Load category#-header-id# modules
#

$document	= &JFactory::getDocument();
$renderer	= $document->loadRenderer('module');

$contents	= '';

$modules = JModuleHelper::getModules('category-header-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category-header-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

$modules = JModuleHelper::getModules('category2-header-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category2-header-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

$modules = JModuleHelper::getModules('category3-header-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category3-header-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

if( !empty($contents) )
{
	echo '<div class="category-header-modules">' . $contents . '</div>';
}
?> 
<div id="category" class="mt-template-<?php echo $this->template; ?> cat-id-<?php echo $this->cat->cat_id ;?> tlcat-id-<?php echo $this->tlcat_id ;?>">
<div id="cat-header">
    <?php if( !$this->links ){  ?>
        <h2 class="contentheading"><?php echo htmlspecialchars($this->cat->cat_name) ?><?php echo ($this->mtconf['show_category_rss']) ? $this->plugin('showrssfeed','new') : ''; ?></h2>
    <?php } ?>
<?php
if (isset($this->cat_allow_submission) && $this->cat_allow_submission && $this->user_addlisting >= 0) {
    if ($this->my->id > 0) {
        echo $this->plugin("ahref", "index.php?option=com_mtree&task=addlisting&cat_id=$this->cat_id&Itemid=$this->Itemid", JText::_('COM_MTREE_ADD_YOUR_LISTING_HERE'), 'class="button btn-success add-listing"');
    } else {
        echo '<a href="#" class="button btn-success add-listing muljag">'.JText::_('COM_MTREE_ADD_YOUR_LISTING_HERE').'</a>';
    }
}
?>
 <script type="text/javascript">
     $('.muljag').on('click', function(e){
         e.preventDefault();
         $.colorbox({html:'<div>Для того что бы добавить материал Вам необходимо <a href="index.php?option=com_users&view=login">войти</a> на сатй</div>'});
     })
 </script>
</div>
<?php
if ( (isset($this->cat->cat_image) && $this->cat->cat_image <> '') || (isset($this->cat->cat_desc) && $this->cat->cat_desc <> '') ) {
	echo '<div id="cat-desc">';
        // Добавил isset($this->cat->enabled_cat_image)  
//        Закрыл вывод изображенияв подкатегориях
	if (isset($this->cat->enabled_cat_image) && isset($this->cat->cat_image) && $this->cat->cat_image <> '') {
		echo '<div id="cat-image">';
		$this->plugin( 'image', $this->config->getjconf('live_site').$this->config->get('relative_path_to_cat_small_image') . $this->cat->cat_image , $this->cat->cat_name, '', '', '' );
		echo '</div>';
	}
	if ( isset($this->cat->cat_desc) && $this->cat->cat_desc <> '') {	echo $this->cat->cat_desc; }
	echo '</div>';
}

include $this->loadTemplate( 'sub_subCats.tpl.php' );

 

if( $this->cat_show_listings ){ 
    include $this->loadTemplate( 'sub_listings.tpl.php' ); 
}

#
# Load category#-footer-id# modules
#

$document	= &JFactory::getDocument();
$renderer	= $document->loadRenderer('module');

$contents	= '';

$modules = JModuleHelper::getModules('category-footer-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category-footer-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

$modules = JModuleHelper::getModules('category2-footer-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category2-footer-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

$modules = JModuleHelper::getModules('category3-footer-id'.$this->cat_id);
if( !empty($modules) )
{
	$contents	.= '<div class="category3-footer-inner">';
	foreach ($modules as $mod)  {
		$params = new JRegistry( $mod->params );
		$contents .= '<div class="module'.$params->get('moduleclass_sfx').'">';
		if ($mod->showtitle) 
		{
			$contents .= '<h3>' . $mod->title . '</h3>';
			$contents .= '<div class="triangle"></div>';
		}
		$contents .= $renderer->render($mod);
		$contents .= '</div>';
	}
	$contents	.= '</div>';
}

if( !empty($contents) )
{
	echo '<div class="category-header-modules">' . $contents . '</div>';
}
?></div>