package java.applet;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An applet is a small program that is intended not to be run on
* its own, but rather to be embedded inside another application.
* <p>
* The <code>Applet</code> class must be the superclass of any
* applet that is to be embedded in a Web page or viewed by the Java
* Applet Viewer. The <code>Applet</code> class provides a standard
* interface between applets and their environment.
*
* @author      Arthur van Hoff
* @author      Chris Warth
* @since       JDK1.0
*/
@:require(java0) extern class Applet extends java.awt.Panel
{
	/**
	* Constructs a new Applet.
	* <p>
	* Note: Many methods in <code>java.applet.Applet</code>
	* may be invoked by the applet only after the applet is
	* fully constructed; applet should avoid calling methods
	* in <code>java.applet.Applet</code> in the constructor.
	*
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	* returns true.
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @since 1.4
	*/
	@:require(java4) @:overload public function new() : Void;
	
	/**
	* Sets this applet's stub. This is done automatically by the system.
	* <p>If there is a security manager, its <code> checkPermission </code>
	* method is called with the
	* <code>AWTPermission("setAppletStub")</code>
	* permission if a stub has already been set.
	* @param   stub   the new stub.
	* @exception SecurityException if the caller cannot set the stub
	*/
	@:overload @:final public function setStub(stub : java.applet.AppletStub) : Void;
	
	/**
	* Determines if this applet is active. An applet is marked active
	* just before its <code>start</code> method is called. It becomes
	* inactive just before its <code>stop</code> method is called.
	*
	* @return  <code>true</code> if the applet is active;
	*          <code>false</code> otherwise.
	* @see     java.applet.Applet#start()
	* @see     java.applet.Applet#stop()
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* Gets the URL of the document in which this applet is embedded.
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
	* @return  the {@link java.net.URL} of the document that contains this
	*          applet.
	* @see     java.applet.Applet#getCodeBase()
	*/
	@:overload public function getDocumentBase() : java.net.URL;
	
	/**
	* Gets the base URL. This is the URL of the directory which contains this applet.
	*
	* @return  the base {@link java.net.URL} of
	*          the directory which contains this applet.
	* @see     java.applet.Applet#getDocumentBase()
	*/
	@:overload public function getCodeBase() : java.net.URL;
	
	/**
	* Returns the value of the named parameter in the HTML tag. For
	* example, if this applet is specified as
	* <blockquote><pre>
	* &lt;applet code="Clock" width=50 height=50&gt;
	* &lt;param name=Color value="blue"&gt;
	* &lt;/applet&gt;
	* </pre></blockquote>
	* <p>
	* then a call to <code>getParameter("Color")</code> returns the
	* value <code>"blue"</code>.
	* <p>
	* The <code>name</code> argument is case insensitive.
	*
	* @param   name   a parameter name.
	* @return  the value of the named parameter,
	*          or <code>null</code> if not set.
	*/
	@:overload public function getParameter(name : String) : String;
	
	/**
	* Determines this applet's context, which allows the applet to
	* query and affect the environment in which it runs.
	* <p>
	* This environment of an applet represents the document that
	* contains the applet.
	*
	* @return  the applet's context.
	*/
	@:overload public function getAppletContext() : java.applet.AppletContext;
	
	/**
	* Requests that this applet be resized.
	*
	* @param   width    the new requested width for the applet.
	* @param   height   the new requested height for the applet.
	*/
	@:overload public function resize(width : Int, height : Int) : Void;
	
	/**
	* Requests that this applet be resized.
	*
	* @param   d   an object giving the new width and height.
	*/
	@:overload public function resize(d : java.awt.Dimension) : Void;
	
	/**
	* Indicates if this container is a validate root.
	* <p>
	* {@code Applet} objects are the validate roots, and, therefore, they
	* override this method to return {@code true}.
	*
	* @return {@code true}
	* @since 1.7
	* @see java.awt.Container#isValidateRoot
	*/
	@:require(java7) @:overload override public function isValidateRoot() : Bool;
	
	/**
	* Requests that the argument string be displayed in the
	* "status window". Many browsers and applet viewers
	* provide such a window, where the application can inform users of
	* its current state.
	*
	* @param   msg   a string to display in the status window.
	*/
	@:overload public function showStatus(msg : String) : Void;
	
	/**
	* Returns an <code>Image</code> object that can then be painted on
	* the screen. The <code>url</code> that is passed as an argument
	* must specify an absolute URL.
	* <p>
	* This method always returns immediately, whether or not the image
	* exists. When this applet attempts to draw the image on the screen,
	* the data will be loaded. The graphics primitives that draw the
	* image will incrementally paint on the screen.
	*
	* @param   url   an absolute URL giving the location of the image.
	* @return  the image at the specified URL.
	* @see     java.awt.Image
	*/
	@:overload public function getImage(url : java.net.URL) : java.awt.Image;
	
	/**
	* Returns an <code>Image</code> object that can then be painted on
	* the screen. The <code>url</code> argument must specify an absolute
	* URL. The <code>name</code> argument is a specifier that is
	* relative to the <code>url</code> argument.
	* <p>
	* This method always returns immediately, whether or not the image
	* exists. When this applet attempts to draw the image on the screen,
	* the data will be loaded. The graphics primitives that draw the
	* image will incrementally paint on the screen.
	*
	* @param   url    an absolute URL giving the base location of the image.
	* @param   name   the location of the image, relative to the
	*                 <code>url</code> argument.
	* @return  the image at the specified URL.
	* @see     java.awt.Image
	*/
	@:overload public function getImage(url : java.net.URL, name : String) : java.awt.Image;
	
	/**
	* Get an audio clip from the given URL.
	*
	* @param url points to the audio clip
	* @return the audio clip at the specified URL.
	*
	* @since       1.2
	*/
	@:require(java2) @:overload @:final public static function newAudioClip(url : java.net.URL) : java.applet.AudioClip;
	
	/**
	* Returns the <code>AudioClip</code> object specified by the
	* <code>URL</code> argument.
	* <p>
	* This method always returns immediately, whether or not the audio
	* clip exists. When this applet attempts to play the audio clip, the
	* data will be loaded.
	*
	* @param   url  an absolute URL giving the location of the audio clip.
	* @return  the audio clip at the specified URL.
	* @see     java.applet.AudioClip
	*/
	@:overload public function getAudioClip(url : java.net.URL) : java.applet.AudioClip;
	
	/**
	* Returns the <code>AudioClip</code> object specified by the
	* <code>URL</code> and <code>name</code> arguments.
	* <p>
	* This method always returns immediately, whether or not the audio
	* clip exists. When this applet attempts to play the audio clip, the
	* data will be loaded.
	*
	* @param   url    an absolute URL giving the base location of the
	*                 audio clip.
	* @param   name   the location of the audio clip, relative to the
	*                 <code>url</code> argument.
	* @return  the audio clip at the specified URL.
	* @see     java.applet.AudioClip
	*/
	@:overload public function getAudioClip(url : java.net.URL, name : String) : java.applet.AudioClip;
	
	/**
	* Returns information about this applet. An applet should override
	* this method to return a <code>String</code> containing information
	* about the author, version, and copyright of the applet.
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class returns <code>null</code>.
	*
	* @return  a string containing information about the author, version, and
	*          copyright of the applet.
	*/
	@:overload public function getAppletInfo() : String;
	
	/**
	* Gets the locale of the applet. It allows the applet
	* to maintain its own locale separated from the locale
	* of the browser or appletviewer.
	*
	* @return  the locale of the applet; if no locale has
	*          been set, the default locale is returned.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function getLocale() : java.util.Locale;
	
	/**
	* Returns information about the parameters that are understood by
	* this applet. An applet should override this method to return an
	* array of <code>Strings</code> describing these parameters.
	* <p>
	* Each element of the array should be a set of three
	* <code>Strings</code> containing the name, the type, and a
	* description. For example:
	* <p><blockquote><pre>
	* String pinfo[][] = {
	*   {"fps",    "1-10",    "frames per second"},
	*   {"repeat", "boolean", "repeat image loop"},
	*   {"imgs",   "url",     "images directory"}
	* };
	* </pre></blockquote>
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class returns <code>null</code>.
	*
	* @return  an array describing the parameters this applet looks for.
	*/
	@:overload public function getParameterInfo() : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Plays the audio clip at the specified absolute URL. Nothing
	* happens if the audio clip cannot be found.
	*
	* @param   url   an absolute URL giving the location of the audio clip.
	*/
	@:overload public function play(url : java.net.URL) : Void;
	
	/**
	* Plays the audio clip given the URL and a specifier that is
	* relative to it. Nothing happens if the audio clip cannot be found.
	*
	* @param   url    an absolute URL giving the base location of the
	*                 audio clip.
	* @param   name   the location of the audio clip, relative to the
	*                 <code>url</code> argument.
	*/
	@:overload public function play(url : java.net.URL, name : String) : Void;
	
	/**
	* Called by the browser or applet viewer to inform
	* this applet that it has been loaded into the system. It is always
	* called before the first time that the <code>start</code> method is
	* called.
	* <p>
	* A subclass of <code>Applet</code> should override this method if
	* it has initialization to perform. For example, an applet with
	* threads would use the <code>init</code> method to create the
	* threads and the <code>destroy</code> method to kill them.
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class does nothing.
	*
	* @see     java.applet.Applet#destroy()
	* @see     java.applet.Applet#start()
	* @see     java.applet.Applet#stop()
	*/
	@:overload public function init() : Void;
	
	/**
	* Called by the browser or applet viewer to inform
	* this applet that it should start its execution. It is called after
	* the <code>init</code> method and each time the applet is revisited
	* in a Web page.
	* <p>
	* A subclass of <code>Applet</code> should override this method if
	* it has any operation that it wants to perform each time the Web
	* page containing it is visited. For example, an applet with
	* animation might want to use the <code>start</code> method to
	* resume animation, and the <code>stop</code> method to suspend the
	* animation.
	* <p>
	* Note: some methods, such as <code>getLocationOnScreen</code>, can only
	* provide meaningful results if the applet is showing.  Because
	* <code>isShowing</code> returns <code>false</code> when the applet's
	* <code>start</code> is first called, methods requiring
	* <code>isShowing</code> to return <code>true</code> should be called from
	* a <code>ComponentListener</code>.
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class does nothing.
	*
	* @see     java.applet.Applet#destroy()
	* @see     java.applet.Applet#init()
	* @see     java.applet.Applet#stop()
	* @see     java.awt.Component#isShowing()
	* @see     java.awt.event.ComponentListener#componentShown(java.awt.event.ComponentEvent)
	*/
	@:overload public function start() : Void;
	
	/**
	* Called by the browser or applet viewer to inform
	* this applet that it should stop its execution. It is called when
	* the Web page that contains this applet has been replaced by
	* another page, and also just before the applet is to be destroyed.
	* <p>
	* A subclass of <code>Applet</code> should override this method if
	* it has any operation that it wants to perform each time the Web
	* page containing it is no longer visible. For example, an applet
	* with animation might want to use the <code>start</code> method to
	* resume animation, and the <code>stop</code> method to suspend the
	* animation.
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class does nothing.
	*
	* @see     java.applet.Applet#destroy()
	* @see     java.applet.Applet#init()
	*/
	@:overload public function stop() : Void;
	
	/**
	* Called by the browser or applet viewer to inform
	* this applet that it is being reclaimed and that it should destroy
	* any resources that it has allocated. The <code>stop</code> method
	* will always be called before <code>destroy</code>.
	* <p>
	* A subclass of <code>Applet</code> should override this method if
	* it has any operation that it wants to perform before it is
	* destroyed. For example, an applet with threads would use the
	* <code>init</code> method to create the threads and the
	* <code>destroy</code> method to kill them.
	* <p>
	* The implementation of this method provided by the
	* <code>Applet</code> class does nothing.
	*
	* @see     java.applet.Applet#init()
	* @see     java.applet.Applet#start()
	* @see     java.applet.Applet#stop()
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Gets the AccessibleContext associated with this Applet.
	* For applets, the AccessibleContext takes the form of an
	* AccessibleApplet.
	* A new AccessibleApplet instance is created if necessary.
	*
	* @return an AccessibleApplet that serves as the
	*         AccessibleContext of this Applet
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>Applet</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to applet user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$applet$Applet$AccessibleApplet') extern class Applet_AccessibleApplet extends java.awt.Panel.Panel_AccessibleAWTPanel
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
