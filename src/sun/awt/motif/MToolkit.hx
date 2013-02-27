package sun.awt.motif;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MToolkit extends sun.awt.UNIXToolkit implements java.lang.Runnable
{
	private static var dynamicLayoutSetting : Bool;
	
	@:overload public function new() : Void;
	
	@:overload @:native public function init(mainClassName : String) : Void;
	
	@:overload @:native public function run() : Void;
	
	/*
	* Create peer objects.
	*/
	@:overload override public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload override public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload override public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload override public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload override public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload override public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload override public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload override public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload override public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload override public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload override public function createCanvas(target : java.awt.Canvas) : java.awt.peer.CanvasPeer;
	
	@:overload override public function createPanel(target : java.awt.Panel) : java.awt.peer.PanelPeer;
	
	@:overload override public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload override public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	@:overload override public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload override public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload override public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload override public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload override public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload override public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload override public function createKeyboardFocusManagerPeer(manager : java.awt.KeyboardFocusManager) : java.awt.peer.KeyboardFocusManagerPeer;
	
	@:overload override public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	/*
	* On X, support for dynamic layout on resizing is governed by the
	* window manager.  If the window manager supports it, it happens
	* automatically.  The setter method for this property is
	* irrelevant on X.
	*/
	@:overload override public function setDynamicLayout(b : Bool) : Void;
	
	@:overload override private function isDynamicLayoutSet() : Bool;
	
	/* Called from isDynamicLayoutActive() and from
	* lazilyLoadDynamicLayoutSupportedProperty()
	*/
	@:overload @:native private function isDynamicLayoutSupportedNative() : Bool;
	
	@:overload override public function isDynamicLayoutActive() : Bool;
	
	@:overload @:native override public function isFrameStateSupported(state : Int) : Bool;
	
	@:overload override public function createTrayIcon(target : java.awt.TrayIcon) : java.awt.peer.TrayIconPeer;
	
	@:overload override public function createSystemTray(target : java.awt.SystemTray) : java.awt.peer.SystemTrayPeer;
	
	@:overload override public function isTraySupported() : Bool;
	
	@:overload override public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload @:native override public function getScreenResolution() : Int;
	
	@:overload override public function getScreenInsets(gc : java.awt.GraphicsConfiguration) : java.awt.Insets;
	
	@:overload @:native override private function getScreenWidth() : Int;
	
	@:overload @:native override private function getScreenHeight() : Int;
	
	@:overload override public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload override public function getPrintJob(frame : java.awt.Frame, doctitle : String, props : java.util.Properties) : java.awt.PrintJob;
	
	@:overload override public function getPrintJob(frame : java.awt.Frame, doctitle : String, jobAttributes : java.awt.JobAttributes, pageAttributes : java.awt.PageAttributes) : java.awt.PrintJob;
	
	@:overload @:native override public function beep() : Void;
	
	@:overload override public function getSystemClipboard() : java.awt.datatransfer.Clipboard;
	
	@:overload override public function getSystemSelection() : java.awt.datatransfer.Clipboard;
	
	@:overload override public function getLockingKeyState(key : Int) : Bool;
	
	@:overload @:native public function getLockingKeyStateNative(key : Int) : Bool;
	
	@:overload @:native override public function loadSystemColors(systemColors : java.NativeArray<Int>) : Void;
	
	/**
	* Give native peers the ability to query the native container
	* given a native component (e.g. the direct parent may be lightweight).
	*/
	@:overload public static function getNativeContainer(c : java.awt.Component) : java.awt.Container;
	
	@:overload @:final private static function targetToPeer(target : Dynamic) : Dynamic;
	
	@:overload @:final private static function targetDisposedPeer(target : Dynamic, peer : Dynamic) : Void;
	
	@:overload override public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload override public function createDragGestureRecognizer<T : java.awt.dnd.DragGestureRecognizer>(abstractRecognizerClass : Class<T>, ds : java.awt.dnd.DragSource, c : java.awt.Component, srcActions : Int, dgl : java.awt.dnd.DragGestureListener) : T;
	
	/**
	* Returns a new input method adapter descriptor for native input methods.
	*/
	@:overload override public function getInputMethodAdapterDescriptor() : java.awt.im.spi.InputMethodDescriptor;
	
	/**
	* Returns a style map for the input method highlight.
	*/
	@:overload override public function mapInputMethodHighlight(highlight : java.awt.im.InputMethodHighlight) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Returns a new custom cursor.
	*/
	@:overload override public function createCustomCursor(cursor : java.awt.Image, hotSpot : java.awt.Point, name : String) : java.awt.Cursor;
	
	/**
	* Returns the supported cursor size
	*/
	@:overload override public function getBestCursorSize(preferredWidth : Int, preferredHeight : Int) : java.awt.Dimension;
	
	@:overload override public function getMaximumCursorColors() : Int;
	
	@:overload override private function lazilyLoadDesktopProperty(name : String) : Dynamic;
	
	/*
	* Called from lazilyLoadDesktopProperty because we may not know if
	* the user has quit the previous window manager and started another.
	*/
	@:overload private function lazilyLoadDynamicLayoutSupportedProperty(name : String) : Null<Bool>;
	
	@:overload override private function initializeDesktopProperties() : Void;
	
	@:overload override public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	@:overload override private function needsXEmbedImpl() : Bool;
	
	@:overload override public function isModalityTypeSupported(modalityType : java.awt.Dialog.Dialog_ModalityType) : Bool;
	
	@:overload override public function isModalExclusionTypeSupported(exclusionType : java.awt.Dialog.Dialog_ModalExclusionType) : Bool;
	
	/**
	* @inheritDoc
	*/
	@:overload override private function syncNativeQueue(timeout : haxe.Int64) : Bool;
	
	@:overload override public function grab(w : java.awt.Window) : Void;
	
	@:overload override public function ungrab(w : java.awt.Window) : Void;
	
	@:overload override public function isDesktopSupported() : Bool;
	
	@:overload override public function createDesktopPeer(target : java.awt.Desktop) : java.awt.peer.DesktopPeer;
	
	public static var UNDETERMINED_WM(default, null) : Int;
	
	@:overload public static function getWMID() : Int;
	
	
}
