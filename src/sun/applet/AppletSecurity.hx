package sun.applet;
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
extern class AppletSecurity extends sun.awt.AWTSecurityManager
{
	/**
	* Construct and initialize.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Reset from Properties
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Returns true if this threadgroup is in the applet's own thread
	* group. This will return false if there is no current class
	* loader.
	*/
	@:overload @:protected private function inThreadGroup(g : java.lang.ThreadGroup) : Bool;
	
	/**
	* Returns true of the threadgroup of thread is in the applet's
	* own threadgroup.
	*/
	@:overload @:protected private function inThreadGroup(thread : java.lang.Thread) : Bool;
	
	/**
	* Applets are not allowed to manipulate threads outside
	* applet thread groups. However a terminated thread no longer belongs
	* to any group.
	*/
	@:overload @:public override public function checkAccess(t : java.lang.Thread) : Void;
	
	/**
	* Applets are not allowed to manipulate thread groups outside
	* applet thread groups.
	*/
	@:overload @:public @:synchronized override public function checkAccess(g : java.lang.ThreadGroup) : Void;
	
	/**
	* Throws a <code>SecurityException</code> if the
	* calling thread is not allowed to access the package specified by
	* the argument.
	* <p>
	* This method is used by the <code>loadClass</code> method of class
	* loaders.
	* <p>
	* The <code>checkPackageAccess</code> method for class
	* <code>SecurityManager</code>  calls
	* <code>checkPermission</code> with the
	* <code>RuntimePermission("accessClassInPackage."+pkg)</code>
	* permission.
	*
	* @param      pkg   the package name.
	* @exception  SecurityException  if the caller does not have
	*             permission to access the specified package.
	* @see        java.lang.ClassLoader#loadClass(java.lang.String, boolean)
	*/
	@:overload @:public override public function checkPackageAccess(pkgname : String) : Void;
	
	/**
	* Tests if a client can get access to the AWT event queue.
	* <p>
	* This method calls <code>checkPermission</code> with the
	* <code>AWTPermission("accessEventQueue")</code> permission.
	*
	* @since   JDK1.1
	* @exception  SecurityException  if the caller does not have
	*             permission to accesss the AWT event queue.
	*/
	@:require(java1) @:overload @:public override public function checkAwtEventQueueAccess() : Void;
	
	/**
	* Returns the thread group of the applet. We consult the classloader
	* if there is one.
	*/
	@:overload @:public override public function getThreadGroup() : java.lang.ThreadGroup;
	
	/**
	* Get the AppContext corresponding to the current context.
	* The default implementation returns null, but this method
	* may be overridden by various SecurityManagers
	* (e.g. AppletSecurity) to index AppContext objects by the
	* calling context.
	*
	* @return  the AppContext corresponding to the current context.
	* @see     sun.awt.AppContext
	* @see     java.lang.SecurityManager
	* @since   JDK1.2.1
	*/
	@:require(java2) @:overload @:public override public function getAppContext() : sun.awt.AppContext;
	
	
}
