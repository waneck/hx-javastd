package javax.swing.plaf.basic;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicToolBarSeparatorUI extends javax.swing.plaf.basic.BasicSeparatorUI
{
	/**
	* A Basic L&F implementation of ToolBarSeparatorUI.  This implementation
	* is a "combined" view/controller.
	* <p>
	*
	* @author Jeff Shapiro
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected override private function installDefaults(s : javax.swing.JSeparator) : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
