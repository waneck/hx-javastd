package sun.awt.X11;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XFileDialogPeer extends sun.awt.X11.XDialogPeer implements java.awt.peer.FileDialogPeer implements java.awt.event.ActionListener implements java.awt.event.ItemListener implements java.awt.KeyEventDispatcher implements XChoicePeerListener
{
	@:overload @:public override public function updateMinimumSize() : Void;
	
	@:overload @:public override public function updateIconImages() : Void;
	
	/**
	*
	* @see java.awt.event.ItemEvent
	* ItemEvent.ITEM_STATE_CHANGED
	*/
	@:overload @:public public function itemStateChanged(itemEvent : java.awt.event.ItemEvent) : Void;
	
	@:overload @:public public function actionPerformed(actionEvent : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function dispatchKeyEvent(keyEvent : java.awt.event.KeyEvent) : Bool;
	
	/**
	* set the file
	*/
	@:overload @:public public function setFile(file : String) : Void;
	
	/**
	* set the directory
	* FIXME: we should update 'savedDir' after programmatically 'setDirectory'
	* Otherwise, SavedDir will be not null before second showing
	* So the current directory of the file dialog will be incorrect after second showing
	* since 'setDirectory' will be ignored
	* We cann't update savedDir here now since it used very often
	*/
	@:overload @:public public function setDirectory(dir : String) : Void;
	
	/**
	* set filenameFilter
	*
	*/
	@:overload @:public public function setFilenameFilter(filter : java.io.FilenameFilter) : Void;
	
	@:overload @:public override public function dispose() : Void;
	
	@:overload @:public override public function setVisible(b : Bool) : Void;
	
	/*
	* Adding items to the path choice based on the text string
	* See 6240074 for more information
	*/
	@:overload @:public public function addItemsToPathChoice(text : String) : Void;
	
	/*
	* Refresh the unfurled choice at the time of the opening choice according to the text of the path field
	* See 6240074 for more information
	*/
	@:overload @:public public function unfurledChoiceOpening(choiceHelper : sun.awt.X11.ListHelper) : Void;
	
	/*
	* Refresh the file dialog at the time of the closing choice according to the selected item of the choice
	* See 6240074 for more information
	*/
	@:overload @:public public function unfurledChoiceClosing() : Void;
	
	
}
@:internal extern class Separator extends java.awt.Canvas
{
	@:public @:final @:static public static var HORIZONTAL(default, null) : Int;
	
	@:public @:final @:static public static var VERTICAL(default, null) : Int;
	
	@:overload @:public public function new(length : Int, thickness : Int, orient : Int) : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:internal extern class FileDialogFilter implements java.io.FilenameFilter
{
	@:overload @:public public function new(f : String) : Void;
	
	/*
	* Tells whether or not the specified file should be included in a file list
	*/
	@:overload @:public public function accept(dir : java.io.File, fileName : String) : Bool;
	
	
}
