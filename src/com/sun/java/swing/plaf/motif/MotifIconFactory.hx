package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifIconFactory implements java.io.Serializable
{
	@:overload public static function getMenuItemCheckIcon() : javax.swing.Icon;
	
	@:overload public static function getMenuItemArrowIcon() : javax.swing.Icon;
	
	@:overload public static function getMenuArrowIcon() : javax.swing.Icon;
	
	@:overload public static function getCheckBoxIcon() : javax.swing.Icon;
	
	@:overload public static function getRadioButtonIcon() : javax.swing.Icon;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifIconFactory$CheckBoxIcon') @:internal extern class MotifIconFactory_CheckBoxIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	@:overload public function drawCheckBezelOut(g : java.awt.Graphics, x : Int, y : Int, csize : Int) : Void;
	
	@:overload public function drawCheckBezel(g : java.awt.Graphics, x : Int, y : Int, csize : Int, shade : Bool, out : Bool, check : Bool, flat : Bool) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifIconFactory$RadioButtonIcon') @:internal extern class MotifIconFactory_RadioButtonIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifIconFactory$MenuItemCheckIcon') @:internal extern class MotifIconFactory_MenuItemCheckIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifIconFactory$MenuItemArrowIcon') @:internal extern class MotifIconFactory_MenuItemArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifIconFactory$MenuArrowIcon') @:internal extern class MotifIconFactory_MenuArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
