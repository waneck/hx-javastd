package sun.swing;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class MenuItemLayoutHelper
{
	/* Client Property keys for calculation of maximal widths */
	public static var MAX_ARROW_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var MAX_CHECK_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var MAX_ICON_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var MAX_TEXT_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var MAX_ACC_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	public static var MAX_LABEL_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	/**
	* The empty protected constructor is necessary for derived classes.
	*/
	@:overload private function new() : Void;
	
	@:overload public function new(mi : javax.swing.JMenuItem, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, viewRect : java.awt.Rectangle, gap : Int, accDelimiter : String, isLeftToRight : Bool, font : java.awt.Font, accFont : java.awt.Font, useCheckAndArrow : Bool, propertyPrefix : String) : Void;
	
	@:overload private function reset(mi : javax.swing.JMenuItem, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, viewRect : java.awt.Rectangle, gap : Int, accDelimiter : String, isLeftToRight : Bool, font : java.awt.Font, accFont : java.awt.Font, useCheckAndArrow : Bool, propertyPrefix : String) : Void;
	
	@:overload private function calcWidthsAndHeights() : Void;
	
	@:overload private function calcMaxWidths() : Void;
	
	@:overload private function calcMaxWidth(rs : MenuItemLayoutHelper_RectSize, key : Dynamic) : Void;
	
	/**
	* Calculates and returns maximal value through specified parent component
	* client property.
	*
	* @param propertyName name of the property, which stores the maximal value.
	* @param value a value which pretends to be maximal
	* @return maximal value among the parent property and the value.
	*/
	@:overload private function calcMaxValue(propertyName : Dynamic, value : Int) : Int;
	
	/**
	* Returns parent client property as int.
	* @param propertyName name of the parent property.
	* @return value of the property as int.
	*/
	@:overload private function getParentIntProperty(propertyName : Dynamic) : Int;
	
	@:native('isColumnLayout') @:overload public static function _isColumnLayout(isLeftToRight : Bool, mi : javax.swing.JMenuItem) : Bool;
	
	/**
	* Answers should we do column layout for a menu item or not.
	* We do it when a user doesn't set any alignments
	* and text positions manually, except the vertical alignment.
	*/
	@:native('isColumnLayout') @:overload public static function _isColumnLayout(isLeftToRight : Bool, horizontalAlignment : Int, horizontalTextPosition : Int, verticalTextPosition : Int) : Bool;
	
	/**
	* Layout icon, text, check icon, accelerator text and arrow icon
	* in the viewRect and return their positions.
	*
	* If horizontalAlignment, verticalTextPosition and horizontalTextPosition
	* are default (user doesn't set any manually) the layouting algorithm is:
	* Elements are layouted in the five columns:
	* check icon + icon + text + accelerator text + arrow icon
	*
	* In the other case elements are layouted in the four columns:
	* check icon + label + accelerator text + arrow icon
	* Label is union of icon and text.
	*
	* The order of columns can be reversed.
	* It depends on the menu item orientation.
	*/
	@:overload public function layoutMenuItem() : MenuItemLayoutHelper_LayoutResult;
	
	@:overload public function getLTRColumnAlignment() : MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload public function getRTLColumnAlignment() : MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload private function prepareForLayout(lr : MenuItemLayoutHelper_LayoutResult) : Void;
	
	@:overload private function layoutIconAndTextInLabelRect(lr : MenuItemLayoutHelper_LayoutResult) : Void;
	
	/**
	* Returns parent of this component if it is not a top-level menu
	* Otherwise returns null.
	* @param menuItem the menu item whose parent will be returned.
	* @return parent of this component if it is not a top-level menu
	* Otherwise returns null.
	*/
	@:native('getMenuItemParent') @:overload public static function _getMenuItemParent(menuItem : javax.swing.JMenuItem) : javax.swing.JComponent;
	
	@:overload public static function clearUsedParentClientProperties(menuItem : javax.swing.JMenuItem) : Void;
	
	@:overload public static function clearUsedClientProperties(c : javax.swing.JComponent) : Void;
	
	/**
	* Finds and returns maximal integer value in the given array.
	* @param values array where the search will be performed.
	* @return maximal vaule.
	*/
	@:overload public static function max(values : java.NativeArray<Int>) : Int;
	
	@:overload public static function createMaxRect() : java.awt.Rectangle;
	
	@:overload public static function addMaxWidth(size : MenuItemLayoutHelper_RectSize, gap : Int, result : java.awt.Dimension) : Void;
	
	@:overload public static function addWidth(width : Int, gap : Int, result : java.awt.Dimension) : Void;
	
	@:overload public function getMenuItem() : javax.swing.JMenuItem;
	
	@:overload public function getMenuItemParent() : javax.swing.JComponent;
	
	@:overload public function getFont() : java.awt.Font;
	
	@:overload public function getAccFont() : java.awt.Font;
	
	@:overload public function getFontMetrics() : java.awt.FontMetrics;
	
	@:overload public function getAccFontMetrics() : java.awt.FontMetrics;
	
	@:overload public function getIcon() : javax.swing.Icon;
	
	@:overload public function getCheckIcon() : javax.swing.Icon;
	
	@:overload public function getArrowIcon() : javax.swing.Icon;
	
	@:overload public function getText() : String;
	
	@:overload public function getAccText() : String;
	
	@:overload public function isColumnLayout() : Bool;
	
	@:overload public function useCheckAndArrow() : Bool;
	
	@:overload public function isLeftToRight() : Bool;
	
	@:overload public function isTopLevelMenu() : Bool;
	
	@:overload public function getHtmlView() : javax.swing.text.View;
	
	@:overload public function getVerticalAlignment() : Int;
	
	@:overload public function getHorizontalAlignment() : Int;
	
	@:overload public function getVerticalTextPosition() : Int;
	
	@:overload public function getHorizontalTextPosition() : Int;
	
	@:overload public function getGap() : Int;
	
	@:overload public function getLeadingGap() : Int;
	
	@:overload public function getAfterCheckIconGap() : Int;
	
	@:overload public function getMinTextOffset() : Int;
	
	@:overload public function getViewRect() : java.awt.Rectangle;
	
	@:overload public function getIconSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload public function getTextSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload public function getAccSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload public function getCheckSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload public function getArrowSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload public function getLabelSize() : MenuItemLayoutHelper_RectSize;
	
	@:overload private function setMenuItem(mi : javax.swing.JMenuItem) : Void;
	
	@:overload private function setMenuItemParent(miParent : javax.swing.JComponent) : Void;
	
	@:overload private function setFont(font : java.awt.Font) : Void;
	
	@:overload private function setAccFont(accFont : java.awt.Font) : Void;
	
	@:overload private function setFontMetrics(fm : java.awt.FontMetrics) : Void;
	
	@:overload private function setAccFontMetrics(accFm : java.awt.FontMetrics) : Void;
	
	@:overload private function setIcon(icon : javax.swing.Icon) : Void;
	
	@:overload private function setCheckIcon(checkIcon : javax.swing.Icon) : Void;
	
	@:overload private function setArrowIcon(arrowIcon : javax.swing.Icon) : Void;
	
	@:overload private function setText(text : String) : Void;
	
	@:overload private function setAccText(accText : String) : Void;
	
	@:overload private function setColumnLayout(columnLayout : Bool) : Void;
	
	@:overload private function setUseCheckAndArrow(useCheckAndArrow : Bool) : Void;
	
	@:overload private function setLeftToRight(leftToRight : Bool) : Void;
	
	@:overload private function setTopLevelMenu(topLevelMenu : Bool) : Void;
	
	@:overload private function setHtmlView(htmlView : javax.swing.text.View) : Void;
	
	@:overload private function setVerticalAlignment(verticalAlignment : Int) : Void;
	
	@:overload private function setHorizontalAlignment(horizontalAlignment : Int) : Void;
	
	@:overload private function setVerticalTextPosition(verticalTextPosition : Int) : Void;
	
	@:overload private function setHorizontalTextPosition(horizontalTextPosition : Int) : Void;
	
	@:overload private function setGap(gap : Int) : Void;
	
	@:overload private function setLeadingGap(leadingGap : Int) : Void;
	
	@:overload private function setAfterCheckIconGap(afterCheckIconGap : Int) : Void;
	
	@:overload private function setMinTextOffset(minTextOffset : Int) : Void;
	
	@:overload private function setViewRect(viewRect : java.awt.Rectangle) : Void;
	
	@:overload private function setIconSize(iconSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload private function setTextSize(textSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload private function setAccSize(accSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload private function setCheckSize(checkSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload private function setArrowSize(arrowSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload private function setLabelSize(labelSize : MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload public function getLeftTextExtraWidth() : Int;
	
	/**
	* Returns false if the component is a JMenu and it is a top
	* level menu (on the menubar).
	*/
	@:native('useCheckAndArrow') @:overload public static function _useCheckAndArrow(menuItem : javax.swing.JMenuItem) : Bool;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$LayoutResult') extern class MenuItemLayoutHelper_LayoutResult
{
	@:overload public function new() : Void;
	
	@:overload public function new(iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, accRect : java.awt.Rectangle, checkRect : java.awt.Rectangle, arrowRect : java.awt.Rectangle, labelRect : java.awt.Rectangle) : Void;
	
	@:overload public function getIconRect() : java.awt.Rectangle;
	
	@:overload public function setIconRect(iconRect : java.awt.Rectangle) : Void;
	
	@:overload public function getTextRect() : java.awt.Rectangle;
	
	@:overload public function setTextRect(textRect : java.awt.Rectangle) : Void;
	
	@:overload public function getAccRect() : java.awt.Rectangle;
	
	@:overload public function setAccRect(accRect : java.awt.Rectangle) : Void;
	
	@:overload public function getCheckRect() : java.awt.Rectangle;
	
	@:overload public function setCheckRect(checkRect : java.awt.Rectangle) : Void;
	
	@:overload public function getArrowRect() : java.awt.Rectangle;
	
	@:overload public function setArrowRect(arrowRect : java.awt.Rectangle) : Void;
	
	@:overload public function getLabelRect() : java.awt.Rectangle;
	
	@:overload public function setLabelRect(labelRect : java.awt.Rectangle) : Void;
	
	@:overload public function getAllRects() : java.util.Map<String, java.awt.Rectangle>;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$ColumnAlignment') extern class MenuItemLayoutHelper_ColumnAlignment
{
	public static var LEFT_ALIGNMENT(default, null) : MenuItemLayoutHelper_ColumnAlignment;
	
	public static var RIGHT_ALIGNMENT(default, null) : MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload public function new(checkAlignment : Int, iconAlignment : Int, textAlignment : Int, accAlignment : Int, arrowAlignment : Int) : Void;
	
	@:overload public function getCheckAlignment() : Int;
	
	@:overload public function getIconAlignment() : Int;
	
	@:overload public function getTextAlignment() : Int;
	
	@:overload public function getAccAlignment() : Int;
	
	@:overload public function getArrowAlignment() : Int;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$RectSize') extern class MenuItemLayoutHelper_RectSize
{
	@:overload public function new() : Void;
	
	@:overload public function new(width : Int, height : Int, origWidth : Int, maxWidth : Int) : Void;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getHeight() : Int;
	
	@:overload public function getOrigWidth() : Int;
	
	@:overload public function getMaxWidth() : Int;
	
	@:overload public function setWidth(width : Int) : Void;
	
	@:overload public function setHeight(height : Int) : Void;
	
	@:overload public function setOrigWidth(origWidth : Int) : Void;
	
	@:overload public function setMaxWidth(maxWidth : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}
