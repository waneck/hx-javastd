package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsPopupMenuUI extends javax.swing.plaf.basic.BasicPopupMenuUI
{
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installListeners() : Void;
	
	/**
	* Returns the <code>Popup</code> that will be responsible for
	* displaying the <code>JPopupMenu</code>.
	*
	* @param popupMenu JPopupMenu requesting Popup
	* @param x     Screen x location Popup is to be shown at
	* @param y     Screen y location Popup is to be shown at.
	* @return Popup that will show the JPopupMenu
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getPopup(popupMenu : javax.swing.JPopupMenu, x : Int, y : Int) : javax.swing.Popup;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsPopupMenuUI$MnemonicListener') @:internal extern class WindowsPopupMenuUI_MnemonicListener implements javax.swing.event.ChangeListener
{
	@:overload public function stateChanged(ev : javax.swing.event.ChangeEvent) : Void;
	
	
}
