<?php

if( $this->task == "search" && empty($this->links) ) {

	if( empty($this->categories) ) {
	?>
	<p /><center><?php echo JText::_( 'COM_MTREE_YOUR_SEARCH_DOES_NOT_RETURN_ANY_RESULT' ) ?></center><p />
	<?php
	}
	
} else {
	?>
<?php 
 if( $this->links ){ 
        echo '<div class="listings-title"> <h2>';
        echo htmlspecialchars($this->cat->cat_name);
        echo '</h2></div>';
 }
?>
<div id="listings">
	<?php
        
        
        
	$i = 0;

	foreach ($this->links AS $link) {
		$i++;
		$link_fields = $this->links_fields[$link->link_id];
		include $this->loadTemplate('sub_listingSummary.tpl.php');
	}

	if( $this->pageNav->total > 0 ) {
		 ?>
	<div class="pages-links">
		<?php
		if( 
			((isset($this->cat_id) && $this->cat_id == 0) || (isset($this->cat_usemainindex) && $this->cat_usemainindex == 1)) 
			&&
			$this->mtconf['type_of_listings_in_index'] != 'listcurrent'
			&&
			isset($this->listListing)
		)
		{
			?><a href="<?php echo JRoute::_('index.php?option=com_mtree&task='.$this->mtconf['type_of_listings_in_index'].'&cat_id='.$this->cat_id); ?>"><?php echo $this->listListing->getViewMoreText(); ?></a><?php
		}
		else
		{
			?>
			<span class="xlistings"><?php echo $this->pageNav->getResultsCounter(); ?></span>
			<?php echo $this->pageNav->getPagesLinks();
		}
		?>
	</div>
	<?php
	}
}
?></div>