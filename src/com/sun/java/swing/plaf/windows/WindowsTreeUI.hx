package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsTreeUI extends javax.swing.plaf.basic.BasicTreeUI
{
	/**
	* A Windows tree.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author Scott Violet
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Ensures that the rows identified by beginRow through endRow are
	* visible.
	*/
	@:overload @:protected override private function ensureRowsAreVisible(beginRow : Int, endRow : Int) : Void;
	
	@:static @:protected @:final private static var HALF_SIZE(default, null) : Int;
	
	@:static @:protected @:final private static var SIZE(default, null) : Int;
	
	/**
	* Returns the default cell renderer that is used to do the
	* stamping of each node.
	*/
	@:overload @:protected override private function createDefaultCellRenderer() : javax.swing.tree.TreeCellRenderer;
	
	
}
/**
* The minus sign button icon
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsTreeUI$ExpandedIcon') extern class WindowsTreeUI_ExpandedIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload @:static @:public public static function createExpandedIcon() : javax.swing.Icon;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* The plus sign button icon
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsTreeUI$CollapsedIcon') extern class WindowsTreeUI_CollapsedIcon extends com.sun.java.swing.plaf.windows.WindowsTreeUI.WindowsTreeUI_ExpandedIcon
{
	@:overload @:static @:public public static function createCollapsedIcon() : javax.swing.Icon;
	
	@:overload @:public override public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsTreeUI$WindowsTreeCellRenderer') extern class WindowsTreeUI_WindowsTreeCellRenderer extends javax.swing.tree.DefaultTreeCellRenderer
{
	/**
	* Configures the renderer based on the passed in components.
	* The value is set from messaging the tree with
	* <code>convertValueToText</code>, which ultimately invokes
	* <code>toString</code> on <code>value</code>.
	* The foreground color is set based on the selection and the icon
	* is set based on on leaf and expanded.
	*/
	@:overload @:public override public function getTreeCellRendererComponent(tree : javax.swing.JTree, value : Dynamic, sel : Bool, expanded : Bool, leaf : Bool, row : Int, hasFocus : Bool) : java.awt.Component;
	
	
}
