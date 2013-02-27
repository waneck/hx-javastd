package sun.awt;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class HToolkit extends sun.awt.SunToolkit implements sun.awt.ComponentFactory
{
	/*
	* HToolkit is a platform independent Toolkit used
	* with the HeadlessToolkit.  It is primarily used
	* in embedded JRE's that do not have sun/awt/X11 classes.
	*/
	@:overload public function new() : Void;
	
	/*
	* Component peer objects - unsupported.
	*/
	@:overload override public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload override public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload override public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	@:overload override public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload override public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload override public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload override public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload override public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload override public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload override public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload override public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload override public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload override public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload override public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload override public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload override public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload override public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload override public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload override public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload override public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	@:overload override public function createKeyboardFocusManagerPeer(manager : java.awt.KeyboardFocusManager) : java.awt.peer.KeyboardFocusManagerPeer;
	
	@:overload override public function createTrayIcon(target : java.awt.TrayIcon) : java.awt.peer.TrayIconPeer;
	
	@:overload override public function createSystemTray(target : java.awt.SystemTray) : java.awt.peer.SystemTrayPeer;
	
	@:overload override public function isTraySupported() : Bool;
	
	@:overload public function getGlobalCursorManager() : sun.awt.GlobalCursorManager;
	
	/*
	* Headless toolkit - unsupported.
	*/
	@:overload override private function loadSystemColors(systemColors : java.NativeArray<Int>) : Void;
	
	@:overload override public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload override public function getScreenResolution() : Int;
	
	@:overload override public function mapInputMethodHighlight(highlight : java.awt.im.InputMethodHighlight) : java.util.Map<Dynamic, Dynamic>;
	
	@:overload override public function getMenuShortcutKeyMask() : Int;
	
	@:overload override public function getLockingKeyState(keyCode : Int) : Bool;
	
	@:overload override public function setLockingKeyState(keyCode : Int, on : Bool) : Void;
	
	@:overload override public function createCustomCursor(cursor : java.awt.Image, hotSpot : java.awt.Point, name : String) : java.awt.Cursor;
	
	@:overload override public function getBestCursorSize(preferredWidth : Int, preferredHeight : Int) : java.awt.Dimension;
	
	@:overload override public function getMaximumCursorColors() : Int;
	
	@:overload override public function createDragGestureRecognizer<T : java.awt.dnd.DragGestureRecognizer>(abstractRecognizerClass : Class<T>, ds : java.awt.dnd.DragSource, c : java.awt.Component, srcActions : Int, dgl : java.awt.dnd.DragGestureListener) : T;
	
	@:overload override public function getScreenHeight() : Int;
	
	@:overload override public function getScreenWidth() : Int;
	
	@:overload override public function getScreenSize() : java.awt.Dimension;
	
	@:overload override public function getScreenInsets(gc : java.awt.GraphicsConfiguration) : java.awt.Insets;
	
	@:overload override public function setDynamicLayout(dynamic : Bool) : Void;
	
	@:overload override private function isDynamicLayoutSet() : Bool;
	
	@:overload override public function isDynamicLayoutActive() : Bool;
	
	@:overload override public function getSystemClipboard() : java.awt.datatransfer.Clipboard;
	
	/*
	* Printing
	*/
	@:overload override public function getPrintJob(frame : java.awt.Frame, jobtitle : String, jobAttributes : java.awt.JobAttributes, pageAttributes : java.awt.PageAttributes) : java.awt.PrintJob;
	
	@:overload override public function getPrintJob(frame : java.awt.Frame, doctitle : String, props : java.util.Properties) : java.awt.PrintJob;
	
	/*
	* Headless toolkit - supported.
	*/
	@:overload override public function sync() : Void;
	
	@:overload override private function syncNativeQueue(timeout : haxe.Int64) : Bool;
	
	@:overload override public function beep() : Void;
	
	/*
	* Fonts
	*/
	@:overload override public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	/*
	* Modality
	*/
	@:overload override public function isModalityTypeSupported(modalityType : java.awt.Dialog.Dialog_ModalityType) : Bool;
	
	@:overload override public function isModalExclusionTypeSupported(exclusionType : java.awt.Dialog.Dialog_ModalExclusionType) : Bool;
	
	@:overload override public function isDesktopSupported() : Bool;
	
	@:overload override public function createDesktopPeer(target : java.awt.Desktop) : java.awt.peer.DesktopPeer;
	
	@:overload public function isWindowOpacityControlSupported() : Bool;
	
	@:overload override public function isWindowShapingSupported() : Bool;
	
	@:overload override public function isWindowTranslucencySupported() : Bool;
	
	@:overload override public function grab(w : java.awt.Window) : Void;
	
	@:overload override public function ungrab(w : java.awt.Window) : Void;
	
	@:overload private function syncNativeQueue() : Bool;
	
	@:overload override public function getInputMethodAdapterDescriptor() : java.awt.im.spi.InputMethodDescriptor;
	
	
}
