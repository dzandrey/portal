<?php
/**
 * @version	$Id: mod_mt_search.php 1836 2013-03-19 10:49:35Z cy $
 * @package	Mosets Tree
 * @copyright	(C) 2005-2013 Mosets Consulting. All rights reserved.
 * @license	GNU General Public License
 * @author	Lee Cher Yeong <mtree@mosets.com>
 * @url		http://www.mosets.com/tree/
 */

defined('_JEXEC') or die('Restricted access');

require( JPATH_ROOT . DS.'components'.DS.'com_mtree'.DS.'init.module.php');
require_once( dirname(__FILE__).DS.'helper.php' );

if( !$moduleHelper->isModuleShown() ) { return; }

$moduleclass_sfx= $params->get( 'moduleclass_sfx' );
$width 		= intval( $params->get( 'width', 16 ) );
$placeholder_text	= $params->get( 'placeholder_text', JText::_('MOD_MT_SEARCH_SEARCH_ELLIPSIS') );
$advsearch 	= intval( $params->get( 'advsearch', 1 ) );
$search_button	= intval( $params->get( 'search_button', 1 ) );
$dropdownWidth	= intval( $params->get( 'dropdownWidth', 0 ) );
$parent_cat_id	= intval( $params->get( 'parent_cat', 0 ) );
$searchCategory	= intval( $params->get( 'searchCategory', 0 ) );

$itemid		= MTModuleHelper::getItemid();
$categories	= modMTSearchHelper::getCategories( $params );

$searchword	= urldecode(JRequest::getString('searchword'));
$cat_id		= JRequest::getInt('cat_id');

$selected_cat_id = $parent_cat_id;
if( $cat_id > 0 ) {
	$selected_cat_id = $cat_id;
}

$lists = array();
if( $categories ) {
	$all_category = new stdClass();
	$all_category->cat_id = $parent_cat_id;
	$all_category->cat_name = JText::_( 'MOD_MT_SEARCH_ALL_CATEGORIES' );
	array_unshift( $categories, $all_category);
	$lists['categories'] = JHTML::_('select.genericlist', $categories, 'cat_id', 'class="inputbox"' . (($dropdownWidth>0) ? ' style="width:'.$dropdownWidth.'px;"' : ''), 'cat_id', 'cat_name', $selected_cat_id );
} else {
	$lists['categories'] = null;
}

if( $advsearch ) {
	$advsearch_link = JRoute::_( 'index.php?option=com_mtree&task=advsearch' . $itemid );
}

require(JModuleHelper::getLayoutPath('mod_mt_search'));
?>