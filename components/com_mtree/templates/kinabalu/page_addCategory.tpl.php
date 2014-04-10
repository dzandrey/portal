<script language="javascript" type="text/javascript">
	function submitbutton(pressbutton) {
		var form = document.mtForm;
		if (pressbutton == 'cancel') {
			submitform( 'listcats' );
			return;
		}

		// do field validation
		if (form.cat_name.value == ""){
			alert( "<?php echo JText::_( 'COM_MTREE_PLEASE_FILL_IN_CATEGORY_NAME' ) ?>" );
		} else {
			form.task.value=pressbutton;
			form.submit();
		}
	}
</script>

 
<h2 class="contentheading"><?php echo JText::_( 'COM_MTREE_ADD_CATEGORY' ) ?></h2>

<center>
<form action="<?php echo JRoute::_("index.php") ?>" method="post" name="mtForm" id="mtForm">
<table width="100%" cellpadding="4" cellspacing="0" border="0" align="center">

	<tr>
		<td align="right"><?php echo JText::_( 'COM_MTREE_PARENT_CATEGORY' ) ?>:</td>
		<td align="left"><b><?php echo $this->pathway->printPathWayFromLink( 0, "index.php?option=com_mtree&task=listcats&Itemid=$this->Itemid" ) ?></b></td>
	</tr>
	<tr>
		<td width="20%" align="right">
			<?php echo JText::_( 'COM_MTREE_NAME' ) ?>:</td>
		<td width="80%" align="left">
			<input class="inputbox" type="text" name="cat_name" size="50" maxlength="250" />
		</td>
	</tr>
	<tr>
		<td valign="top" align="right"><?php echo JText::_( 'COM_MTREE_DESCRIPTION' ) ?>:</td>
		<td align="left"><textarea name="cat_desc" rows="8" cols="40" class="inputbox"></textarea></td>
	</tr>

	<tr>
		<td colspan="2" align="left">
			<input type="hidden" name="option" value="<?php echo $this->option ?>" />
			<input type="hidden" name="task" value="addcategory2" />
			<input type="hidden" name="Itemid" value="<?php echo $this->Itemid ?>" />
			<input type="hidden" name="cat_parent" value="<?php echo $this->cat_parent ?>" />
			<?php echo JHTML::_( 'form.token' ); ?>
			<input type="button" value="<?php echo JText::_( 'COM_MTREE_ADD_CATEGORY' )?>" onclick="javascript:submitbutton('addcategory2')" class="button" /> <input type="button" value="<?php echo JText::_( 'COM_MTREE_CANCEL' ) ?>" onclick="javascript:submitbutton('cancel')" class="button" />
		</td>
	</tr>
</table>	
</form>
</center>