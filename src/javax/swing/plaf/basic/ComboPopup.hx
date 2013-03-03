package javax.swing.plaf.basic;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface ComboPopup
{
	/**
	* Shows the popup
	*/
	@:overload @:public public function show() : Void;
	
	/**
	* Hides the popup
	*/
	@:overload @:public public function hide() : Void;
	
	/**
	* Returns true if the popup is visible (currently being displayed).
	*
	* @return <code>true</code> if the component is visible; <code>false</code> otherwise.
	*/
	@:overload @:public public function isVisible() : Bool;
	
	/**
	* Returns the list that is being used to draw the items in the combo box.
	* This method is highly implementation specific and should not be used
	* for general list manipulation.
	*/
	@:overload @:public public function getList() : javax.swing.JList<Dynamic>;
	
	/**
	* Returns a mouse listener that will be added to the combo box or null.
	* If this method returns null then it will not be added to the combo box.
	*
	* @return a <code>MouseListener</code> or null
	*/
	@:overload @:public public function getMouseListener() : java.awt.event.MouseListener;
	
	/**
	* Returns a mouse motion listener that will be added to the combo box or null.
	* If this method returns null then it will not be added to the combo box.
	*
	* @return a <code>MouseMotionListener</code> or null
	*/
	@:overload @:public public function getMouseMotionListener() : java.awt.event.MouseMotionListener;
	
	/**
	* Returns a key listener that will be added to the combo box or null.
	* If this method returns null then it will not be added to the combo box.
	*/
	@:overload @:public public function getKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Called to inform the ComboPopup that the UI is uninstalling.
	* If the ComboPopup added any listeners in the component, it should remove them here.
	*/
	@:overload @:public public function uninstallingUI() : Void;
	
	
}
