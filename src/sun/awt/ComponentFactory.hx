package sun.awt;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
* Interface for component creation support in toolkits
*/
extern interface ComponentFactory
{
	@:overload public function createCanvas(target : java.awt.Canvas) : java.awt.peer.CanvasPeer;
	
	@:overload public function createPanel(target : java.awt.Panel) : java.awt.peer.PanelPeer;
	
	@:overload public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	@:overload public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	@:overload public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	
}
