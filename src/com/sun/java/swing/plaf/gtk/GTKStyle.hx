package com.sun.java.swing.plaf.gtk;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GTKStyle extends javax.swing.plaf.synth.SynthStyle implements com.sun.java.swing.plaf.gtk.GTKConstants
{
	@:overload public function installDefaults(context : javax.swing.plaf.synth.SynthContext) : Void;
	
	@:overload public function getGraphicsUtils(context : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthGraphicsUtils;
	
	/**
	* Returns a <code>SynthPainter</code> that will route the appropriate
	* calls to a <code>GTKEngine</code>.
	*
	* @param state SynthContext indentifying requestor
	* @return SynthPainter
	*/
	@:overload public function getPainter(state : javax.swing.plaf.synth.SynthContext) : javax.swing.plaf.synth.SynthPainter;
	
	@:overload private function getColorForState(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	@:overload public function getColor(context : javax.swing.plaf.synth.SynthContext, type : javax.swing.plaf.synth.ColorType) : java.awt.Color;
	
	@:overload private function getFontForState(context : javax.swing.plaf.synth.SynthContext) : java.awt.Font;
	
	/**
	* Returns the Insets. If <code>insets</code> is non-null the resulting
	* insets will be placed in it, otherwise a new Insets object will be
	* created and returned.
	*
	* @param context SynthContext indentifying requestor
	* @param insets Where to place Insets
	* @return Insets.
	*/
	@:overload public function getInsets(state : javax.swing.plaf.synth.SynthContext, insets : java.awt.Insets) : java.awt.Insets;
	
	/**
	* Returns the value to initialize the opacity property of the Component
	* to. A Style should NOT assume the opacity will remain this value, the
	* developer may reset it or override it.
	*
	* @param context SynthContext indentifying requestor
	* @return opaque Whether or not the JComponent is opaque.
	*/
	@:overload public function isOpaque(context : javax.swing.plaf.synth.SynthContext) : Bool;
	
	@:overload public function get(context : javax.swing.plaf.synth.SynthContext, key : Dynamic) : Dynamic;
	
	
}
@:native('com$sun$java$swing$plaf$gtk$GTKStyle$GTKStockIconInfo') @:internal extern class GTKStyle_GTKStockIconInfo
{
	/**
	* Return the size of a particular icon type (logical size)
	*
	* @param type icon type (GtkIconSize value)
	* @return a Dimension object, or null if lsize is invalid
	*/
	@:overload public static function getIconSize(type : Int) : java.awt.Dimension;
	
	/**
	* Change icon size in a type to size mapping. This is called by code
	* that parses the gtk-icon-sizes setting
	*
	* @param type icon type (GtkIconSize value)
	* @param w the new icon width
	* @param h the new icon height
	*/
	@:overload public static function setIconSize(type : Int, w : Int, h : Int) : Void;
	
	/**
	* Return icon type (GtkIconSize value) given a symbolic name which can
	* occur in a theme file.
	*
	* @param size symbolic name, e.g. gtk-button
	* @return icon type. Valid types are 1 to 6
	*/
	@:overload public static function getIconType(size : String) : Int;
	
	
}
/**
* An Icon that is fetched using getStockIcon.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKStyle$GTKStockIcon') @:internal extern class GTKStyle_GTKStockIcon extends sun.swing.plaf.synth.SynthIcon
{
	@:overload override public function paintIcon(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function getIconWidth(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	@:overload override public function getIconHeight(context : javax.swing.plaf.synth.SynthContext) : Int;
	
	
}
/**
* GTKLazyValue is a slimmed down version of <code>ProxyLaxyValue</code>.
* The code is duplicate so that it can get at the package private
* classes in gtk.
*/
@:native('com$sun$java$swing$plaf$gtk$GTKStyle$GTKLazyValue') @:internal extern class GTKStyle_GTKLazyValue implements javax.swing.UIDefaults.UIDefaults_LazyValue
{
	@:overload public function createValue(table : javax.swing.UIDefaults) : Dynamic;
	
	
}
