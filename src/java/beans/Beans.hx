package java.beans;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Beans
{
	/**
	* <p>
	* Instantiate a JavaBean.
	* </p>
	*
	* @param     cls         the class-loader from which we should create
	*                        the bean.  If this is null, then the system
	*                        class-loader is used.
	* @param     beanName    the name of the bean within the class-loader.
	*                        For example "sun.beanbox.foobah"
	*
	* @exception ClassNotFoundException if the class of a serialized
	*              object could not be found.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public @:static public static function instantiate(cls : java.lang.ClassLoader, beanName : String) : Dynamic;
	
	/**
	* <p>
	* Instantiate a JavaBean.
	* </p>
	*
	* @param     cls         the class-loader from which we should create
	*                        the bean.  If this is null, then the system
	*                        class-loader is used.
	* @param     beanName    the name of the bean within the class-loader.
	*                        For example "sun.beanbox.foobah"
	* @param     beanContext The BeanContext in which to nest the new bean
	*
	* @exception ClassNotFoundException if the class of a serialized
	*              object could not be found.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public @:static public static function instantiate(cls : java.lang.ClassLoader, beanName : String, beanContext : java.beans.beancontext.BeanContext) : Dynamic;
	
	/**
	* Instantiate a bean.
	* <p>
	* The bean is created based on a name relative to a class-loader.
	* This name should be a dot-separated name such as "a.b.c".
	* <p>
	* In Beans 1.0 the given name can indicate either a serialized object
	* or a class.  Other mechanisms may be added in the future.  In
	* beans 1.0 we first try to treat the beanName as a serialized object
	* name then as a class name.
	* <p>
	* When using the beanName as a serialized object name we convert the
	* given beanName to a resource pathname and add a trailing ".ser" suffix.
	* We then try to load a serialized object from that resource.
	* <p>
	* For example, given a beanName of "x.y", Beans.instantiate would first
	* try to read a serialized object from the resource "x/y.ser" and if
	* that failed it would try to load the class "x.y" and create an
	* instance of that class.
	* <p>
	* If the bean is a subtype of java.applet.Applet, then it is given
	* some special initialization.  First, it is supplied with a default
	* AppletStub and AppletContext.  Second, if it was instantiated from
	* a classname the applet's "init" method is called.  (If the bean was
	* deserialized this step is skipped.)
	* <p>
	* Note that for beans which are applets, it is the caller's responsiblity
	* to call "start" on the applet.  For correct behaviour, this should be done
	* after the applet has been added into a visible AWT container.
	* <p>
	* Note that applets created via beans.instantiate run in a slightly
	* different environment than applets running inside browsers.  In
	* particular, bean applets have no access to "parameters", so they may
	* wish to provide property get/set methods to set parameter values.  We
	* advise bean-applet developers to test their bean-applets against both
	* the JDK appletviewer (for a reference browser environment) and the
	* BDK BeanBox (for a reference bean container).
	*
	* @param     cls         the class-loader from which we should create
	*                        the bean.  If this is null, then the system
	*                        class-loader is used.
	* @param     beanName    the name of the bean within the class-loader.
	*                        For example "sun.beanbox.foobah"
	* @param     beanContext The BeanContext in which to nest the new bean
	* @param     initializer The AppletInitializer for the new bean
	*
	* @exception ClassNotFoundException if the class of a serialized
	*              object could not be found.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public @:static public static function instantiate(cls : java.lang.ClassLoader, beanName : String, beanContext : java.beans.beancontext.BeanContext, initializer : java.beans.AppletInitializer) : Dynamic;
	
	/**
	* From a given bean, obtain an object representing a specified
	* type view of that source object.
	* <p>
	* The result may be the same object or a different object.  If
	* the requested target view isn't available then the given
	* bean is returned.
	* <p>
	* This method is provided in Beans 1.0 as a hook to allow the
	* addition of more flexible bean behaviour in the future.
	*
	* @param bean        Object from which we want to obtain a view.
	* @param targetType  The type of view we'd like to get.
	*
	*/
	@:overload @:public @:static public static function getInstanceOf(bean : Dynamic, targetType : Class<Dynamic>) : Dynamic;
	
	/**
	* Check if a bean can be viewed as a given target type.
	* The result will be true if the Beans.getInstanceof method
	* can be used on the given bean to obtain an object that
	* represents the specified targetType type view.
	*
	* @param bean  Bean from which we want to obtain a view.
	* @param targetType  The type of view we'd like to get.
	* @return "true" if the given bean supports the given targetType.
	*
	*/
	@:overload @:public @:static public static function isInstanceOf(bean : Dynamic, targetType : Class<Dynamic>) : Bool;
	
	/**
	* Test if we are in design-mode.
	*
	* @return  True if we are running in an application construction
	*          environment.
	*
	* @see DesignMode
	*/
	@:overload @:public @:static public static function isDesignTime() : Bool;
	
	/**
	* Determines whether beans can assume a GUI is available.
	*
	* @return  True if we are running in an environment where beans
	*     can assume that an interactive GUI is available, so they
	*     can pop up dialog boxes, etc.  This will normally return
	*     true in a windowing environment, and will normally return
	*     false in a server environment or if an application is
	*     running as part of a batch job.
	*
	* @see Visibility
	*
	*/
	@:overload @:public @:static public static function isGuiAvailable() : Bool;
	
	/**
	* Used to indicate whether of not we are running in an application
	* builder environment.
	*
	* <p>Note that this method is security checked
	* and is not available to (for example) untrusted applets.
	* More specifically, if there is a security manager,
	* its <code>checkPropertiesAccess</code>
	* method is called. This could result in a SecurityException.
	*
	* @param isDesignTime  True if we're in an application builder tool.
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkPropertiesAccess</code> method doesn't allow setting
	*              of system properties.
	* @see SecurityManager#checkPropertiesAccess
	*/
	@:overload @:public @:static public static function setDesignTime(isDesignTime : Bool) : Void;
	
	/**
	* Used to indicate whether of not we are running in an environment
	* where GUI interaction is available.
	*
	* <p>Note that this method is security checked
	* and is not available to (for example) untrusted applets.
	* More specifically, if there is a security manager,
	* its <code>checkPropertiesAccess</code>
	* method is called. This could result in a SecurityException.
	*
	* @param isGuiAvailable  True if GUI interaction is available.
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkPropertiesAccess</code> method doesn't allow setting
	*              of system properties.
	* @see SecurityManager#checkPropertiesAccess
	*/
	@:overload @:public @:static public static function setGuiAvailable(isGuiAvailable : Bool) : Void;
	
	
}
@:internal extern class ObjectInputStreamWithLoader extends java.io.ObjectInputStream
{
	/**
	* Loader must be non-null;
	*/
	@:overload @:public public function new(_in : java.io.InputStream, loader : java.lang.ClassLoader) : Void;
	
	/**
	* Use the given ClassLoader rather than using the system class
	*/
	@:overload @:protected override private function resolveClass(classDesc : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	
}
@:internal extern class BeansAppletContext implements java.applet.AppletContext
{
	@:overload @:public public function getAudioClip(url : java.net.URL) : java.applet.AudioClip;
	
	@:overload @:public @:synchronized public function getImage(url : java.net.URL) : java.awt.Image;
	
	@:overload @:public public function getApplet(name : String) : java.applet.Applet;
	
	@:overload @:public public function getApplets() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function showDocument(url : java.net.URL) : Void;
	
	@:overload @:public public function showDocument(url : java.net.URL, target : String) : Void;
	
	@:overload @:public public function showStatus(status : String) : Void;
	
	@:overload @:public public function setStream(key : String, stream : java.io.InputStream) : Void;
	
	@:overload @:public public function getStream(key : String) : java.io.InputStream;
	
	@:overload @:public public function getStreamKeys() : java.util.Iterator<Dynamic>;
	
	
}
@:internal extern class BeansAppletStub implements java.applet.AppletStub
{
	@:overload @:public public function isActive() : Bool;
	
	@:overload @:public public function getDocumentBase() : java.net.URL;
	
	@:overload @:public public function getCodeBase() : java.net.URL;
	
	@:overload @:public public function getParameter(name : String) : String;
	
	@:overload @:public public function getAppletContext() : java.applet.AppletContext;
	
	@:overload @:public public function appletResize(width : Int, height : Int) : Void;
	
	
}
