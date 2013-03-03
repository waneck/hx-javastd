package sun.awt;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SunToolkit extends java.awt.Toolkit implements sun.awt.WindowClosingSupport implements sun.awt.WindowClosingListener implements sun.awt.ComponentFactory implements sun.awt.InputMethodSupport implements sun.awt.KeyboardFocusManagerPeerProvider
{
	/**
	* Special mask for the UngrabEvent events, in addition to the
	* public masks defined in AWTEvent.  Should be used as the mask
	* value for Toolkit.addAWTEventListener.
	*/
	@:public @:static @:final public static var GRAB_EVENT_MASK(default, null) : Int;
	
	/**
	* Number of buttons.
	* By default it's taken from the system. If system value does not
	* fit into int type range, use our own MAX_BUTTONS_SUPPORT value.
	*/
	@:protected @:static private static var numberOfButtons : Int;
	
	/* XFree standard mention 24 buttons as maximum:
	* http://www.xfree86.org/current/mouse.4.html
	* We workaround systems supporting more than 24 buttons.
	* Otherwise, we have to use long type values as masks
	* which leads to API change.
	* InputEvent.BUTTON_DOWN_MASK may contain only 21 masks due to
	* the 4-bytes limit for the int type. (CR 6799099)
	* One more bit is reserved for FIRST_HIGH_BIT.
	*/
	@:public @:final @:static public static var MAX_BUTTONS_SUPPORTED(default, null) : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function useBufferPerWindow() : Bool;
	
	@:overload @:public @:abstract override public function createWindow(target : java.awt.Window) : java.awt.peer.WindowPeer;
	
	@:overload @:public @:abstract override public function createFrame(target : java.awt.Frame) : java.awt.peer.FramePeer;
	
	@:overload @:public @:abstract override public function createDialog(target : java.awt.Dialog) : java.awt.peer.DialogPeer;
	
	@:overload @:public @:abstract override public function createButton(target : java.awt.Button) : java.awt.peer.ButtonPeer;
	
	@:overload @:public @:abstract override public function createTextField(target : java.awt.TextField) : java.awt.peer.TextFieldPeer;
	
	@:overload @:public @:abstract override public function createChoice(target : java.awt.Choice) : java.awt.peer.ChoicePeer;
	
	@:overload @:public @:abstract override public function createLabel(target : java.awt.Label) : java.awt.peer.LabelPeer;
	
	@:overload @:public @:abstract override public function createList(target : java.awt.List) : java.awt.peer.ListPeer;
	
	@:overload @:public @:abstract override public function createCheckbox(target : java.awt.Checkbox) : java.awt.peer.CheckboxPeer;
	
	@:overload @:public @:abstract override public function createScrollbar(target : java.awt.Scrollbar) : java.awt.peer.ScrollbarPeer;
	
	@:overload @:public @:abstract override public function createScrollPane(target : java.awt.ScrollPane) : java.awt.peer.ScrollPanePeer;
	
	@:overload @:public @:abstract override public function createTextArea(target : java.awt.TextArea) : java.awt.peer.TextAreaPeer;
	
	@:overload @:public @:abstract override public function createFileDialog(target : java.awt.FileDialog) : java.awt.peer.FileDialogPeer;
	
	@:overload @:public @:abstract override public function createMenuBar(target : java.awt.MenuBar) : java.awt.peer.MenuBarPeer;
	
	@:overload @:public @:abstract override public function createMenu(target : java.awt.Menu) : java.awt.peer.MenuPeer;
	
	@:overload @:public @:abstract override public function createPopupMenu(target : java.awt.PopupMenu) : java.awt.peer.PopupMenuPeer;
	
	@:overload @:public @:abstract override public function createMenuItem(target : java.awt.MenuItem) : java.awt.peer.MenuItemPeer;
	
	@:overload @:public @:abstract override public function createCheckboxMenuItem(target : java.awt.CheckboxMenuItem) : java.awt.peer.CheckboxMenuItemPeer;
	
	@:overload @:public @:abstract override public function createDragSourceContextPeer(dge : java.awt.dnd.DragGestureEvent) : java.awt.dnd.peer.DragSourceContextPeer;
	
	@:overload @:public @:abstract public function createTrayIcon(target : java.awt.TrayIcon) : java.awt.peer.TrayIconPeer;
	
	@:overload @:public @:abstract public function createSystemTray(target : java.awt.SystemTray) : java.awt.peer.SystemTrayPeer;
	
	@:overload @:public @:abstract public function isTraySupported() : Bool;
	
	@:overload @:public @:abstract override public function getFontPeer(name : String, style : Int) : java.awt.peer.FontPeer;
	
	@:overload @:public @:abstract public function createRobot(target : java.awt.Robot, screen : java.awt.GraphicsDevice) : java.awt.peer.RobotPeer;
	
	@:overload @:public @:abstract public function createKeyboardFocusManagerPeer(manager : java.awt.KeyboardFocusManager) : java.awt.peer.KeyboardFocusManagerPeer;
	
	@:overload @:public @:static @:final public static function awtLock() : Void;
	
	@:overload @:public @:static @:final public static function awtTryLock() : Bool;
	
	@:overload @:public @:static @:final public static function awtUnlock() : Void;
	
	@:overload @:public @:static @:final public static function awtLockWait() : Void;
	
	@:overload @:public @:static @:final public static function awtLockWait(timeout : haxe.Int64) : Void;
	
	@:overload @:public @:static @:final public static function awtLockNotify() : Void;
	
	@:overload @:public @:static @:final public static function awtLockNotifyAll() : Void;
	
	@:overload @:public @:static @:final public static function isAWTLockHeldByCurrentThread() : Bool;
	
	/*
	* Create a new AppContext, along with its EventQueue, for a
	* new ThreadGroup.  Browser code, for example, would use this
	* method to create an AppContext & EventQueue for an Applet.
	*/
	@:overload @:public @:static public static function createNewAppContext() : sun.awt.AppContext;
	
	/*
	* Fetch the peer associated with the given target (as specified
	* in the peer creation method).  This can be used to determine
	* things like what the parent peer is.  If the target is null
	* or the target can't be found (either because the a peer was
	* never created for it or the peer was disposed), a null will
	* be returned.
	*/
	@:overload @:protected @:static private static function targetToPeer(target : Dynamic) : Dynamic;
	
	@:overload @:protected @:static private static function targetCreatedPeer(target : Dynamic, peer : Dynamic) : Void;
	
	@:overload @:protected @:static private static function targetDisposedPeer(target : Dynamic, peer : Dynamic) : Void;
	
	/*
	* Fetch the AppContext associated with the given target.
	* This can be used to determine things like which EventQueue
	* to use for posting events to a Component.  If the target is
	* null or the target can't be found, a null with be returned.
	*/
	@:overload @:public @:static public static function targetToAppContext(target : Dynamic) : sun.awt.AppContext;
	
	/**
	* Sets the synchronous status of focus requests on lightweight
	* components in the specified window to the specified value.
	* If the boolean parameter is <code>true</code> then the focus
	* requests on lightweight components will be performed
	* synchronously, if it is <code>false</code>, then asynchronously.
	* By default, all windows have their lightweight request status
	* set to asynchronous.
	* <p>
	* The application can only set the status of lightweight focus
	* requests to synchronous for any of its windows if it doesn't
	* perform focus transfers between different heavyweight containers.
	* In this case the observable focus behaviour is the same as with
	* asynchronous status.
	* <p>
	* If the application performs focus transfer between different
	* heavyweight containers and sets the lightweight focus request
	* status to synchronous for any of its windows, then further focus
	* behaviour is unspecified.
	* <p>
	* @param    w window for which the lightweight focus request status
	*             should be set
	* @param    status the value of lightweight focus request status
	*/
	@:overload @:public @:static public static function setLWRequestStatus(changed : java.awt.Window, status : Bool) : Void;
	
	@:overload @:public @:static public static function checkAndSetPolicy(cont : java.awt.Container) : Void;
	
	/*
	* Insert a mapping from target to AppContext, for later retrieval
	* via targetToAppContext() above.
	*/
	@:overload @:public @:static public static function insertTargetMapping(target : Dynamic, appContext : sun.awt.AppContext) : Void;
	
	/*
	* Post an AWTEvent to the Java EventQueue, using the PostEventQueue
	* to avoid possibly calling client code (EventQueueSubclass.postEvent())
	* on the toolkit (AWT-Windows/AWT-Motif) thread.  This function should
	* not be called under another lock since it locks the EventQueue.
	* See bugids 4632918, 4526597.
	*/
	@:overload @:public @:static public static function postEvent(appContext : sun.awt.AppContext, event : java.awt.AWTEvent) : Void;
	
	/*
	* Post AWTEvent of high priority.
	*/
	@:overload @:public @:static public static function postPriorityEvent(e : java.awt.AWTEvent) : Void;
	
	@:protected @:static @:final private static var flushLock(default, null) : java.util.concurrent.locks.Lock;
	
	/*
	* Flush any pending events which haven't been posted to the AWT
	* EventQueue yet.
	*/
	@:overload @:public @:static public static function flushPendingEvents() : Void;
	
	@:overload @:public @:static public static function isPostEventQueueEmpty() : Bool;
	
	/*
	* Execute a chunk of code on the Java event handler thread for the
	* given target.  Does not wait for the execution to occur before
	* returning to the caller.
	*/
	@:overload @:public @:static public static function executeOnEventHandlerThread(target : Dynamic, runnable : java.lang.Runnable) : Void;
	
	/*
	* Fixed 5064013: the InvocationEvent time should be equals
	* the time of the ActionEvent
	*/
	@:overload @:public @:static public static function executeOnEventHandlerThread(target : Dynamic, runnable : java.lang.Runnable, when : haxe.Int64) : Void;
	
	/*
	* Execute a chunk of code on the Java event handler thread for the
	* given target.  Does not wait for the execution to occur before
	* returning to the caller.
	*/
	@:overload @:public @:static public static function executeOnEventHandlerThread(peerEvent : sun.awt.PeerEvent) : Void;
	
	/*
	* Execute a chunk of code on the Java event handler thread. The
	* method takes into account provided AppContext and sets
	* <code>SunToolkit.getDefaultToolkit()</code> as a target of the
	* event. See 6451487 for detailes.
	* Does not wait for the execution to occur before returning to
	* the caller.
	*/
	@:overload @:public @:static public static function invokeLaterOnAppContext(appContext : sun.awt.AppContext, dispatcher : java.lang.Runnable) : Void;
	
	/*
	* Execute a chunk of code on the Java event handler thread for the
	* given target.  Waits for the execution to occur before returning
	* to the caller.
	*/
	@:overload @:public @:static public static function executeOnEDTAndWait(target : Dynamic, runnable : java.lang.Runnable) : Void;
	
	/*
	* Returns true if the calling thread is the event dispatch thread
	* contained within AppContext which associated with the given target.
	* Use this call to ensure that a given task is being executed
	* (or not being) on the event dispatch thread for the given target.
	*/
	@:overload @:public @:static public static function isDispatchThreadForAppContext(target : Dynamic) : Bool;
	
	@:overload @:public override public function getScreenSize() : java.awt.Dimension;
	
	@:overload @:protected @:abstract private function getScreenWidth() : Int;
	
	@:overload @:protected @:abstract private function getScreenHeight() : Int;
	
	@:overload @:public override public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload @:public override public function getFontList() : java.NativeArray<String>;
	
	@:overload @:public override public function createPanel(target : java.awt.Panel) : java.awt.peer.PanelPeer;
	
	@:overload @:public override public function createCanvas(target : java.awt.Canvas) : java.awt.peer.CanvasPeer;
	
	/**
	* Disables erasing of background on the canvas before painting if
	* this is supported by the current toolkit. It is recommended to
	* call this method early, before the Canvas becomes displayable,
	* because some Toolkit implementations do not support changing
	* this property once the Canvas becomes displayable.
	*/
	@:overload @:public public function disableBackgroundErase(canvas : java.awt.Canvas) : Void;
	
	/**
	* Disables the native erasing of the background on the given
	* component before painting if this is supported by the current
	* toolkit. This only has an effect for certain components such as
	* Canvas, Panel and Window. It is recommended to call this method
	* early, before the Component becomes displayable, because some
	* Toolkit implementations do not support changing this property
	* once the Component becomes displayable.
	*/
	@:overload @:public public function disableBackgroundErase(component : java.awt.Component) : Void;
	
	/**
	* Returns the value of "sun.awt.noerasebackground" property. Default
	* value is {@code false}.
	*/
	@:overload @:public @:static public static function getSunAwtNoerasebackground() : Bool;
	
	/**
	* Returns the value of "sun.awt.erasebackgroundonresize" property. Default
	* value is {@code false}.
	*/
	@:overload @:public @:static public static function getSunAwtErasebackgroundonresize() : Bool;
	
	@:overload @:public override public function getImage(filename : String) : java.awt.Image;
	
	@:overload @:public override public function getImage(url : java.net.URL) : java.awt.Image;
	
	@:overload @:public override public function createImage(filename : String) : java.awt.Image;
	
	@:overload @:public override public function createImage(url : java.net.URL) : java.awt.Image;
	
	@:overload @:public override public function createImage(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.awt.Image;
	
	@:overload @:public override public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload @:public override public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload @:public override public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	/**
	* Scans {@code imageList} for best-looking image of specified dimensions.
	* Image can be scaled and/or padded with transparency.
	*/
	@:overload @:public @:static public static function getScaledIconImage(imageList : java.util.List<java.awt.Image>, width : Int, height : Int) : java.awt.image.BufferedImage;
	
	@:overload @:public @:static public static function getScaledIconData(imageList : java.util.List<java.awt.Image>, width : Int, height : Int) : java.awt.image.DataBufferInt;
	
	@:overload @:protected override private function getSystemEventQueueImpl() : java.awt.EventQueue;
	
	@:overload @:public @:static public static function getSystemEventQueueImplPP(appContext : sun.awt.AppContext) : java.awt.EventQueue;
	
	/**
	* Give native peers the ability to query the native container
	* given a native component (eg the direct parent may be lightweight).
	*/
	@:overload @:public @:static public static function getNativeContainer(c : java.awt.Component) : java.awt.Container;
	
	/**
	* Gives native peers the ability to query the closest HW component.
	* If the given component is heavyweight, then it returns this. Otherwise,
	* it goes one level up in the hierarchy and tests next component.
	*/
	@:overload @:public @:static public static function getHeavyweightComponent(c : java.awt.Component) : java.awt.Component;
	
	/**
	* Returns key modifiers used by Swing to set up a focus accelerator key stroke.
	*/
	@:overload @:public public function getFocusAcceleratorKeyMask() : Int;
	
	/**
	* Tests whether specified key modifiers mask can be used to enter a printable
	* character. This is a default implementation of this method, which reflects
	* the way things work on Windows: here, pressing ctrl + alt allows user to enter
	* characters from the extended character set (like euro sign or math symbols)
	*/
	@:overload @:public public function isPrintableCharacterModifiersMask(mods : Int) : Bool;
	
	/**
	* Returns whether popup is allowed to be shown above the task bar.
	* This is a default implementation of this method, which checks
	* corresponding security permission.
	*/
	@:overload @:public public function canPopupOverlapTaskBar() : Bool;
	
	/**
	* Returns a new input method window, with behavior as specified in
	* {@link java.awt.im.spi.InputMethodContext#createInputMethodWindow}.
	* If the inputContext is not null, the window should return it from its
	* getInputContext() method. The window needs to implement
	* sun.awt.im.InputMethodWindow.
	* <p>
	* SunToolkit subclasses can override this method to return better input
	* method windows.
	*/
	@:overload @:public public function createInputMethodWindow(title : String, context : sun.awt.im.InputContext) : java.awt.Window;
	
	/**
	* Returns whether enableInputMethods should be set to true for peered
	* TextComponent instances on this platform. False by default.
	*/
	@:overload @:public public function enableInputMethodsForTextComponent() : Bool;
	
	/**
	* Returns the locale in which the runtime was started.
	*/
	@:overload @:public @:static public static function getStartupLocale() : java.util.Locale;
	
	/**
	* Returns the default keyboard locale of the underlying operating system
	*/
	@:overload @:public public function getDefaultKeyboardLocale() : java.util.Locale;
	
	@:overload @:protected @:static private static function setDataTransfererClassName(className : String) : Void;
	
	@:overload @:public @:static public static function getDataTransfererClassName() : String;
	
	/**
	* @see sun.awt.WindowClosingSupport#getWindowClosingListener
	*/
	@:overload @:public public function getWindowClosingListener() : sun.awt.WindowClosingListener;
	
	/**
	* @see sun.awt.WindowClosingSupport#setWindowClosingListener
	*/
	@:overload @:public public function setWindowClosingListener(wcl : sun.awt.WindowClosingListener) : Void;
	
	/**
	* @see sun.awt.WindowClosingListener#windowClosingNotify
	*/
	@:overload @:public public function windowClosingNotify(event : java.awt.event.WindowEvent) : java.lang.RuntimeException;
	
	/**
	* @see sun.awt.WindowClosingListener#windowClosingDelivered
	*/
	@:overload @:public public function windowClosingDelivered(event : java.awt.event.WindowEvent) : java.lang.RuntimeException;
	
	@:overload @:protected @:synchronized override private function getMouseInfoPeer() : java.awt.peer.MouseInfoPeer;
	
	/**
	* Returns whether default toolkit needs the support of the xembed
	* from embedding host(if any).
	* @return <code>true</code>, if XEmbed is needed, <code>false</code> otherwise
	*/
	@:overload @:public @:static public static function needsXEmbed() : Bool;
	
	/**
	* Returns whether this toolkit needs the support of the xembed
	* from embedding host(if any).
	* @return <code>true</code>, if XEmbed is needed, <code>false</code> otherwise
	*/
	@:overload @:protected private function needsXEmbedImpl() : Bool;
	
	/**
	* Returns whether the XEmbed server feature is requested by
	* developer.  If true, Toolkit should return an
	* XEmbed-server-enabled CanvasPeer instead of the ordinary CanvasPeer.
	*/
	@:overload @:protected @:final private function isXEmbedServerRequested() : Bool;
	
	/**
	* Returns whether the modal exclusion API is supported by the current toolkit.
	* When it isn't supported, calling <code>setModalExcluded</code> has no
	* effect, and <code>isModalExcluded</code> returns false for all windows.
	*
	* @return true if modal exclusion is supported by the toolkit, false otherwise
	*
	* @see sun.awt.SunToolkit#setModalExcluded(java.awt.Window)
	* @see sun.awt.SunToolkit#isModalExcluded(java.awt.Window)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function isModalExcludedSupported() : Bool;
	
	/*
	* Default implementation for isModalExcludedSupportedImpl(), returns false.
	*
	* @see sun.awt.windows.WToolkit#isModalExcludeSupportedImpl
	* @see sun.awt.X11.XToolkit#isModalExcludeSupportedImpl
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function isModalExcludedSupportedImpl() : Bool;
	
	/*
	* Sets this window to be excluded from being modally blocked. When the
	* toolkit supports modal exclusion and this method is called, input
	* events, focus transfer and z-order will continue to work for the
	* window, it's owned windows and child components, even in the
	* presence of a modal dialog.
	* For details on which <code>Window</code>s are normally blocked
	* by modal dialog, see {@link java.awt.Dialog}.
	* Invoking this method when the modal exclusion API is not supported by
	* the current toolkit has no effect.
	* @param window Window to be marked as not modally blocked
	* @see java.awt.Dialog
	* @see java.awt.Dialog#setModal(boolean)
	* @see sun.awt.SunToolkit#isModalExcludedSupported
	* @see sun.awt.SunToolkit#isModalExcluded(java.awt.Window)
	*/
	@:overload @:public @:static public static function setModalExcluded(window : java.awt.Window) : Void;
	
	/*
	* Returns whether the specified window is blocked by modal dialogs.
	* If the modal exclusion API isn't supported by the current toolkit,
	* it returns false for all windows.
	*
	* @param window Window to test for modal exclusion
	*
	* @return true if the window is modal excluded, false otherwise. If
	* the modal exclusion isn't supported by the current Toolkit, false
	* is returned
	*
	* @see sun.awt.SunToolkit#isModalExcludedSupported
	* @see sun.awt.SunToolkit#setModalExcluded(java.awt.Window)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function isModalExcluded(window : java.awt.Window) : Bool;
	
	/**
	* Overridden in XToolkit and WToolkit
	*/
	@:overload @:public override public function isModalityTypeSupported(modalityType : java.awt.Dialog.Dialog_ModalityType) : Bool;
	
	/**
	* Overridden in XToolkit and WToolkit
	*/
	@:overload @:public override public function isModalExclusionTypeSupported(exclusionType : java.awt.Dialog.Dialog_ModalExclusionType) : Bool;
	
	@:overload @:public public function addModalityListener(listener : sun.awt.ModalityListener) : Void;
	
	@:overload @:public public function removeModalityListener(listener : sun.awt.ModalityListener) : Void;
	
	@:overload @:public public function notifyModalityPushed(dialog : java.awt.Dialog) : Void;
	
	@:overload @:public public function notifyModalityPopped(dialog : java.awt.Dialog) : Void;
	
	@:overload @:public @:static public static function isLightweightOrUnknown(comp : java.awt.Component) : Bool;
	
	@:public @:static @:final public static var DEFAULT_WAIT_TIME(default, null) : Int;
	
	/**
	* Parameterless version of realsync which uses default timout (see DEFAUL_WAIT_TIME).
	*/
	@:overload @:public public function realSync() : Void;
	
	/**
	* Forces toolkit to synchronize with the native windowing
	* sub-system, flushing all pending work and waiting for all the
	* events to be processed.  This method guarantees that after
	* return no additional Java events will be generated, unless
	* cause by user. Obviously, the method cannot be used on the
	* event dispatch thread (EDT). In case it nevertheless gets
	* invoked on this thread, the method throws the
	* IllegalThreadException runtime exception.
	*
	* <p> This method allows to write tests without explicit timeouts
	* or wait for some event.  Example:
	* <code>
	* Frame f = ...;
	* f.setVisible(true);
	* ((SunToolkit)Toolkit.getDefaultToolkit()).realSync();
	* </code>
	*
	* <p> After realSync, <code>f</code> will be completely visible
	* on the screen, its getLocationOnScreen will be returning the
	* right result and it will be the focus owner.
	*
	* <p> Another example:
	* <code>
	* b.requestFocus();
	* ((SunToolkit)Toolkit.getDefaultToolkit()).realSync();
	* </code>
	*
	* <p> After realSync, <code>b</code> will be focus owner.
	*
	* <p> Notice that realSync isn't guaranteed to work if recurring
	* actions occur, such as if during processing of some event
	* another request which may generate some events occurs.  By
	* default, sync tries to perform as much as {@value MAX_ITERS}
	* cycles of event processing, allowing for roughly {@value
	* MAX_ITERS} additional requests.
	*
	* <p> For example, requestFocus() generates native request, which
	* generates one or two Java focus events, which then generate a
	* serie of paint events, a serie of Java focus events, which then
	* generate a serie of paint events which then are processed -
	* three cycles, minimum.
	*
	* @param timeout the maximum time to wait in milliseconds, negative means "forever".
	*/
	@:overload @:public public function realSync(timeout : haxe.Int64) : Void;
	
	/**
	* Platform toolkits need to implement this method to perform the
	* sync of the native queue.  The method should wait until native
	* requests are processed, all native events are processed and
	* corresponding Java events are generated.  Should return
	* <code>true</code> if some events were processed,
	* <code>false</code> otherwise.
	*/
	@:overload @:protected @:abstract private function syncNativeQueue(timeout : haxe.Int64) : Bool;
	
	/**
	* Waits for the Java event queue to empty.  Ensures that all
	* events are processed (including paint events), and that if
	* recursive events were generated, they are also processed.
	* Should return <code>true</code> if more processing is
	* necessary, <code>false</code> otherwise.
	*/
	@:overload @:protected @:final private function waitForIdle(timeout : haxe.Int64) : Bool;
	
	/**
	* Grabs the mouse input for the given window.  The window must be
	* visible.  The window or its children do not receive any
	* additional mouse events besides those targeted to them.  All
	* other events will be dispatched as before - to the respective
	* targets.  This Window will receive UngrabEvent when automatic
	* ungrab is about to happen.  The event can be listened to by
	* installing AWTEventListener with WINDOW_EVENT_MASK.  See
	* UngrabEvent class for the list of conditions when ungrab is
	* about to happen.
	* @see UngrabEvent
	*/
	@:overload @:public @:abstract public function grab(w : java.awt.Window) : Void;
	
	/**
	* Forces ungrab.  No event will be sent.
	*/
	@:overload @:public @:abstract public function ungrab(w : java.awt.Window) : Void;
	
	/**
	* Locates the splash screen library in a platform dependent way and closes
	* the splash screen. Should be invoked on first top-level frame display.
	* @see java.awt.SplashScreen
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static @:native public static function closeSplashScreen() : Void;
	
	/* Since Swing is the reason for this "extra condition" logic its
	* worth documenting it in some detail.
	* First, a goal is for Swing and applications to both retrieve and
	* use the same desktop property value so that there is complete
	* consistency between the settings used by JDK's Swing implementation
	* and 3rd party custom Swing components, custom L&Fs and any general
	* text rendering that wants to be consistent with these.
	* But by default on Solaris & Linux Swing will not use AA text over
	* remote X11 display (unless Xrender can be used which is TBD and may not
	* always be available anyway) as that is a noticeable performance hit.
	* So there needs to be a way to express that extra condition so that
	* it is seen by all clients of the desktop property API.
	* If this were the only condition it could be handled here as it would
	* be the same for any L&F and could reasonably be considered to be
	* a static behaviour of those systems.
	* But GTK currently has an additional test based on locale which is
	* not applied by Metal. So mixing GTK in a few locales with Metal
	* would mean the last one wins.
	* This could be stored per-app context which would work
	* for different applets, but wouldn't help for a single application
	* using GTK and some other L&F concurrently.
	* But it is expected this will be addressed within GTK and the font
	* system so is a temporary and somewhat unlikely harmless corner case.
	*/
	@:overload @:public @:static public static function setAAFontSettingsCondition(extraCondition : Bool) : Void;
	
	/* A variable defined for the convenience of JDK code */
	@:public @:static @:final public static var DESKTOPFONTHINTS(default, null) : String;
	
	/* Overridden by subclasses to return platform/desktop specific values */
	@:overload @:protected private function getDesktopAAHints() : java.awt.RenderingHints;
	
	/* Subclass desktop property loading methods call this which
	* in turn calls the appropriate subclass implementation of
	* getDesktopAAHints() when system settings are being used.
	* Its public rather than protected because subclasses may delegate
	* to a helper class.
	*/
	@:overload @:public @:static public static function getDesktopFontHints() : java.awt.RenderingHints;
	
	@:overload @:public @:abstract public function isDesktopSupported() : Bool;
	
	/*
	* consumeNextKeyTyped() method is not currently used,
	* however Swing could use it in the future.
	*/
	@:overload @:public @:static @:synchronized public static function consumeNextKeyTyped(keyEvent : java.awt.event.KeyEvent) : Void;
	
	@:overload @:protected @:static private static function dumpPeers(aLog : sun.util.logging.PlatformLogger) : Void;
	
	/**
	* Returns the <code>Window</code> ancestor of the component <code>comp</code>.
	* @return Window ancestor of the component or component by itself if it is Window;
	*         null, if component is not a part of window hierarchy
	*/
	@:overload @:public @:static public static function getContainingWindow(comp : java.awt.Component) : java.awt.Window;
	
	/**
	* Returns the value of "sun.awt.disableMixing" property. Default
	* value is {@code false}.
	*/
	@:overload @:public @:synchronized @:static public static function getSunAwtDisableMixing() : Bool;
	
	/**
	* Returns true if the native GTK libraries are available.  The
	* default implementation returns false, but UNIXToolkit overrides this
	* method to provide a more specific answer.
	*/
	@:overload @:public public function isNativeGTKAvailable() : Bool;
	
	@:overload @:public @:synchronized public function setWindowDeactivationTime(w : java.awt.Window, time : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function getWindowDeactivationTime(w : java.awt.Window) : haxe.Int64;
	
	@:overload @:public public function isWindowOpacitySupported() : Bool;
	
	@:overload @:public public function isWindowShapingSupported() : Bool;
	
	@:overload @:public public function isWindowTranslucencySupported() : Bool;
	
	@:overload @:public public function isTranslucencyCapable(gc : java.awt.GraphicsConfiguration) : Bool;
	
	/**
	* Returns whether or not a containing top level window for the passed
	* component is
	* {@link GraphicsDevice.WindowTranslucency#PERPIXEL_TRANSLUCENT PERPIXEL_TRANSLUCENT}.
	*
	* @param c a Component which toplevel's to check
	* @return {@code true}  if the passed component is not null and has a
	* containing toplevel window which is opaque (so per-pixel translucency
	* is not enabled), {@code false} otherwise
	* @see GraphicsDevice.WindowTranslucency#PERPIXEL_TRANSLUCENT
	*/
	@:overload @:public @:static public static function isContainingTopLevelOpaque(c : java.awt.Component) : Bool;
	
	/**
	* Returns whether or not a containing top level window for the passed
	* component is
	* {@link GraphicsDevice.WindowTranslucency#TRANSLUCENT TRANSLUCENT}.
	*
	* @param c a Component which toplevel's to check
	* @return {@code true} if the passed component is not null and has a
	* containing toplevel window which has opacity less than
	* 1.0f (which means that it is translucent), {@code false} otherwise
	* @see GraphicsDevice.WindowTranslucency#TRANSLUCENT
	*/
	@:overload @:public @:static public static function isContainingTopLevelTranslucent(c : java.awt.Component) : Bool;
	
	/**
	* Returns whether the native system requires using the peer.updateWindow()
	* method to update the contents of a non-opaque window, or if usual
	* painting procedures are sufficient. The default return value covers
	* the X11 systems. On MS Windows this method is overriden in WToolkit
	* to return true.
	*/
	@:overload @:public public function needUpdateWindow() : Bool;
	
	/**
	* Descendants of the SunToolkit should override and put their own logic here.
	*/
	@:overload @:public public function getNumberOfButtons() : Int;
	
	/**
	* Checks that the given object implements/extends the given
	* interface/class.
	*
	* Note that using the instanceof operator causes a class to be loaded.
	* Using this method doesn't load a class and it can be used instead of
	* the instanceof operator for performance reasons.
	*
	* @param obj Object to be checked
	* @param type The name of the interface/class. Must be
	* fully-qualified interface/class name.
	* @return true, if this object implements/extends the given
	*         interface/class, false, otherwise, or if obj or type is null
	*/
	@:overload @:public @:static public static function isInstanceOf(obj : Dynamic, type : String) : Bool;
	
	@:overload @:public @:static public static function setSystemGenerated(e : java.awt.AWTEvent) : Void;
	
	@:overload @:public @:static public static function isSystemGenerated(e : java.awt.AWTEvent) : Bool;
	
	/**
	* Returns a new input method adapter descriptor for native input methods.
	*/
	@:overload @:public public function getInputMethodAdapterDescriptor() : java.awt.im.spi.InputMethodDescriptor;
	
	
}
@:native('sun$awt$SunToolkit$ModalityListenerList') @:internal extern class SunToolkit_ModalityListenerList implements sun.awt.ModalityListener
{
	@:overload @:public public function modalityPushed(ev : sun.awt.ModalityEvent) : Void;
	
	@:overload @:public public function modalityPopped(ev : sun.awt.ModalityEvent) : Void;
	
	
}
@:native('sun$awt$SunToolkit$OperationTimedOut') extern class SunToolkit_OperationTimedOut extends java.lang.RuntimeException
{
	@:overload @:public public function new(msg : String) : Void;
	
	@:overload @:public public function new() : Void;
	
	
}
@:native('sun$awt$SunToolkit$InfiniteLoop') extern class SunToolkit_InfiniteLoop extends java.lang.RuntimeException
{
	
}
@:native('sun$awt$SunToolkit$IllegalThreadException') extern class SunToolkit_IllegalThreadException extends java.lang.RuntimeException
{
	@:overload @:public public function new(msg : String) : Void;
	
	@:overload @:public public function new() : Void;
	
	
}
@:internal extern class PostEventQueue
{
	@:overload @:public @:synchronized public function noEvents() : Bool;
	
	/*
	* Continually post pending AWTEvents to the Java EventQueue. The method
	* is synchronized to ensure the flush is completed before a new event
	* can be posted to this queue.
	*
	* 7177040: The method couldn't be wholly synchronized because of calls
	* of EventQueue.postEvent() that uses pushPopLock, otherwise it could
	* potentially lead to deadlock
	*/
	@:overload @:public public function flush() : Void;
	
	
}
