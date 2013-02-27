package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKEngine
{
	@:overload public function paintArrow(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, direction : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ArrowType, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintBox(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintBoxGap(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int, boxGapType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_PositionType, tabBegin : Int, size : Int) : Void;
	
	@:overload public function paintCheck(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintExpander(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, expanderStyle : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ExpanderStyle, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintExtension(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int, placement : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_PositionType, tabIndex : Int) : Void;
	
	@:overload public function paintFlatBox(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int, colorType : javax.swing.plaf.synth.ColorType) : Void;
	
	@:overload public function paintFocus(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintHandle(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int, orientation : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_Orientation) : Void;
	
	@:overload public function paintHline(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintOption(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintShadow(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintSlider(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, shadowType : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_ShadowType, detail : String, x : Int, y : Int, w : Int, h : Int, orientation : com.sun.java.swing.plaf.gtk.GTKConstants.GTKConstants_Orientation) : Void;
	
	@:overload public function paintVline(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, detail : String, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function paintBackground(g : java.awt.Graphics, context : javax.swing.plaf.synth.SynthContext, id : javax.swing.plaf.synth.Region, state : Int, color : java.awt.Color, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paint a cached image identified by its size and a set of additional
	* arguments, if there's one.
	*
	* @return true if a cached image has been painted, false otherwise
	*/
	@:overload public function paintCachedImage(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Bool;
	
	/*
	* Allocate a native offscreen buffer of the specified size.
	*/
	@:overload public function startPainting(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Convenience method that delegates to finishPainting() with
	* caching enabled.
	*/
	@:overload public function finishPainting() : Void;
	
	/**
	* Called to indicate that painting is finished. We create a new
	* BufferedImage from the offscreen buffer, (optionally) cache it,
	* and paint it.
	*/
	@:overload public function finishPainting(useCache : Bool) : Void;
	
	/**
	* Notify native layer of theme change, and flush cache
	*/
	@:overload public function themeChanged() : Void;
	
	/* GtkSettings enum mirrors that in gtk2_interface.h */
	@:overload public function getSetting(property : GTKEngine_Settings) : Dynamic;
	
	
}
/** This enum mirrors that in gtk2_interface.h */
@:native('com$sun$java$swing$plaf$gtk$GTKEngine$WidgetType') extern enum GTKEngine_WidgetType
{
	BUTTON;
	CHECK_BOX;
	CHECK_BOX_MENU_ITEM;
	COLOR_CHOOSER;
	COMBO_BOX;
	COMBO_BOX_ARROW_BUTTON;
	COMBO_BOX_TEXT_FIELD;
	DESKTOP_ICON;
	DESKTOP_PANE;
	EDITOR_PANE;
	FORMATTED_TEXT_FIELD;
	HANDLE_BOX;
	HPROGRESS_BAR;
	HSCROLL_BAR;
	HSCROLL_BAR_BUTTON_LEFT;
	HSCROLL_BAR_BUTTON_RIGHT;
	HSCROLL_BAR_TRACK;
	HSCROLL_BAR_THUMB;
	HSEPARATOR;
	HSLIDER;
	HSLIDER_TRACK;
	HSLIDER_THUMB;
	HSPLIT_PANE_DIVIDER;
	INTERNAL_FRAME;
	INTERNAL_FRAME_TITLE_PANE;
	IMAGE;
	LABEL;
	LIST;
	MENU;
	MENU_BAR;
	MENU_ITEM;
	MENU_ITEM_ACCELERATOR;
	OPTION_PANE;
	PANEL;
	PASSWORD_FIELD;
	POPUP_MENU;
	POPUP_MENU_SEPARATOR;
	RADIO_BUTTON;
	RADIO_BUTTON_MENU_ITEM;
	ROOT_PANE;
	SCROLL_PANE;
	SPINNER;
	SPINNER_ARROW_BUTTON;
	SPINNER_TEXT_FIELD;
	SPLIT_PANE;
	TABBED_PANE;
	TABBED_PANE_TAB_AREA;
	TABBED_PANE_CONTENT;
	TABBED_PANE_TAB;
	TABLE;
	TABLE_HEADER;
	TEXT_AREA;
	TEXT_FIELD;
	TEXT_PANE;
	TITLED_BORDER;
	TOGGLE_BUTTON;
	TOOL_BAR;
	TOOL_BAR_DRAG_WINDOW;
	TOOL_BAR_SEPARATOR;
	TOOL_TIP;
	TREE;
	TREE_CELL;
	VIEWPORT;
	VPROGRESS_BAR;
	VSCROLL_BAR;
	VSCROLL_BAR_BUTTON_UP;
	VSCROLL_BAR_BUTTON_DOWN;
	VSCROLL_BAR_TRACK;
	VSCROLL_BAR_THUMB;
	VSEPARATOR;
	VSLIDER;
	VSLIDER_TRACK;
	VSLIDER_THUMB;
	VSPLIT_PANE_DIVIDER;
	
}

/**
* Representation of GtkSettings properties.
* When we need more settings we can add them here and
* to all implementations of getGTKSetting().
*/
@:native('com$sun$java$swing$plaf$gtk$GTKEngine$Settings') extern enum GTKEngine_Settings
{
	GTK_FONT_NAME;
	GTK_ICON_SIZES;
	
}

/* Custom regions are needed for representing regions that don't exist
* in the original Region class.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKEngine$CustomRegion') @:internal extern class GTKEngine_CustomRegion extends javax.swing.plaf.synth.Region
{
	
}
