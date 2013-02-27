package sun.applet;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AppletPanel extends java.awt.Panel implements java.applet.AppletStub implements java.lang.Runnable
{
	/**
	* The applet (if loaded).
	*/
	private var applet : java.applet.Applet;
	
	/**
	* Applet will allow initialization.  Should be
	* set to false if loading a serialized applet
	* that was pickled in the init=true state.
	*/
	private var doInit : Bool;
	
	/**
	* The classloader for the applet.
	*/
	private var loader : sun.applet.AppletClassLoader;
	
	/* applet event ids */
	public static var APPLET_DISPOSE(default, null) : Int;
	
	public static var APPLET_LOAD(default, null) : Int;
	
	public static var APPLET_INIT(default, null) : Int;
	
	public static var APPLET_START(default, null) : Int;
	
	public static var APPLET_STOP(default, null) : Int;
	
	public static var APPLET_DESTROY(default, null) : Int;
	
	public static var APPLET_QUIT(default, null) : Int;
	
	public static var APPLET_ERROR(default, null) : Int;
	
	/* send to the parent to force relayout */
	public static var APPLET_RESIZE(default, null) : Int;
	
	/* sent to a (distant) parent to indicate that the applet is being
	* loaded or as completed loading
	*/
	public static var APPLET_LOADING(default, null) : Int;
	
	public static var APPLET_LOADING_COMPLETED(default, null) : Int;
	
	/**
	* The current status. One of:
	*    APPLET_DISPOSE,
	*    APPLET_LOAD,
	*    APPLET_INIT,
	*    APPLET_START,
	*    APPLET_STOP,
	*    APPLET_DESTROY,
	*    APPLET_ERROR.
	*/
	private var status : Int;
	
	/**
	* The thread for the applet.
	*/
	private var handler : java.lang.Thread;
	
	/* abstract classes */
	@:overload @:abstract private function getCode() : String;
	
	@:overload @:abstract private function getJarFiles() : String;
	
	@:overload @:abstract private function getSerializedObject() : String;
	
	@:overload @:abstract override public function getWidth() : Int;
	
	@:overload @:abstract override public function getHeight() : Int;
	
	@:overload @:abstract public function hasInitialFocus() : Bool;
	
	@:overload private function setupAppletAppContext() : Void;
	
	/*
	* Creates a thread to run the applet. This method is called
	* each time an applet is loaded and reloaded.
	*/
	@:overload @:synchronized private function createAppletThread() : Void;
	
	/**
	* Construct an applet viewer and start the applet.
	*/
	@:overload public function init() : Void;
	
	/**
	* Minimum size
	*/
	@:overload override public function minimumSize() : java.awt.Dimension;
	
	/**
	* Preferred size
	*/
	@:overload override public function preferredSize() : java.awt.Dimension;
	
	@:overload @:synchronized public function addAppletListener(l : sun.applet.AppletListener) : Void;
	
	@:overload @:synchronized public function removeAppletListener(l : sun.applet.AppletListener) : Void;
	
	/**
	* Dispatch event to the listeners..
	*/
	@:overload public function dispatchAppletEvent(id : Int, argument : Dynamic) : Void;
	
	/**
	* Send an event. Queue it for execution by the handler thread.
	*/
	@:overload public function sendEvent(id : Int) : Void;
	
	/**
	* Get an event from the queue.
	*/
	@:overload @:synchronized private function getNextEvent() : sun.applet.AppletEvent;
	
	/**
	* Execute applet events.
	* Here is the state transition diagram
	*
	*   Note: (XXX) is the action
	*         APPLET_XXX is the state
	*  (applet code loaded) --> APPLET_LOAD -- (applet init called)--> APPLET_INIT -- (
	*   applet start called) --> APPLET_START -- (applet stop called) -->APPLET_STOP --(applet
	*   destroyed called) --> APPLET_DESTROY -->(applet gets disposed) -->
	*   APPLET_DISPOSE -->....
	*
	* In the legacy lifecycle model. The applet gets loaded, inited and started. So it stays
	* in the APPLET_START state unless the applet goes away(refresh page or leave the page).
	* So the applet stop method called and the applet enters APPLET_STOP state. Then if the applet
	* is revisited, it will call applet start method and enter the APPLET_START state and stay there.
	*
	* In the modern lifecycle model. When the applet first time visited, it is same as legacy lifecycle
	* model. However, when the applet page goes away. It calls applet stop method and enters APPLET_STOP
	* state and then applet destroyed method gets called and enters APPLET_DESTROY state.
	*
	* This code is also called by AppletViewer. In AppletViewer "Restart" menu, the applet is jump from
	* APPLET_STOP to APPLET_DESTROY and to APPLET_INIT .
	*
	* Also, the applet can jump from APPLET_INIT state to APPLET_DESTROY (in Netscape/Mozilla case).
	* Same as APPLET_LOAD to
	* APPLET_DISPOSE since all of this are triggered by browser.
	*
	*
	*/
	@:overload public function run() : Void;
	
	/**
	* Load the applet into memory.
	* Runs in a seperate (and interruptible) thread from the rest of the
	* applet event processing so that it can be gracefully interrupted from
	* things like HotJava.
	*/
	@:overload private function runLoader() : Void;
	
	@:overload private function createApplet(loader : sun.applet.AppletClassLoader) : java.applet.Applet;
	
	@:overload private function loadJarFiles(loader : sun.applet.AppletClassLoader) : Void;
	
	/**
	* Request that the loading of the applet be stopped.
	*/
	@:overload @:synchronized private function stopLoading() : Void;
	
	@:overload @:synchronized private function okToLoad() : Bool;
	
	@:overload @:synchronized private function clearLoadAbortRequest() : Void;
	
	@:overload @:synchronized private function setLoadAbortRequest() : Void;
	
	/**
	* Return true when the applet has been started.
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* Is called when the applet wants to be resized.
	*/
	@:overload public function appletResize(width : Int, height : Int) : Void;
	
	@:overload override public function setBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function getApplet() : java.applet.Applet;
	
	/**
	* Status line. Called by the AppletPanel to provide
	* feedback on the Applet's state.
	*/
	@:overload private function showAppletStatus(status : String) : Void;
	
	@:overload private function showAppletStatus(status : String, arg : Dynamic) : Void;
	
	@:overload private function showAppletStatus(status : String, arg1 : Dynamic, arg2 : Dynamic) : Void;
	
	/**
	* Called by the AppletPanel to print to the log.
	*/
	@:overload private function showAppletLog(msg : String) : Void;
	
	@:overload private function showAppletLog(msg : String, arg : Dynamic) : Void;
	
	/**
	* Called by the AppletPanel to provide
	* feedback when an exception has happened.
	*/
	@:overload private function showAppletException(t : java.lang.Throwable) : Void;
	
	/**
	* Get caching key for classloader cache
	*/
	@:overload public function getClassLoaderCacheKey() : String;
	
	/**
	* Flush a class loader.
	*/
	@:overload @:synchronized public static function flushClassLoader(key : String) : Void;
	
	/**
	* Flush all class loaders.
	*/
	@:overload @:synchronized public static function flushClassLoaders() : Void;
	
	/**
	* This method actually creates an AppletClassLoader.
	*
	* It can be override by subclasses (such as the Plug-in)
	* to provide different classloaders.
	*/
	@:overload private function createClassLoader(codebase : java.net.URL) : sun.applet.AppletClassLoader;
	
	@:overload public function getAppletHandlerThread() : java.lang.Thread;
	
	@:overload public function getAppletWidth() : Int;
	
	@:overload public function getAppletHeight() : Int;
	
	@:overload public static function changeFrameAppContext(frame : java.awt.Frame, newAppContext : sun.awt.AppContext) : Void;
	
	/**
	* Return true if applet is targeted to JDK 1.1.
	*/
	@:overload private function isJDK11Applet() : Bool;
	
	/**
	* Return true if applet is targeted to JDK1.2.
	*/
	@:overload private function isJDK12Applet() : Bool;
	
	
}
