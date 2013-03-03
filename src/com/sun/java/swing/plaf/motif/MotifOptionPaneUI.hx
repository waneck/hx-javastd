package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifOptionPaneUI extends javax.swing.plaf.basic.BasicOptionPaneUI
{
	/**
	* Creates a new MotifOptionPaneUI instance.
	*/
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Creates and returns a Container containin the buttons. The buttons
	* are created by calling <code>getButtons</code>.
	*/
	@:overload @:protected override private function createButtonArea() : java.awt.Container;
	
	/**
	* Returns null, CDE/Motif does not impose a minimum size.
	*/
	@:overload @:public override public function getMinimumOptionPaneSize() : java.awt.Dimension;
	
	@:overload @:protected override private function createSeparator() : java.awt.Container;
	
	/**
	* Creates and adds a JLabel representing the icon returned from
	* <code>getIcon</code> to <code>top</code>. This is messaged from
	* <code>createMessageArea</code>
	*/
	@:overload @:protected override private function addIcon(top : java.awt.Container) : Void;
	
	
}
