package java.beans;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class VetoableChangeSupport implements java.io.Serializable
{
	/**
	* Constructs a <code>VetoableChangeSupport</code> object.
	*
	* @param sourceBean  The bean to be given as the source for any events.
	*/
	@:overload @:public public function new(sourceBean : Dynamic) : Void;
	
	/**
	* Add a VetoableChangeListener to the listener list.
	* The listener is registered for all properties.
	* The same listener object may be added more than once, and will be called
	* as many times as it is added.
	* If <code>listener</code> is null, no exception is thrown and no action
	* is taken.
	*
	* @param listener  The VetoableChangeListener to be added
	*/
	@:overload @:public public function addVetoableChangeListener(listener : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Remove a VetoableChangeListener from the listener list.
	* This removes a VetoableChangeListener that was registered
	* for all properties.
	* If <code>listener</code> was added more than once to the same event
	* source, it will be notified one less time after being removed.
	* If <code>listener</code> is null, or was never added, no exception is
	* thrown and no action is taken.
	*
	* @param listener  The VetoableChangeListener to be removed
	*/
	@:overload @:public public function removeVetoableChangeListener(listener : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners that were added to the
	* VetoableChangeSupport object with addVetoableChangeListener().
	* <p>
	* If some listeners have been added with a named property, then
	* the returned array will be a mixture of VetoableChangeListeners
	* and <code>VetoableChangeListenerProxy</code>s. If the calling
	* method is interested in distinguishing the listeners then it must
	* test each element to see if it's a
	* <code>VetoableChangeListenerProxy</code>, perform the cast, and examine
	* the parameter.
	*
	* <pre>
	* VetoableChangeListener[] listeners = bean.getVetoableChangeListeners();
	* for (int i = 0; i < listeners.length; i++) {
	*        if (listeners[i] instanceof VetoableChangeListenerProxy) {
	*     VetoableChangeListenerProxy proxy =
	*                    (VetoableChangeListenerProxy)listeners[i];
	*     if (proxy.getPropertyName().equals("foo")) {
	*       // proxy is a VetoableChangeListener which was associated
	*       // with the property named "foo"
	*     }
	*   }
	* }
	*</pre>
	*
	* @see VetoableChangeListenerProxy
	* @return all of the <code>VetoableChangeListeners</code> added or an
	*         empty array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getVetoableChangeListeners() : java.NativeArray<java.beans.VetoableChangeListener>;
	
	/**
	* Add a VetoableChangeListener for a specific property.  The listener
	* will be invoked only when a call on fireVetoableChange names that
	* specific property.
	* The same listener object may be added more than once.  For each
	* property,  the listener will be invoked the number of times it was added
	* for that property.
	* If <code>propertyName</code> or <code>listener</code> is null, no
	* exception is thrown and no action is taken.
	*
	* @param propertyName  The name of the property to listen on.
	* @param listener  The VetoableChangeListener to be added
	*/
	@:overload @:public public function addVetoableChangeListener(propertyName : String, listener : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Remove a VetoableChangeListener for a specific property.
	* If <code>listener</code> was added more than once to the same event
	* source for the specified property, it will be notified one less time
	* after being removed.
	* If <code>propertyName</code> is null, no exception is thrown and no
	* action is taken.
	* If <code>listener</code> is null, or was never added for the specified
	* property, no exception is thrown and no action is taken.
	*
	* @param propertyName  The name of the property that was listened on.
	* @param listener  The VetoableChangeListener to be removed
	*/
	@:overload @:public public function removeVetoableChangeListener(propertyName : String, listener : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners which have been associated
	* with the named property.
	*
	* @param propertyName  The name of the property being listened to
	* @return all the <code>VetoableChangeListeners</code> associated with
	*         the named property.  If no such listeners have been added,
	*         or if <code>propertyName</code> is null, an empty array is
	*         returned.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getVetoableChangeListeners(propertyName : String) : java.NativeArray<java.beans.VetoableChangeListener>;
	
	/**
	* Reports a constrained property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* Any listener can throw a {@code PropertyVetoException} to veto the update.
	* If one of the listeners vetoes the update, this method passes
	* a new "undo" {@code PropertyChangeEvent} that reverts to the old value
	* to all listeners that already confirmed this update
	* and throws the {@code PropertyVetoException} again.
	* <p>
	* No event is fired if old and new values are equal and non-null.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #fireVetoableChange(PropertyChangeEvent)} method.
	*
	* @param propertyName  the programmatic name of the property that is about to change
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @throws PropertyVetoException if one of listeners vetoes the property update
	*/
	@:overload @:public public function fireVetoableChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Reports an integer constrained property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* Any listener can throw a {@code PropertyVetoException} to veto the update.
	* If one of the listeners vetoes the update, this method passes
	* a new "undo" {@code PropertyChangeEvent} that reverts to the old value
	* to all listeners that already confirmed this update
	* and throws the {@code PropertyVetoException} again.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #fireVetoableChange(String, Object, Object)} method.
	*
	* @param propertyName  the programmatic name of the property that is about to change
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @throws PropertyVetoException if one of listeners vetoes the property update
	*/
	@:overload @:public public function fireVetoableChange(propertyName : String, oldValue : Int, newValue : Int) : Void;
	
	/**
	* Reports a boolean constrained property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* Any listener can throw a {@code PropertyVetoException} to veto the update.
	* If one of the listeners vetoes the update, this method passes
	* a new "undo" {@code PropertyChangeEvent} that reverts to the old value
	* to all listeners that already confirmed this update
	* and throws the {@code PropertyVetoException} again.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #fireVetoableChange(String, Object, Object)} method.
	*
	* @param propertyName  the programmatic name of the property that is about to change
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @throws PropertyVetoException if one of listeners vetoes the property update
	*/
	@:overload @:public public function fireVetoableChange(propertyName : String, oldValue : Bool, newValue : Bool) : Void;
	
	/**
	* Fires a property change event to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* Any listener can throw a {@code PropertyVetoException} to veto the update.
	* If one of the listeners vetoes the update, this method passes
	* a new "undo" {@code PropertyChangeEvent} that reverts to the old value
	* to all listeners that already confirmed this update
	* and throws the {@code PropertyVetoException} again.
	* <p>
	* No event is fired if the given event's old and new values are equal and non-null.
	*
	* @param event  the {@code PropertyChangeEvent} to be fired
	* @throws PropertyVetoException if one of listeners vetoes the property update
	*/
	@:overload @:public public function fireVetoableChange(event : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Check if there are any listeners for a specific property, including
	* those registered on all properties.  If <code>propertyName</code>
	* is null, only check for listeners registered on all properties.
	*
	* @param propertyName  the property name.
	* @return true if there are one or more listeners for the given property
	*/
	@:overload @:public public function hasListeners(propertyName : String) : Bool;
	
	
}
/**
* This is a {@link ChangeListenerMap ChangeListenerMap} implementation
* that works with {@link VetoableChangeListener VetoableChangeListener} objects.
*/
@:native('java$beans$VetoableChangeSupport$VetoableChangeListenerMap') @:internal extern class VetoableChangeSupport_VetoableChangeListenerMap extends java.beans.ChangeListenerMap<java.beans.VetoableChangeListener>
{
	/**
	* Creates an array of {@link VetoableChangeListener VetoableChangeListener} objects.
	* This method uses the same instance of the empty array
	* when {@code length} equals {@code 0}.
	*
	* @param length  the array length
	* @return        an array with specified length
	*/
	@:overload @:protected override private function newArray(length : Int) : java.NativeArray<java.beans.VetoableChangeListener>;
	
	/**
	* Creates a {@link VetoableChangeListenerProxy VetoableChangeListenerProxy}
	* object for the specified property.
	*
	* @param name      the name of the property to listen on
	* @param listener  the listener to process events
	* @return          a {@code VetoableChangeListenerProxy} object
	*/
	@:overload @:protected private function newProxy(name : String, listener : java.beans.VetoableChangeListener) : java.beans.VetoableChangeListener;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public @:final public function extract(listener : java.beans.VetoableChangeListener) : java.beans.VetoableChangeListener;
	
	
}
