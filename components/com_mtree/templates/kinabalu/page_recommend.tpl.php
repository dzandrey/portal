<script language="javascript" type="text/javascript">
	function submitbutton(pressbutton) {
		var form = document.mtForm;
		if (pressbutton == 'cancel') {
			form.task.value='viewlink';
			form.submit();
			return;
		}

		// do field validation
		if (form.your_name.value == ""){
			alert( "<?php echo JText::_( 'COM_MTREE_PLEASE_FILL_IN_THE_FORM' ) ?>" );
		} else if (form.your_email.value == ""){
			alert( "<?php echo JText::_( 'COM_MTREE_PLEASE_FILL_IN_THE_FORM' ) ?>" );
		} else if (form.friend_name.value == ""){
			alert( "<?php echo JText::_( 'COM_MTREE_PLEASE_FILL_IN_THE_FORM' ) ?>" );
		} else if (form.friend_email.value == ""){
			alert( "<?php echo JText::_( 'COM_MTREE_PLEASE_FILL_IN_THE_FORM' ) ?>" );
		} else {
			form.task.value=pressbutton;
			try {
				form.onsubmit();
				}
			catch(e){}
			form.submit();
		}
	}
</script>
 
<h2 class="contentheading"><?php echo JText::_( 'COM_MTREE_RECOMMEND_LISTING_TO_FRIEND' ) . ' - ' . $this->link->link_name; ?></h2>

<div id="listing">

<form action="<?php echo JRoute::_("index.php") ?>" method="post" name="mtForm" id="mtForm">
<table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr>
		<td colspan="2">
			<b><?php echo JText::_( 'COM_MTREE_FROM' ) ?>:</b>
		</td>
	</tr>
	<tr>
		<td width="20%"><?php echo JText::_( 'COM_MTREE_YOUR_NAME' ) ?>:</td>
		<td width="80%"><input type="text" name="your_name" class="inputbox" size="40" value="<?php echo ($this->my->id) ? $this->my->name : ''; ?>" /></td>
	</tr>
	<tr>
		<td><?php echo JText::_( 'COM_MTREE_YOUR_EMAIL' ) ?>:</td>
		<td><input type="text" name="your_email" class="inputbox" size="40" value="<?php echo ($this->my->id) ? $this->my->email : ''; ?>" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<b><?php echo JText::_( 'COM_MTREE_TO' ) ?>:</b>
		</td>
	</tr>
	<tr>
		<td><?php echo JText::_( 'COM_MTREE_FRIENDS_NAME' ) ?>:</td>
		<td><input type="text" name="friend_name" class="inputbox" size="40" /></td>
	</tr>
	<tr>
		<td><?php echo JText::_( 'COM_MTREE_FRIENDS_EMAIL' ) ?>:</td>
		<td><input type="text" name="friend_email" class="inputbox" size="40" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="hidden" name="option" value="<?php echo $this->option ?>" />
			<input type="hidden" name="task" value="send_recommend" />
			<input type="hidden" name="link_id" value="<?php echo $this->link->link_id ?>" />
			<input type="hidden" name="Itemid" value="<?php echo $this->Itemid ?>" />
			<?php echo JHTML::_( 'form.token' ); ?>
			<input type="button" value="<?php echo JText::_( 'COM_MTREE_SEND' ) ?>" onclick="javascript:submitbutton('send_recommend')" class="button" /> <input type="button" value="<?php echo JText::_( 'COM_MTREE_CANCEL' ) ?>" onclick="javascript:submitbutton('cancel')" class="button" />
		</td>
	</tr>
</table>
</form>

</div>