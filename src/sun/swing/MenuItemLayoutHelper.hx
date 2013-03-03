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
	@:public @:static @:final public static var MAX_ARROW_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	@:public @:static @:final public static var MAX_CHECK_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	@:public @:static @:final public static var MAX_ICON_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	@:public @:static @:final public static var MAX_TEXT_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	@:public @:static @:final public static var MAX_ACC_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	@:public @:static @:final public static var MAX_LABEL_WIDTH(default, null) : sun.swing.StringUIClientPropertyKey;
	
	/**
	* The empty protected constructor is necessary for derived classes.
	*/
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function new(mi : javax.swing.JMenuItem, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, viewRect : java.awt.Rectangle, gap : Int, accDelimiter : String, isLeftToRight : Bool, font : java.awt.Font, accFont : java.awt.Font, useCheckAndArrow : Bool, propertyPrefix : String) : Void;
	
	@:overload @:protected private function reset(mi : javax.swing.JMenuItem, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, viewRect : java.awt.Rectangle, gap : Int, accDelimiter : String, isLeftToRight : Bool, font : java.awt.Font, accFont : java.awt.Font, useCheckAndArrow : Bool, propertyPrefix : String) : Void;
	
	@:overload @:protected private function calcWidthsAndHeights() : Void;
	
	@:overload @:protected private function calcMaxWidths() : Void;
	
	@:overload @:protected private function calcMaxWidth(rs : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize, key : Dynamic) : Void;
	
	/**
	* Calculates and returns maximal value through specified parent component
	* client property.
	*
	* @param propertyName name of the property, which stores the maximal value.
	* @param value a value which pretends to be maximal
	* @return maximal value among the parent property and the value.
	*/
	@:overload @:protected private function calcMaxValue(propertyName : Dynamic, value : Int) : Int;
	
	/**
	* Returns parent client property as int.
	* @param propertyName name of the parent property.
	* @return value of the property as int.
	*/
	@:overload @:protected private function getParentIntProperty(propertyName : Dynamic) : Int;
	
	@:native('isColumnLayout') @:overload @:public @:static public static function _isColumnLayout(isLeftToRight : Bool, mi : javax.swing.JMenuItem) : Bool;
	
	/**
	* Answers should we do column layout for a menu item or not.
	* We do it when a user doesn't set any alignments
	* and text positions manually, except the vertical alignment.
	*/
	@:native('isColumnLayout') @:overload @:public @:static public static function _isColumnLayout(isLeftToRight : Bool, horizontalAlignment : Int, horizontalTextPosition : Int, verticalTextPosition : Int) : Bool;
	
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
	@:overload @:public public function layoutMenuItem() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_LayoutResult;
	
	@:overload @:public public function getLTRColumnAlignment() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload @:public public function getRTLColumnAlignment() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload @:protected private function prepareForLayout(lr : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_LayoutResult) : Void;
	
	@:overload @:protected private function layoutIconAndTextInLabelRect(lr : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_LayoutResult) : Void;
	
	/**
	* Returns parent of this component if it is not a top-level menu
	* Otherwise returns null.
	* @param menuItem the menu item whose parent will be returned.
	* @return parent of this component if it is not a top-level menu
	* Otherwise returns null.
	*/
	@:native('getMenuItemParent') @:overload @:public @:static public static function _getMenuItemParent(menuItem : javax.swing.JMenuItem) : javax.swing.JComponent;
	
	@:overload @:public @:static public static function clearUsedParentClientProperties(menuItem : javax.swing.JMenuItem) : Void;
	
	@:overload @:public @:static public static function clearUsedClientProperties(c : javax.swing.JComponent) : Void;
	
	/**
	* Finds and returns maximal integer value in the given array.
	* @param values array where the search will be performed.
	* @return maximal vaule.
	*/
	@:overload @:public @:static public static function max(values : java.NativeArray<Int>) : Int;
	
	@:overload @:public @:static public static function createMaxRect() : java.awt.Rectangle;
	
	@:overload @:public @:static public static function addMaxWidth(size : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize, gap : Int, result : java.awt.Dimension) : Void;
	
	@:overload @:public @:static public static function addWidth(width : Int, gap : Int, result : java.awt.Dimension) : Void;
	
	@:overload @:public public function getMenuItem() : javax.swing.JMenuItem;
	
	@:overload @:public public function getMenuItemParent() : javax.swing.JComponent;
	
	@:overload @:public public function getFont() : java.awt.Font;
	
	@:overload @:public public function getAccFont() : java.awt.Font;
	
	@:overload @:public public function getFontMetrics() : java.awt.FontMetrics;
	
	@:overload @:public public function getAccFontMetrics() : java.awt.FontMetrics;
	
	@:overload @:public public function getIcon() : javax.swing.Icon;
	
	@:overload @:public public function getCheckIcon() : javax.swing.Icon;
	
	@:overload @:public public function getArrowIcon() : javax.swing.Icon;
	
	@:overload @:public public function getText() : String;
	
	@:overload @:public public function getAccText() : String;
	
	@:overload @:public public function isColumnLayout() : Bool;
	
	@:overload @:public public function useCheckAndArrow() : Bool;
	
	@:overload @:public public function isLeftToRight() : Bool;
	
	@:overload @:public public function isTopLevelMenu() : Bool;
	
	@:overload @:public public function getHtmlView() : javax.swing.text.View;
	
	@:overload @:public public function getVerticalAlignment() : Int;
	
	@:overload @:public public function getHorizontalAlignment() : Int;
	
	@:overload @:public public function getVerticalTextPosition() : Int;
	
	@:overload @:public public function getHorizontalTextPosition() : Int;
	
	@:overload @:public public function getGap() : Int;
	
	@:overload @:public public function getLeadingGap() : Int;
	
	@:overload @:public public function getAfterCheckIconGap() : Int;
	
	@:overload @:public public function getMinTextOffset() : Int;
	
	@:overload @:public public function getViewRect() : java.awt.Rectangle;
	
	@:overload @:public public function getIconSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:public public function getTextSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:public public function getAccSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:public public function getCheckSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:public public function getArrowSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:public public function getLabelSize() : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize;
	
	@:overload @:protected private function setMenuItem(mi : javax.swing.JMenuItem) : Void;
	
	@:overload @:protected private function setMenuItemParent(miParent : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function setFont(font : java.awt.Font) : Void;
	
	@:overload @:protected private function setAccFont(accFont : java.awt.Font) : Void;
	
	@:overload @:protected private function setFontMetrics(fm : java.awt.FontMetrics) : Void;
	
	@:overload @:protected private function setAccFontMetrics(accFm : java.awt.FontMetrics) : Void;
	
	@:overload @:protected private function setIcon(icon : javax.swing.Icon) : Void;
	
	@:overload @:protected private function setCheckIcon(checkIcon : javax.swing.Icon) : Void;
	
	@:overload @:protected private function setArrowIcon(arrowIcon : javax.swing.Icon) : Void;
	
	@:overload @:protected private function setText(text : String) : Void;
	
	@:overload @:protected private function setAccText(accText : String) : Void;
	
	@:overload @:protected private function setColumnLayout(columnLayout : Bool) : Void;
	
	@:overload @:protected private function setUseCheckAndArrow(useCheckAndArrow : Bool) : Void;
	
	@:overload @:protected private function setLeftToRight(leftToRight : Bool) : Void;
	
	@:overload @:protected private function setTopLevelMenu(topLevelMenu : Bool) : Void;
	
	@:overload @:protected private function setHtmlView(htmlView : javax.swing.text.View) : Void;
	
	@:overload @:protected private function setVerticalAlignment(verticalAlignment : Int) : Void;
	
	@:overload @:protected private function setHorizontalAlignment(horizontalAlignment : Int) : Void;
	
	@:overload @:protected private function setVerticalTextPosition(verticalTextPosition : Int) : Void;
	
	@:overload @:protected private function setHorizontalTextPosition(horizontalTextPosition : Int) : Void;
	
	@:overload @:protected private function setGap(gap : Int) : Void;
	
	@:overload @:protected private function setLeadingGap(leadingGap : Int) : Void;
	
	@:overload @:protected private function setAfterCheckIconGap(afterCheckIconGap : Int) : Void;
	
	@:overload @:protected private function setMinTextOffset(minTextOffset : Int) : Void;
	
	@:overload @:protected private function setViewRect(viewRect : java.awt.Rectangle) : Void;
	
	@:overload @:protected private function setIconSize(iconSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:protected private function setTextSize(textSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:protected private function setAccSize(accSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:protected private function setCheckSize(checkSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:protected private function setArrowSize(arrowSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:protected private function setLabelSize(labelSize : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_RectSize) : Void;
	
	@:overload @:public public function getLeftTextExtraWidth() : Int;
	
	/**
	* Returns false if the component is a JMenu and it is a top
	* level menu (on the menubar).
	*/
	@:native('useCheckAndArrow') @:overload @:public @:static public static function _useCheckAndArrow(menuItem : javax.swing.JMenuItem) : Bool;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$LayoutResult') extern class MenuItemLayoutHelper_LayoutResult
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(iconRect : java.awt.Rectangle, textRect : java.awt.Rectangle, accRect : java.awt.Rectangle, checkRect : java.awt.Rectangle, arrowRect : java.awt.Rectangle, labelRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getIconRect() : java.awt.Rectangle;
	
	@:overload @:public public function setIconRect(iconRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getTextRect() : java.awt.Rectangle;
	
	@:overload @:public public function setTextRect(textRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getAccRect() : java.awt.Rectangle;
	
	@:overload @:public public function setAccRect(accRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getCheckRect() : java.awt.Rectangle;
	
	@:overload @:public public function setCheckRect(checkRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getArrowRect() : java.awt.Rectangle;
	
	@:overload @:public public function setArrowRect(arrowRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getLabelRect() : java.awt.Rectangle;
	
	@:overload @:public public function setLabelRect(labelRect : java.awt.Rectangle) : Void;
	
	@:overload @:public public function getAllRects() : java.util.Map<String, java.awt.Rectangle>;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$ColumnAlignment') extern class MenuItemLayoutHelper_ColumnAlignment
{
	@:public @:static @:final public static var LEFT_ALIGNMENT(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:public @:static @:final public static var RIGHT_ALIGNMENT(default, null) : sun.swing.MenuItemLayoutHelper.MenuItemLayoutHelper_ColumnAlignment;
	
	@:overload @:public public function new(checkAlignment : Int, iconAlignment : Int, textAlignment : Int, accAlignment : Int, arrowAlignment : Int) : Void;
	
	@:overload @:public public function getCheckAlignment() : Int;
	
	@:overload @:public public function getIconAlignment() : Int;
	
	@:overload @:public public function getTextAlignment() : Int;
	
	@:overload @:public public function getAccAlignment() : Int;
	
	@:overload @:public public function getArrowAlignment() : Int;
	
	
}
@:native('sun$swing$MenuItemLayoutHelper$RectSize') extern class MenuItemLayoutHelper_RectSize
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(width : Int, height : Int, origWidth : Int, maxWidth : Int) : Void;
	
	@:overload @:public public function getWidth() : Int;
	
	@:overload @:public public function getHeight() : Int;
	
	@:overload @:public public function getOrigWidth() : Int;
	
	@:overload @:public public function getMaxWidth() : Int;
	
	@:overload @:public public function setWidth(width : Int) : Void;
	
	@:overload @:public public function setHeight(height : Int) : Void;
	
	@:overload @:public public function setOrigWidth(origWidth : Int) : Void;
	
	@:overload @:public public function setMaxWidth(maxWidth : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
