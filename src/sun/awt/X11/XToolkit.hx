package sun.awt.X11;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XToolkit extends sun.awt.UNIXToolkit implements java.lang.Runnable
{
	@:protected @:static private static var dynamicLayoutSetting : Bool;
	
	@:overload @:public @:static public static function WITH_XERROR_HANDLER(handler : sun.awt.X11.XErrorHandler) : Void;
	
	@:overload @:public @:static public static function RESTORE_XERROR_HANDLER() : Void;
	
	@:overload @:public @:static public static function SAVED_ERROR_HANDLER(display : haxe.Int64, error : sun.awt.X11.XErrorEvent) : Int;
	
	@:overload @:public @:native public function nativeLoadSystemColors(systemColors : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function loadSystemColors(systemColors : java.NativeArray<Int>) : Void;
	
	@:overload @:public @:static public static function getDisplay() : haxe.Int64;
	
	@:overload @:public @:static public static function getDefaultRootWindow() : haxe.Int64;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload @:public override public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload @:public public function addXEventListener(listener : sun.awt.X11.XToolkit.XToolkit_XEventListener) : Void;
	
	@:overload @:public public function run() : Void;
	
	@:overload @:public public function run(loop : Bool) : Void;
	
	@:overload @:protected override private function getScreenWidth() : Int;
	
	@:overload @:protected override private function getScreenHeight() : Int;
	
	/*
	* If we're running in non-Xinerama environment and the current
	* window manager supports _NET protocol then the screen insets
	* are calculated using _NET_WM_WORKAREA property of the root
	* window.
	* Otherwise, i. e. if Xinerama is on or _NET_WM_WORKAREA is
	* not set, we try to calculate the insets ourselves using
	* getScreenInsetsManually method.
	*/
	@:overload @:public override public function getScreenInsets(gc : java.awt.GraphicsConfiguration) : java.awt.Insets;
	
	/*
	@Override
	public void disableBackgroundErase(Canvas canvas) {
	XCanvasPeer peer = (XCanvasPeer)canvas.getPeer();
	if (peer == null) {
	throw new IllegalStateException("Canvas must have a valid peer");
	}
	peer.disableBackgroundErase();
	}
	*/
	@:overload @:protected @:static @:final private static function targetToPeer(target : Dynamic) : Dynamic;
	
	@:overload @:protected @:static @:final private static function targetDisposedPeer(target : Dynamic, peer : Dynamic) : Void;
	
	@:overload @:public override public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	/*
	* On X, support for dynamic layout on resizing is governed by the
	* window manager.  If the window manager supports it, it happens
	* automatically.  The setter method for this property is
	* irrelevant on X.
	*/
	@:overload @:public override public function setDynamicLayout(b : Bool) : Void;
	
	@:overload @:protected override private function isDynamicLayoutSet() : Bool;
	
	/* Called from isDynamicLayoutActive() and from
	* lazilyLoadDynamicLayoutSupportedProperty()
	*/
	@:overload @:protected private function isDynamicLayoutSupported() : Bool;
	
	@:overload @:public override public function isDynamicLayoutActive() : Bool;
	
	@:overload @:public override public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	@:overload @:public override public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload @:public override public function createDragGestureRecognizer<T : java.awt.dnd.DragGestureRecognizer>(recognizerClass : Class<T>, ds : java.awt.dnd.DragSource, c : java.awt.Component, srcActions : Int, dgl : java.awt.dnd.DragGestureListener) : T;
	
	@:overload @:public override public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload @:public override public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload @:public override public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload @:public override public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload @:public override public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload @:public override public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload @:public override public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload @:public override public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload @:public override public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload @:public override public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload @:public override public function createCanvas(target : java.awt.Canvas) : java.awt.peer.CanvasPeer;
	
	@:overload @:public override public function createPanel(target : java.awt.Panel) : java.awt.peer.PanelPeer;
	
	@:overload @:public override public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload @:public override public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	/**
	* Returns the value of "sun.awt.disableGtkFileDialogs" property. Default
	* value is {@code false}.
	*/
	@:overload @:public @:synchronized @:static public static function getSunAwtDisableGtkFileDialogs() : Bool;
	
	@:overload @:public override public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload @:public override public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload @:public override public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload @:public override public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload @:public @:synchronized override public function getMouseInfoPeer() : java.awt.peer.MouseInfoPeer;
	
	@:overload @:public public function createEmbeddedFrame(target : sun.awt.X11.XEmbeddedFrame) : sun.awt.X11.XEmbeddedFramePeer;
	
	@:overload @:public override public function createKeyboardFocusManagerPeer(manager : java.awt.KeyboardFocusManager) : java.awt.peer.KeyboardFocusManagerPeer;
	
	/**
	* Returns a new custom cursor.
	*/
	@:overload @:public override public function createCustomCursor(cursor : java.awt.Image, hotSpot : java.awt.Point, name : String) : java.awt.Cursor;
	
	@:overload @:public override public function createTrayIcon(target : java.awt.TrayIcon) : java.awt.peer.TrayIconPeer;
	
	@:overload @:public override public function createSystemTray(target : java.awt.SystemTray) : java.awt.peer.SystemTrayPeer;
	
	@:overload @:public override public function isTraySupported() : Bool;
	
	/**
	* Returns the supported cursor size
	*/
	@:overload @:public override public function getBestCursorSize(preferredWidth : Int, preferredHeight : Int) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumCursorColors() : Int;
	
	@:overload @:public override public function mapInputMethodHighlight(highlight : java.awt.im.InputMethodHighlight) : java.util.Map<Dynamic, Dynamic>;
	
	@:overload @:public override public function getLockingKeyState(key : Int) : Bool;
	
	@:overload @:public override public function getSystemClipboard() : java.awt.datatransfer.Clipboard;
	
	@:overload @:public override public function getSystemSelection() : java.awt.datatransfer.Clipboard;
	
	@:overload @:public override public function beep() : Void;
	
	@:overload @:public override public function getPrintJob(frame : java.awt.Frame, doctitle : String, props : java.util.Properties) : java.awt.PrintJob;
	
	@:overload @:public override public function getPrintJob(frame : java.awt.Frame, doctitle : String, jobAttributes : java.awt.JobAttributes, pageAttributes : java.awt.PageAttributes) : java.awt.PrintJob;
	
	@:overload @:public override public function getScreenResolution() : Int;
	
	@:overload @:public override public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns a new input method adapter descriptor for native input methods.
	*/
	@:overload @:public override public function getInputMethodAdapterDescriptor() : java.awt.im.spi.InputMethodDescriptor;
	
	@:overload @:public override public function isFrameStateSupported(state : Int) : Bool;
	
	@:overload @:protected override private function initializeDesktopProperties() : Void;
	
	@:overload @:public override public function getNumberOfButtons() : Int;
	
	@:overload @:protected override private function lazilyLoadDesktopProperty(name : String) : Dynamic;
	
	@:overload @:public @:synchronized override public function addPropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/**
	* @see sun.awt.SunToolkit#needsXEmbedImpl
	*/
	@:overload @:protected override private function needsXEmbedImpl() : Bool;
	
	@:overload @:public override public function isModalityTypeSupported(modalityType : java.awt.Dialog.Dialog_ModalityType) : Bool;
	
	@:overload @:public override public function isModalExclusionTypeSupported(exclusionType : java.awt.Dialog.Dialog_ModalExclusionType) : Bool;
	
	@:overload @:public override public function isAlwaysOnTopSupported() : Bool;
	
	@:overload @:public override public function useBufferPerWindow() : Bool;
	
	@:overload @:public @:static public static function getEventNumber() : haxe.Int64;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function syncNativeQueue(timeout : haxe.Int64) : Bool;
	
	@:overload @:public override public function grab(w : java.awt.Window) : Void;
	
	@:overload @:public override public function ungrab(w : java.awt.Window) : Void;
	
	/**
	* Returns if the java.awt.Desktop class is supported on the current
	* desktop.
	* <p>
	* The methods of java.awt.Desktop class are supported on the Gnome desktop.
	* Check if the running desktop is Gnome by checking the window manager.
	*/
	@:overload @:public override public function isDesktopSupported() : Bool;
	
	@:overload @:public override public function createDesktopPeer(target : java.awt.Desktop) : java.awt.peer.DesktopPeer;
	
	@:overload @:public override public function areExtraMouseButtonsEnabled() : Bool;
	
	@:overload @:public override public function isWindowOpacitySupported() : Bool;
	
	@:overload @:public override public function isWindowShapingSupported() : Bool;
	
	@:overload @:public override public function isWindowTranslucencySupported() : Bool;
	
	@:overload @:public override public function isTranslucencyCapable(gc : java.awt.GraphicsConfiguration) : Bool;
	
	/**
	* Returns the value of "sun.awt.disablegrab" property. Default
	* value is {@code false}.
	*/
	@:overload @:public @:static public static function getSunAwtDisableGrab() : Bool;
	
	
}
@:native('sun$awt$X11$XToolkit$XEventListener') extern interface XToolkit_XEventListener
{
	@:overload @:public public function eventProcessed(e : sun.awt.X11.XEvent) : Void;
	
	
}
