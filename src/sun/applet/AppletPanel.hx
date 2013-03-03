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
	@:protected private var applet : java.applet.Applet;
	
	/**
	* Applet will allow initialization.  Should be
	* set to false if loading a serialized applet
	* that was pickled in the init=true state.
	*/
	@:protected private var doInit : Bool;
	
	/**
	* The classloader for the applet.
	*/
	@:protected private var loader : sun.applet.AppletClassLoader;
	
	/* applet event ids */
	@:public @:final @:static public static var APPLET_DISPOSE(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_LOAD(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_INIT(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_START(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_STOP(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_DESTROY(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_QUIT(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_ERROR(default, null) : Int;
	
	/* send to the parent to force relayout */
	@:public @:final @:static public static var APPLET_RESIZE(default, null) : Int;
	
	/* sent to a (distant) parent to indicate that the applet is being
	* loaded or as completed loading
	*/
	@:public @:final @:static public static var APPLET_LOADING(default, null) : Int;
	
	@:public @:final @:static public static var APPLET_LOADING_COMPLETED(default, null) : Int;
	
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
	@:protected private var status : Int;
	
	/**
	* The thread for the applet.
	*/
	@:protected private var handler : java.lang.Thread;
	
	/* abstract classes */
	@:overload @:abstract @:protected private function getCode() : String;
	
	@:overload @:abstract @:protected private function getJarFiles() : String;
	
	@:overload @:abstract @:protected private function getSerializedObject() : String;
	
	@:overload @:abstract @:public override public function getWidth() : Int;
	
	@:overload @:abstract @:public override public function getHeight() : Int;
	
	@:overload @:abstract @:public public function hasInitialFocus() : Bool;
	
	@:overload @:protected private function setupAppletAppContext() : Void;
	
	/*
	* Creates a thread to run the applet. This method is called
	* each time an applet is loaded and reloaded.
	*/
	@:overload @:protected @:synchronized private function createAppletThread() : Void;
	
	/**
	* Construct an applet viewer and start the applet.
	*/
	@:overload @:public public function init() : Void;
	
	/**
	* Minimum size
	*/
	@:overload @:public override public function minimumSize() : java.awt.Dimension;
	
	/**
	* Preferred size
	*/
	@:overload @:public override public function preferredSize() : java.awt.Dimension;
	
	@:overload @:synchronized @:public public function addAppletListener(l : sun.applet.AppletListener) : Void;
	
	@:overload @:synchronized @:public public function removeAppletListener(l : sun.applet.AppletListener) : Void;
	
	/**
	* Dispatch event to the listeners..
	*/
	@:overload @:public public function dispatchAppletEvent(id : Int, argument : Dynamic) : Void;
	
	/**
	* Send an event. Queue it for execution by the handler thread.
	*/
	@:overload @:public public function sendEvent(id : Int) : Void;
	
	/**
	* Get an event from the queue.
	*/
	@:overload @:protected @:synchronized private function getNextEvent() : sun.applet.AppletEvent;
	
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
	@:overload @:public public function run() : Void;
	
	/**
	* Load the applet into memory.
	* Runs in a seperate (and interruptible) thread from the rest of the
	* applet event processing so that it can be gracefully interrupted from
	* things like HotJava.
	*/
	@:overload @:protected private function runLoader() : Void;
	
	@:overload @:protected private function createApplet(loader : sun.applet.AppletClassLoader) : java.applet.Applet;
	
	@:overload @:protected private function loadJarFiles(loader : sun.applet.AppletClassLoader) : Void;
	
	/**
	* Request that the loading of the applet be stopped.
	*/
	@:overload @:protected @:synchronized private function stopLoading() : Void;
	
	@:overload @:protected @:synchronized private function okToLoad() : Bool;
	
	@:overload @:protected @:synchronized private function clearLoadAbortRequest() : Void;
	
	@:overload @:protected @:synchronized private function setLoadAbortRequest() : Void;
	
	/**
	* Return true when the applet has been started.
	*/
	@:overload @:public public function isActive() : Bool;
	
	/**
	* Is called when the applet wants to be resized.
	*/
	@:overload @:public public function appletResize(width : Int, height : Int) : Void;
	
	@:overload @:public override public function setBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function getApplet() : java.applet.Applet;
	
	/**
	* Status line. Called by the AppletPanel to provide
	* feedback on the Applet's state.
	*/
	@:overload @:protected private function showAppletStatus(status : String) : Void;
	
	@:overload @:protected private function showAppletStatus(status : String, arg : Dynamic) : Void;
	
	@:overload @:protected private function showAppletStatus(status : String, arg1 : Dynamic, arg2 : Dynamic) : Void;
	
	/**
	* Called by the AppletPanel to print to the log.
	*/
	@:overload @:protected private function showAppletLog(msg : String) : Void;
	
	@:overload @:protected private function showAppletLog(msg : String, arg : Dynamic) : Void;
	
	/**
	* Called by the AppletPanel to provide
	* feedback when an exception has happened.
	*/
	@:overload @:protected private function showAppletException(t : java.lang.Throwable) : Void;
	
	/**
	* Get caching key for classloader cache
	*/
	@:overload @:public public function getClassLoaderCacheKey() : String;
	
	/**
	* Flush a class loader.
	*/
	@:overload @:public @:static @:synchronized public static function flushClassLoader(key : String) : Void;
	
	/**
	* Flush all class loaders.
	*/
	@:overload @:public @:static @:synchronized public static function flushClassLoaders() : Void;
	
	/**
	* This method actually creates an AppletClassLoader.
	*
	* It can be override by subclasses (such as the Plug-in)
	* to provide different classloaders.
	*/
	@:overload @:protected private function createClassLoader(codebase : java.net.URL) : sun.applet.AppletClassLoader;
	
	@:overload @:public public function getAppletHandlerThread() : java.lang.Thread;
	
	@:overload @:public public function getAppletWidth() : Int;
	
	@:overload @:public public function getAppletHeight() : Int;
	
	@:overload @:public @:static public static function changeFrameAppContext(frame : java.awt.Frame, newAppContext : sun.awt.AppContext) : Void;
	
	/**
	* Return true if applet is targeted to JDK 1.1.
	*/
	@:overload @:protected private function isJDK11Applet() : Bool;
	
	/**
	* Return true if applet is targeted to JDK1.2.
	*/
	@:overload @:protected private function isJDK12Applet() : Bool;
	
	/**
	* Gets the URL of the document in which the applet is embedded.
	* For example, suppose an applet is contained
	* within the document:
	* <blockquote><pre>
	*    http://java.sun.com/products/jdk/1.2/index.html
	* </pre></blockquote>
	* The document base is:
	* <blockquote><pre>
	*    http://java.sun.com/products/jdk/1.2/index.html
	* </pre></blockquote>
	*
	* @return  the {@link java.net.URL} of the document that contains the
	*          applet.
	* @see     java.applet.AppletStub#getCodeBase()
	*/
	@:overload @:public public function getDocumentBase() : java.net.URL;
	
	/**
	* Gets the base URL. This is the URL of the directory which contains the applet.
	*
	* @return  the base {@link java.net.URL} of
	*          the directory which contains the applet.
	* @see     java.applet.AppletStub#getDocumentBase()
	*/
	@:overload @:public public function getCodeBase() : java.net.URL;
	
	/**
	* Returns the value of the named parameter in the HTML tag. For
	* example, if an applet is specified as
	* <blockquote><pre>
	* &lt;applet code="Clock" width=50 height=50&gt;
	* &lt;param name=Color value="blue"&gt;
	* &lt;/applet&gt;
	* </pre></blockquote>
	* <p>
	* then a call to <code>getParameter("Color")</code> returns the
	* value <code>"blue"</code>.
	*
	* @param   name   a parameter name.
	* @return  the value of the named parameter,
	* or <tt>null</tt> if not set.
	*/
	@:overload @:public public function getParameter(name : String) : String;
	
	/**
	* Returns the applet's context.
	*
	* @return  the applet's context.
	*/
	@:overload @:public public function getAppletContext() : java.applet.AppletContext;
	
	
}
