package sun.awt;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class HeadlessToolkit extends java.awt.Toolkit implements sun.awt.ComponentFactory implements sun.awt.KeyboardFocusManagerPeerProvider
{
	@:overload @:public public function new(tk : java.awt.Toolkit) : Void;
	
	@:overload @:public public function getUnderlyingToolkit() : java.awt.Toolkit;
	
	/* Lightweight implementation of Canvas and Panel */
	@:overload @:public override public function createCanvas(target : java.awt.Canvas) : java.awt.peer.CanvasPeer;
	
	@:overload @:public override public function createPanel(target : java.awt.Panel) : java.awt.peer.PanelPeer;
	
	/*
	* Component peer objects - unsupported.
	*/
	@:overload @:public override public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload @:public override public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload @:public override public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	@:overload @:public override public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload @:public override public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload @:public override public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload @:public override public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload @:public override public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload @:public override public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload @:public override public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload @:public override public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload @:public override public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload @:public override public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload @:public override public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload @:public override public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload @:public override public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload @:public override public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload @:public override public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload @:public override public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload @:public public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	@:overload @:public public function createKeyboardFocusManagerPeer(manager : java.awt.KeyboardFocusManager) : java.awt.peer.KeyboardFocusManagerPeer;
	
	@:overload @:public public function createTrayIcon(target : java.awt.TrayIcon) : java.awt.peer.TrayIconPeer;
	
	@:overload @:public public function createSystemTray(target : java.awt.SystemTray) : java.awt.peer.SystemTrayPeer;
	
	@:overload @:public public function isTraySupported() : Bool;
	
	@:overload @:public public function getGlobalCursorManager() : sun.awt.GlobalCursorManager;
	
	/*
	* Headless toolkit - unsupported.
	*/
	@:overload @:protected override private function loadSystemColors(systemColors : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload @:public override public function getScreenResolution() : Int;
	
	@:overload @:public override public function mapInputMethodHighlight(highlight : java.awt.im.InputMethodHighlight) : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public override public function getMenuShortcutKeyMask() : Int;
	
	@:overload @:public override public function getLockingKeyState(keyCode : Int) : Bool;
	
	@:overload @:public override public function setLockingKeyState(keyCode : Int, on : Bool) : Void;
	
	@:overload @:public override public function createCustomCursor(cursor : java.awt.Image, hotSpot : java.awt.Point, name : String) : java.awt.Cursor;
	
	@:overload @:public override public function getBestCursorSize(preferredWidth : Int, preferredHeight : Int) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumCursorColors() : Int;
	
	@:overload @:public override public function createDragGestureRecognizer<T : java.awt.dnd.DragGestureRecognizer>(abstractRecognizerClass : Class<T>, ds : java.awt.dnd.DragSource, c : java.awt.Component, srcActions : Int, dgl : java.awt.dnd.DragGestureListener) : T;
	
	@:overload @:public public function getScreenHeight() : Int;
	
	@:overload @:public public function getScreenWidth() : Int;
	
	@:overload @:public override public function getScreenSize() : java.awt.Dimension;
	
	@:overload @:public override public function getScreenInsets(gc : java.awt.GraphicsConfiguration) : java.awt.Insets;
	
	@:overload @:public override public function setDynamicLayout(_dynamic : Bool) : Void;
	
	@:overload @:protected override private function isDynamicLayoutSet() : Bool;
	
	@:overload @:public override public function isDynamicLayoutActive() : Bool;
	
	@:overload @:public override public function getSystemClipboard() : java.awt.datatransfer.Clipboard;
	
	/*
	* Printing
	*/
	@:overload @:public override public function getPrintJob(frame : java.awt.Frame, jobtitle : String, jobAttributes : java.awt.JobAttributes, pageAttributes : java.awt.PageAttributes) : java.awt.PrintJob;
	
	@:overload @:public override public function getPrintJob(frame : java.awt.Frame, doctitle : String, props : java.util.Properties) : java.awt.PrintJob;
	
	/*
	* Headless toolkit - supported.
	*/
	@:overload @:public override public function sync() : Void;
	
	@:overload @:public override public function beep() : Void;
	
	/*
	* Event Queue
	*/
	@:overload @:public override public function getSystemEventQueueImpl() : java.awt.EventQueue;
	
	/*
	* Images.
	*/
	@:overload @:public override public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload @:public override public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	@:overload @:public override public function getImage(filename : String) : java.awt.Image;
	
	@:overload @:public override public function getImage(url : java.net.URL) : java.awt.Image;
	
	@:overload @:public override public function createImage(filename : String) : java.awt.Image;
	
	@:overload @:public override public function createImage(url : java.net.URL) : java.awt.Image;
	
	@:overload @:public override public function createImage(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.awt.Image;
	
	@:overload @:public override public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload @:public override public function createImage(imagedata : java.NativeArray<java.StdTypes.Int8>) : java.awt.Image;
	
	/*
	* Fonts
	*/
	@:overload @:public override public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	@:overload @:public override public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload @:public override public function getFontList() : java.NativeArray<String>;
	
	/*
	* Desktop properties
	*/
	@:overload @:public override public function addPropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public override public function removePropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/*
	* Modality
	*/
	@:overload @:public override public function isModalityTypeSupported(modalityType : java.awt.Dialog.Dialog_ModalityType) : Bool;
	
	@:overload @:public override public function isModalExclusionTypeSupported(exclusionType : java.awt.Dialog.Dialog_ModalExclusionType) : Bool;
	
	/*
	* Always on top
	*/
	@:overload @:public override public function isAlwaysOnTopSupported() : Bool;
	
	/*
	* AWT Event listeners
	*/
	@:overload @:public override public function addAWTEventListener(listener : java.awt.event.AWTEventListener, eventMask : haxe.Int64) : Void;
	
	@:overload @:public override public function removeAWTEventListener(listener : java.awt.event.AWTEventListener) : Void;
	
	@:overload @:public override public function getAWTEventListeners() : java.NativeArray<java.awt.event.AWTEventListener>;
	
	@:overload @:public override public function getAWTEventListeners(eventMask : haxe.Int64) : java.NativeArray<java.awt.event.AWTEventListener>;
	
	@:overload @:public public function isDesktopSupported() : Bool;
	
	@:overload @:public override public function createDesktopPeer(target : java.awt.Desktop) : java.awt.peer.DesktopPeer;
	
	@:overload @:public override public function areExtraMouseButtonsEnabled() : Bool;
	
	
}
