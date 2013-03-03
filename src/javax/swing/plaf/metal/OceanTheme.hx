package javax.swing.plaf.metal;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class OceanTheme extends javax.swing.plaf.metal.DefaultMetalTheme
{
	/**
	* Creates an instance of <code>OceanTheme</code>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Add this theme's custom entries to the defaults table.
	*
	* @param table the defaults table, non-null
	* @throws NullPointerException if {@code table} is {@code null}
	*/
	@:overload @:public override public function addCustomEntriesToTable(table : javax.swing.UIDefaults) : Void;
	
	/**
	* Return the name of this theme, "Ocean".
	*
	* @return "Ocean"
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Returns the primary 1 color. This returns a color with an rgb hex value
	* of {@code 0x6382BF}.
	*
	* @return the primary 1 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getPrimary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 2 color. This returns a color with an rgb hex value
	* of {@code 0xA3B8CC}.
	*
	* @return the primary 2 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getPrimary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 3 color. This returns a color with an rgb hex value
	* of {@code 0xB8CFE5}.
	*
	* @return the primary 3 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getPrimary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 1 color. This returns a color with an rgb hex
	* value of {@code 0x7A8A99}.
	*
	* @return the secondary 1 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getSecondary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 2 color. This returns a color with an rgb hex
	* value of {@code 0xB8CFE5}.
	*
	* @return the secondary 2 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getSecondary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 3 color. This returns a color with an rgb hex
	* value of {@code 0xEEEEEE}.
	*
	* @return the secondary 3 color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getSecondary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the black color. This returns a color with an rgb hex
	* value of {@code 0x333333}.
	*
	* @return the black color
	* @see java.awt.Color#decode
	*/
	@:overload @:protected override private function getBlack() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the desktop color. This returns a color with an rgb hex
	* value of {@code 0xFFFFFF}.
	*
	* @return the desktop color
	* @see java.awt.Color#decode
	*/
	@:overload @:public override public function getDesktopColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the inactive control text color. This returns a color with an
	* rgb hex value of {@code 0x999999}.
	*
	* @return the inactive control text color
	*/
	@:overload @:public override public function getInactiveControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control text color. This returns a color with an
	* rgb hex value of {@code 0x333333}.
	*
	* @return the control text color
	*/
	@:overload @:public override public function getControlTextColor() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the menu disabled foreground color. This returns a color with an
	* rgb hex value of {@code 0x999999}.
	*
	* @return the menu disabled foreground color
	*/
	@:overload @:public override public function getMenuDisabledForeground() : javax.swing.plaf.ColorUIResource;
	
	
}
@:native('javax$swing$plaf$metal$OceanTheme$COIcon') @:internal extern class OceanTheme_COIcon extends javax.swing.plaf.IconUIResource
{
	@:overload @:public public function new(ltr : javax.swing.Icon, rtl : javax.swing.Icon) : Void;
	
	@:overload @:public override public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	
}
@:native('javax$swing$plaf$metal$OceanTheme$IFIcon') @:internal extern class OceanTheme_IFIcon extends javax.swing.plaf.IconUIResource
{
	@:overload @:public public function new(normal : javax.swing.Icon, pressed : javax.swing.Icon) : Void;
	
	@:overload @:public override public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	
}
