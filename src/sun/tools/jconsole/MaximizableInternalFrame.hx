package sun.tools.jconsole;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class is a temporary workaround for bug 4834918:
* Win L&F: JInternalFrame should merge with JMenuBar when maximized.
* It is not a general solution, but intended for use within the
* limited scope of JConsole when running with XP/Vista styles.
*/
extern class MaximizableInternalFrame extends javax.swing.JInternalFrame
{
	@:overload @:public public function new(title : String, resizable : Bool, closable : Bool, maximizable : Bool, iconifiable : Bool) : Void;
	
	@:overload @:public override public function updateUI() : Void;
	
	@:overload @:public override public function setTitle(title : String) : Void;
	
	
}
@:native('sun$tools$jconsole$MaximizableInternalFrame$FixedMenuBarLayout') @:internal extern class MaximizableInternalFrame_FixedMenuBarLayout extends javax.swing.BoxLayout
{
	@:overload @:public public function new(target : java.awt.Container, axis : Int) : Void;
	
	@:overload @:public override public function layoutContainer(target : java.awt.Container) : Void;
	
	
}
@:native('sun$tools$jconsole$MaximizableInternalFrame$MDIButtonIcon') @:internal extern class MaximizableInternalFrame_MDIButtonIcon implements javax.swing.Icon
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
