package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicRadioButtonUI extends javax.swing.plaf.basic.BasicToggleButtonUI
{
	@:protected private var icon : javax.swing.Icon;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	@:overload @:protected override private function installDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload @:protected override private function uninstallDefaults(b : javax.swing.AbstractButton) : Void;
	
	@:overload @:public public function getDefaultIcon() : javax.swing.Icon;
	
	/**
	* paint the radio button
	*/
	@:overload @:public @:synchronized override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function paintFocus(g : java.awt.Graphics, textRect : java.awt.Rectangle, size : java.awt.Dimension) : Void;
	
	/**
	* The preferred size of the radio button
	*/
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
