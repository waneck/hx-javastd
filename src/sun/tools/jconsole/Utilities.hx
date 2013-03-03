package sun.tools.jconsole;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* Miscellaneous utility methods for JConsole
*/
extern class Utilities
{
	@:overload @:public @:static public static function updateTransparency(comp : javax.swing.JComponent) : Void;
	
	/**
	* A slightly modified border for JScrollPane to be used with a JTable inside
	* a JTabbedPane. It has only top part and the rest is clipped to make the
	* overall border less thick.
	* The top border helps differentiating the containing table from its container.
	*/
	@:overload @:public @:static public static function newTableScrollPane(comp : javax.swing.JComponent) : javax.swing.JScrollPane;
	
	@:overload @:public @:static public static function setAccessibleName(comp : javax.accessibility.Accessible, name : String) : Void;
	
	@:overload @:public @:static public static function setAccessibleDescription(comp : javax.accessibility.Accessible, description : String) : Void;
	
	/**
	* Modifies color c1 to ensure it has acceptable contrast
	* relative to color c2.
	*
	* http://www.w3.org/TR/AERT#color-contrast
	* http://www.cs.rit.edu/~ncs/color/t_convert.html#RGB%20to%20YIQ%20&%20YIQ%20to%20RGB
	*/
	@:overload @:public @:static public static function ensureContrast(c1 : java.awt.Color, c2 : java.awt.Color) : java.awt.Color;
	
	@:overload @:public @:static public static function getColorBrightness(c : java.awt.Color) : Float;
	
	
}
@:native('sun$tools$jconsole$Utilities$TableScrollPane') @:internal extern class Utilities_TableScrollPane extends javax.swing.JScrollPane
{
	@:overload @:public public function new(comp : javax.swing.JComponent) : Void;
	
	@:overload @:protected override private function paintBorder(g : java.awt.Graphics) : Void;
	
	
}
