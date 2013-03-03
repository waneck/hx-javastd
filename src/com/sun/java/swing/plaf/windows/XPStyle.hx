package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*
* <p>These classes are designed to be used while the
* corresponding <code>LookAndFeel</code> class has been installed
* (<code>UIManager.setLookAndFeel(new <i>XXX</i>LookAndFeel())</code>).
* Using them while a different <code>LookAndFeel</code> is installed
* may produce unexpected results, including exceptions.
* Additionally, changing the <code>LookAndFeel</code>
* maintained by the <code>UIManager</code> without updating the
* corresponding <code>ComponentUI</code> of any
* <code>JComponent</code>s may also produce unexpected results,
* such as the wrong colors showing up, and is generally not
* encouraged.
*
*/
/**
* Implements Windows XP Styles for the Windows Look and Feel.
*
* @author Leif Samuelsson
*/
@:internal extern class XPStyle
{
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$XPFillBorder') @:internal extern class XPStyle_XPFillBorder extends javax.swing.border.LineBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$XPStatefulFillBorder') @:internal extern class XPStyle_XPStatefulFillBorder extends com.sun.java.swing.plaf.windows.XPStyle.XPStyle_XPFillBorder
{
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$XPImageBorder') @:internal extern class XPStyle_XPImageBorder extends javax.swing.border.AbstractBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$XPEmptyBorder') @:internal extern class XPStyle_XPEmptyBorder extends javax.swing.border.EmptyBorder implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/** A class which encapsulates attributes for a given part
* (component type) and which provides methods for painting backgrounds
* and glyphs
*/
@:native('com$sun$java$swing$plaf$windows$XPStyle$Skin') @:internal extern class XPStyle_Skin
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$SkinPainter') @:internal extern class XPStyle_SkinPainter extends sun.swing.CachedPainter
{
	@:overload @:public override public function flush() : Void;
	
	@:overload @:protected override private function paintToImage(c : java.awt.Component, image : java.awt.Image, g : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:protected override private function createImage(c : java.awt.Component, w : Int, h : Int, config : java.awt.GraphicsConfiguration, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	
}
@:native('com$sun$java$swing$plaf$windows$XPStyle$GlyphButton') @:internal extern class XPStyle_GlyphButton extends javax.swing.JButton
{
	@:overload @:public public function new(parent : java.awt.Component, part : Part) : Void;
	
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:protected private function getState() : State;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function setPart(parent : java.awt.Component, part : Part) : Void;
	
	@:overload @:protected override private function paintBorder(g : java.awt.Graphics) : Void;
	
	
}
