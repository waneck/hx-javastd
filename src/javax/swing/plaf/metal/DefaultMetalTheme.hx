package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultMetalTheme extends javax.swing.plaf.metal.MetalTheme
{
	/**
	* Returns the name of this theme. This returns {@code "Steel"}.
	*
	* @return the name of this theme.
	*/
	@:overload public function getName() : String;
	
	/**
	* Creates and returns an instance of {@code DefaultMetalTheme}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the primary 1 color. This returns a color with rgb values
	* of 102, 102, and 153, respectively.
	*
	* @return the primary 1 color
	*/
	@:overload private function getPrimary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 2 color. This returns a color with rgb values
	* of 153, 153, 204, respectively.
	*
	* @return the primary 2 color
	*/
	@:overload private function getPrimary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the primary 3 color. This returns a color with rgb values
	* 204, 204, 255, respectively.
	*
	* @return the primary 3 color
	*/
	@:overload private function getPrimary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 1 color. This returns a color with rgb values
	* 102, 102, and 102, respectively.
	*
	* @return the secondary 1 color
	*/
	@:overload private function getSecondary1() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 2 color. This returns a color with rgb values
	* 153, 153, and 153, respectively.
	*
	* @return the secondary 2 color
	*/
	@:overload private function getSecondary2() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the secondary 3 color. This returns a color with rgb values
	* 204, 204, and 204, respectively.
	*
	* @return the secondary 3 color
	*/
	@:overload private function getSecondary3() : javax.swing.plaf.ColorUIResource;
	
	/**
	* Returns the control text font. This returns Dialog, 12pt. If
	* plain fonts have been enabled as described in <a href="#fontStyle">
	* font style</a>, the font style is plain. Otherwise the font style is
	* bold.
	*
	* @return the control text font
	*/
	@:overload public function getControlTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the system text font. This returns Dialog, 12pt, plain.
	*
	* @return the sytem text font
	*/
	@:overload public function getSystemTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the user text font. This returns Dialog, 12pt, plain.
	*
	* @return the user text font
	*/
	@:overload public function getUserTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the menu text font. This returns Dialog, 12pt. If
	* plain fonts have been enabled as described in <a href="#fontStyle">
	* font style</a>, the font style is plain. Otherwise the font style is
	* bold.
	*
	* @return the menu text font
	*/
	@:overload public function getMenuTextFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the window title font. This returns Dialog, 12pt, bold.
	*
	* @return the window title font
	*/
	@:overload public function getWindowTitleFont() : javax.swing.plaf.FontUIResource;
	
	/**
	* Returns the sub-text font. This returns Dialog, 10pt, plain.
	*
	* @return the sub-text font
	*/
	@:overload public function getSubTextFont() : javax.swing.plaf.FontUIResource;
	
	
}
/**
* FontDelegates add an extra level of indirection to obtaining fonts.
*/
@:native('javax$swing$plaf$metal$DefaultMetalTheme$FontDelegate') @:internal extern class DefaultMetalTheme_FontDelegate
{
	@:overload public function new() : Void;
	
	@:overload public function getFont(type : Int) : javax.swing.plaf.FontUIResource;
	
	/**
	* This is the same as invoking
	* <code>Font.getFont(key)</code>, with the exception
	* that it is wrapped inside a <code>doPrivileged</code> call.
	*/
	@:overload private function getPrivilegedFont(key : Int) : java.awt.Font;
	
	
}
/**
* The WindowsFontDelegate uses DesktopProperties to obtain fonts.
*/
@:native('javax$swing$plaf$metal$DefaultMetalTheme$WindowsFontDelegate') @:internal extern class DefaultMetalTheme_WindowsFontDelegate extends javax.swing.plaf.metal.DefaultMetalTheme.DefaultMetalTheme_FontDelegate
{
	@:overload public function new() : Void;
	
	@:overload override public function getFont(type : Int) : javax.swing.plaf.FontUIResource;
	
	
}
