package sun.awt;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class AppContext
{
	/*
	* The key to put()/get() the Java EventQueue into/from the AppContext.
	*/
	@:public @:static @:final public static var EVENT_QUEUE_KEY(default, null) : Dynamic;
	
	/*
	* The keys to store EventQueue push/pop lock and condition.
	*/
	@:public @:final @:static public static var EVENT_QUEUE_LOCK_KEY(default, null) : Dynamic;
	
	@:public @:final @:static public static var EVENT_QUEUE_COND_KEY(default, null) : Dynamic;
	
	/**
	* Returns a set containing all <code>AppContext</code>s.
	*/
	@:overload @:public @:static public static function getAppContexts() : java.util.Set<sun.awt.AppContext>;
	
	@:public @:static @:final public static var DISPOSED_PROPERTY_NAME(default, null) : String;
	
	@:public @:static @:final public static var GUI_DISPOSED(default, null) : String;
	
	@:overload @:public public function isDisposed() : Bool;
	
	/**
	* Returns the appropriate AppContext for the caller,
	* as determined by its ThreadGroup.  If the main "system" AppContext
	* would be returned and there's an AWTSecurityManager installed, it
	* is called to get the proper AppContext based on the execution
	* context.
	*
	* @return  the AppContext for the caller.
	* @see     java.lang.ThreadGroup
	* @since   1.2
	*/
	@:require(java2) @:overload @:public @:final @:static public static function getAppContext() : sun.awt.AppContext;
	
	/**
	* Disposes of this AppContext, all of its top-level Frames, and
	* all Threads and ThreadGroups contained within it.
	*
	* This method must be called from a Thread which is not contained
	* within this AppContext.
	*
	* @exception  IllegalThreadStateException  if the current thread is
	*                                    contained within this AppContext
	* @since      1.2
	*/
	@:require(java2) @:overload @:public public function dispose() : Void;
	
	/**
	* Returns the value to which the specified key is mapped in this context.
	*
	* @param   key   a key in the AppContext.
	* @return  the value to which the key is mapped in this AppContext;
	*          <code>null</code> if the key is not mapped to any value.
	* @see     #put(Object, Object)
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this AppContext.  Neither the key nor the
	* value can be <code>null</code>.
	* <p>
	* The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	*
	* @param      key     the AppContext key.
	* @param      value   the value.
	* @return     the previous value of the specified key in this
	*             AppContext, or <code>null</code> if it did not have one.
	* @exception  NullPointerException  if the key or value is
	*               <code>null</code>.
	* @see     #get(Object)
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the key (and its corresponding value) from this
	* AppContext. This method does nothing if the key is not in the
	* AppContext.
	*
	* @param   key   the key that needs to be removed.
	* @return  the value to which the key had been mapped in this AppContext,
	*          or <code>null</code> if the key did not have a mapping.
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Returns the root ThreadGroup for all Threads contained within
	* this AppContext.
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function getThreadGroup() : java.lang.ThreadGroup;
	
	/**
	* Returns the context ClassLoader that was used to create this
	* AppContext.
	*
	* @see java.lang.Thread#getContextClassLoader
	*/
	@:overload @:public public function getContextClassLoader() : java.lang.ClassLoader;
	
	/**
	* Returns a string representation of this AppContext.
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function toString() : String;
	
	/**
	* Returns an array of all the property change listeners
	* registered on this component.
	*
	* @return all of this component's <code>PropertyChangeListener</code>s
	*         or an empty array if no property change
	*         listeners are currently registered
	*
	* @see      #addPropertyChangeListener
	* @see      #removePropertyChangeListener
	* @see      #getPropertyChangeListeners(java.lang.String)
	* @see      java.beans.PropertyChangeSupport#getPropertyChangeListeners
	* @since    1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Adds a PropertyChangeListener to the listener list for a specific
	* property. The specified property may be one of the following:
	* <ul>
	*    <li>if this AppContext is disposed ("disposed")</li>
	* </ul>
	* <ul>
	*    <li>if this AppContext's unowned Windows have been disposed
	*    ("guidisposed").  Code to cleanup after the GUI is disposed
	*    (such as LookAndFeel.uninitialize()) should execute in response to
	*    this property being fired.  Notifications for the "guidisposed"
	*    property are sent on the event dispatch thread.</li>
	* </ul>
	* <p>
	* If listener is null, no exception is thrown and no action is performed.
	*
	* @param propertyName one of the property names listed above
	* @param listener the PropertyChangeListener to be added
	*
	* @see #removePropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)
	* @see #getPropertyChangeListeners(java.lang.String)
	* @see #addPropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)
	*/
	@:overload @:public @:synchronized public function addPropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a PropertyChangeListener from the listener list for a specific
	* property. This method should be used to remove PropertyChangeListeners
	* that were registered for a specific bound property.
	* <p>
	* If listener is null, no exception is thrown and no action is performed.
	*
	* @param propertyName a valid property name
	* @param listener the PropertyChangeListener to be removed
	*
	* @see #addPropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)
	* @see #getPropertyChangeListeners(java.lang.String)
	* @see #removePropertyChangeListener(java.beans.PropertyChangeListener)
	*/
	@:overload @:public @:synchronized public function removePropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners which have been associated
	* with the named property.
	*
	* @return all of the <code>PropertyChangeListeners</code> associated with
	*         the named property or an empty array if no listeners have
	*         been added
	*
	* @see #addPropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)
	* @see #removePropertyChangeListener(java.lang.String, java.beans.PropertyChangeListener)
	* @see #getPropertyChangeListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function getPropertyChangeListeners(propertyName : String) : java.NativeArray<java.beans.PropertyChangeListener>;
	
	
}
@:native('sun$awt$AppContext$PostShutdownEventRunnable') @:internal extern class AppContext_PostShutdownEventRunnable implements java.lang.Runnable
{
	@:overload @:public public function new(ac : sun.awt.AppContext) : Void;
	
	@:overload @:public public function run() : Void;
	
	
}
@:native('sun$awt$AppContext$CreateThreadAction') @:internal extern class AppContext_CreateThreadAction implements java.security.PrivilegedAction<Dynamic>
{
	@:overload @:public public function new(ac : sun.awt.AppContext, r : java.lang.Runnable) : Void;
	
	@:overload @:public public function run() : Dynamic;
	
	
}
@:internal extern class MostRecentKeyValue
{
	
}
