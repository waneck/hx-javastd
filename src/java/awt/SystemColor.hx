package java.awt;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class SystemColor extends java.awt.Color implements java.io.Serializable
{
	/**
	* The array index for the
	* {@link #desktop} system color.
	* @see SystemColor#desktop
	*/
	public static var DESKTOP(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #activeCaption} system color.
	* @see SystemColor#activeCaption
	*/
	public static var ACTIVE_CAPTION(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #activeCaptionText} system color.
	* @see SystemColor#activeCaptionText
	*/
	public static var ACTIVE_CAPTION_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #activeCaptionBorder} system color.
	* @see SystemColor#activeCaptionBorder
	*/
	public static var ACTIVE_CAPTION_BORDER(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #inactiveCaption} system color.
	* @see SystemColor#inactiveCaption
	*/
	public static var INACTIVE_CAPTION(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #inactiveCaptionText} system color.
	* @see SystemColor#inactiveCaptionText
	*/
	public static var INACTIVE_CAPTION_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #inactiveCaptionBorder} system color.
	* @see SystemColor#inactiveCaptionBorder
	*/
	public static var INACTIVE_CAPTION_BORDER(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #window} system color.
	* @see SystemColor#window
	*/
	public static var WINDOW(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #windowBorder} system color.
	* @see SystemColor#windowBorder
	*/
	public static var WINDOW_BORDER(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #windowText} system color.
	* @see SystemColor#windowText
	*/
	public static var WINDOW_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #menu} system color.
	* @see SystemColor#menu
	*/
	public static var MENU(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #menuText} system color.
	* @see SystemColor#menuText
	*/
	public static var MENU_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #text} system color.
	* @see SystemColor#text
	*/
	public static var TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #textText} system color.
	* @see SystemColor#textText
	*/
	public static var TEXT_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #textHighlight} system color.
	* @see SystemColor#textHighlight
	*/
	public static var TEXT_HIGHLIGHT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #textHighlightText} system color.
	* @see SystemColor#textHighlightText
	*/
	public static var TEXT_HIGHLIGHT_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #textInactiveText} system color.
	* @see SystemColor#textInactiveText
	*/
	public static var TEXT_INACTIVE_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #control} system color.
	* @see SystemColor#control
	*/
	public static var CONTROL(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #controlText} system color.
	* @see SystemColor#controlText
	*/
	public static var CONTROL_TEXT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #controlHighlight} system color.
	* @see SystemColor#controlHighlight
	*/
	public static var CONTROL_HIGHLIGHT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #controlLtHighlight} system color.
	* @see SystemColor#controlLtHighlight
	*/
	public static var CONTROL_LT_HIGHLIGHT(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #controlShadow} system color.
	* @see SystemColor#controlShadow
	*/
	public static var CONTROL_SHADOW(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #controlDkShadow} system color.
	* @see SystemColor#controlDkShadow
	*/
	public static var CONTROL_DK_SHADOW(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #scrollbar} system color.
	* @see SystemColor#scrollbar
	*/
	public static var SCROLLBAR(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #info} system color.
	* @see SystemColor#info
	*/
	public static var INFO(default, null) : Int;
	
	/**
	* The array index for the
	* {@link #infoText} system color.
	* @see SystemColor#infoText
	*/
	public static var INFO_TEXT(default, null) : Int;
	
	/**
	* The number of system colors in the array.
	*/
	public static var NUM_COLORS(default, null) : Int;
	
	/**
	* The color rendered for the background of the desktop.
	*/
	public static var desktop(default, null) : SystemColor;
	
	/**
	* The color rendered for the window-title background of the currently active window.
	*/
	public static var activeCaption(default, null) : SystemColor;
	
	/**
	* The color rendered for the window-title text of the currently active window.
	*/
	public static var activeCaptionText(default, null) : SystemColor;
	
	/**
	* The color rendered for the border around the currently active window.
	*/
	public static var activeCaptionBorder(default, null) : SystemColor;
	
	/**
	* The color rendered for the window-title background of inactive windows.
	*/
	public static var inactiveCaption(default, null) : SystemColor;
	
	/**
	* The color rendered for the window-title text of inactive windows.
	*/
	public static var inactiveCaptionText(default, null) : SystemColor;
	
	/**
	* The color rendered for the border around inactive windows.
	*/
	public static var inactiveCaptionBorder(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of interior regions inside windows.
	*/
	public static var window(default, null) : SystemColor;
	
	/**
	* The color rendered for the border around interior regions inside windows.
	*/
	public static var windowBorder(default, null) : SystemColor;
	
	/**
	* The color rendered for text of interior regions inside windows.
	*/
	public static var windowText(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of menus.
	*/
	public static var menu(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of menus.
	*/
	public static var menuText(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of text control objects, such as
	* textfields and comboboxes.
	*/
	public static var text(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of text control objects, such as textfields
	* and comboboxes.
	*/
	public static var textText(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of selected items, such as in menus,
	* comboboxes, and text.
	*/
	public static var textHighlight(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of selected items, such as in menus, comboboxes,
	* and text.
	*/
	public static var textHighlightText(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of inactive items, such as in menus.
	*/
	public static var textInactiveText(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of control panels and control objects,
	* such as pushbuttons.
	*/
	public static var control(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of control panels and control objects,
	* such as pushbuttons.
	*/
	public static var controlText(default, null) : SystemColor;
	
	/**
	* The color rendered for light areas of 3D control objects, such as pushbuttons.
	* This color is typically derived from the <code>control</code> background color
	* to provide a 3D effect.
	*/
	public static var controlHighlight(default, null) : SystemColor;
	
	/**
	* The color rendered for highlight areas of 3D control objects, such as pushbuttons.
	* This color is typically derived from the <code>control</code> background color
	* to provide a 3D effect.
	*/
	public static var controlLtHighlight(default, null) : SystemColor;
	
	/**
	* The color rendered for shadow areas of 3D control objects, such as pushbuttons.
	* This color is typically derived from the <code>control</code> background color
	* to provide a 3D effect.
	*/
	public static var controlShadow(default, null) : SystemColor;
	
	/**
	* The color rendered for dark shadow areas on 3D control objects, such as pushbuttons.
	* This color is typically derived from the <code>control</code> background color
	* to provide a 3D effect.
	*/
	public static var controlDkShadow(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of scrollbars.
	*/
	public static var scrollbar(default, null) : SystemColor;
	
	/**
	* The color rendered for the background of tooltips or spot help.
	*/
	public static var info(default, null) : SystemColor;
	
	/**
	* The color rendered for the text of tooltips or spot help.
	*/
	public static var infoText(default, null) : SystemColor;
	
	/**
	* Returns a string representation of this <code>Color</code>'s values.
	* This method is intended to be used only for debugging purposes,
	* and the content and format of the returned string may vary between
	* implementations.
	* The returned string may be empty but may not be <code>null</code>.
	*
	* @return  a string representation of this <code>Color</code>
	*/
	@:overload override public function toString() : String;
	
	
}
