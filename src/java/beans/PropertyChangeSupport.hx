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
extern class PropertyChangeSupport implements java.io.Serializable
{
	/**
	* Constructs a <code>PropertyChangeSupport</code> object.
	*
	* @param sourceBean  The bean to be given as the source for any events.
	*/
	@:overload public function new(sourceBean : Dynamic) : Void;
	
	/**
	* Add a PropertyChangeListener to the listener list.
	* The listener is registered for all properties.
	* The same listener object may be added more than once, and will be called
	* as many times as it is added.
	* If <code>listener</code> is null, no exception is thrown and no action
	* is taken.
	*
	* @param listener  The PropertyChangeListener to be added
	*/
	@:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a PropertyChangeListener from the listener list.
	* This removes a PropertyChangeListener that was registered
	* for all properties.
	* If <code>listener</code> was added more than once to the same event
	* source, it will be notified one less time after being removed.
	* If <code>listener</code> is null, or was never added, no exception is
	* thrown and no action is taken.
	*
	* @param listener  The PropertyChangeListener to be removed
	*/
	@:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners that were added to the
	* PropertyChangeSupport object with addPropertyChangeListener().
	* <p>
	* If some listeners have been added with a named property, then
	* the returned array will be a mixture of PropertyChangeListeners
	* and <code>PropertyChangeListenerProxy</code>s. If the calling
	* method is interested in distinguishing the listeners then it must
	* test each element to see if it's a
	* <code>PropertyChangeListenerProxy</code>, perform the cast, and examine
	* the parameter.
	*
	* <pre>
	* PropertyChangeListener[] listeners = bean.getPropertyChangeListeners();
	* for (int i = 0; i < listeners.length; i++) {
	*   if (listeners[i] instanceof PropertyChangeListenerProxy) {
	*     PropertyChangeListenerProxy proxy =
	*                    (PropertyChangeListenerProxy)listeners[i];
	*     if (proxy.getPropertyName().equals("foo")) {
	*       // proxy is a PropertyChangeListener which was associated
	*       // with the property named "foo"
	*     }
	*   }
	* }
	*</pre>
	*
	* @see PropertyChangeListenerProxy
	* @return all of the <code>PropertyChangeListeners</code> added or an
	*         empty array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPropertyChangeListeners() : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Add a PropertyChangeListener for a specific property.  The listener
	* will be invoked only when a call on firePropertyChange names that
	* specific property.
	* The same listener object may be added more than once.  For each
	* property,  the listener will be invoked the number of times it was added
	* for that property.
	* If <code>propertyName</code> or <code>listener</code> is null, no
	* exception is thrown and no action is taken.
	*
	* @param propertyName  The name of the property to listen on.
	* @param listener  The PropertyChangeListener to be added
	*/
	@:overload public function addPropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a PropertyChangeListener for a specific property.
	* If <code>listener</code> was added more than once to the same event
	* source for the specified property, it will be notified one less time
	* after being removed.
	* If <code>propertyName</code> is null,  no exception is thrown and no
	* action is taken.
	* If <code>listener</code> is null, or was never added for the specified
	* property, no exception is thrown and no action is taken.
	*
	* @param propertyName  The name of the property that was listened on.
	* @param listener  The PropertyChangeListener to be removed
	*/
	@:overload public function removePropertyChangeListener(propertyName : String, listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Returns an array of all the listeners which have been associated
	* with the named property.
	*
	* @param propertyName  The name of the property being listened to
	* @return all of the <code>PropertyChangeListeners</code> associated with
	*         the named property.  If no such listeners have been added,
	*         or if <code>propertyName</code> is null, an empty array is
	*         returned.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPropertyChangeListeners(propertyName : String) : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Reports a bound property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal and non-null.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #firePropertyChange(PropertyChangeEvent)} method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	*/
	@:overload public function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Reports an integer bound property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #firePropertyChange(String, Object, Object)}  method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	*/
	@:overload public function firePropertyChange(propertyName : String, oldValue : Int, newValue : Int) : Void;
	
	/**
	* Reports a boolean bound property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #firePropertyChange(String, Object, Object)}  method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	*/
	@:overload public function firePropertyChange(propertyName : String, oldValue : Bool, newValue : Bool) : Void;
	
	/**
	* Fires a property change event to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if the given event's old and new values are equal and non-null.
	*
	* @param event  the {@code PropertyChangeEvent} to be fired
	*/
	@:overload public function firePropertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Reports a bound indexed property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal and non-null.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #firePropertyChange(PropertyChangeEvent)} method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param index         the index of the property element that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @since 1.5
	*/
	@:require(java5) @:overload public function fireIndexedPropertyChange(propertyName : String, index : Int, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Reports an integer bound indexed property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #fireIndexedPropertyChange(String, int, Object, Object)} method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param index         the index of the property element that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @since 1.5
	*/
	@:require(java5) @:overload public function fireIndexedPropertyChange(propertyName : String, index : Int, oldValue : Int, newValue : Int) : Void;
	
	/**
	* Reports a boolean bound indexed property update to listeners
	* that have been registered to track updates of
	* all properties or a property with the specified name.
	* <p>
	* No event is fired if old and new values are equal.
	* <p>
	* This is merely a convenience wrapper around the more general
	* {@link #fireIndexedPropertyChange(String, int, Object, Object)} method.
	*
	* @param propertyName  the programmatic name of the property that was changed
	* @param index         the index of the property element that was changed
	* @param oldValue      the old value of the property
	* @param newValue      the new value of the property
	* @since 1.5
	*/
	@:require(java5) @:overload public function fireIndexedPropertyChange(propertyName : String, index : Int, oldValue : Bool, newValue : Bool) : Void;
	
	/**
	* Check if there are any listeners for a specific property, including
	* those registered on all properties.  If <code>propertyName</code>
	* is null, only check for listeners registered on all properties.
	*
	* @param propertyName  the property name.
	* @return true if there are one or more listeners for the given property
	*/
	@:overload public function hasListeners(propertyName : String) : Bool;
	
	
}
/**
* This is a {@link ChangeListenerMap ChangeListenerMap} implementation
* that works with {@link PropertyChangeListener PropertyChangeListener} objects.
*/
@:native('java$beans$PropertyChangeSupport$PropertyChangeListenerMap') @:internal extern class PropertyChangeSupport_PropertyChangeListenerMap extends java.beans.ChangeListenerMap<java.beans.PropertyChangeListener>
{
	/**
	* Creates an array of {@link PropertyChangeListener PropertyChangeListener} objects.
	* This method uses the same instance of the empty array
	* when {@code length} equals {@code 0}.
	*
	* @param length  the array length
	* @return        an array with specified length
	*/
	@:overload override private function newArray(length : Int) : java.NativeArray<java.beans.PropertyChangeListener>;
	
	/**
	* Creates a {@link PropertyChangeListenerProxy PropertyChangeListenerProxy}
	* object for the specified property.
	*
	* @param name      the name of the property to listen on
	* @param listener  the listener to process events
	* @return          a {@code PropertyChangeListenerProxy} object
	*/
	@:overload private function newProxy(name : String, listener : java.beans.PropertyChangeListener) : java.beans.PropertyChangeListener;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:final public function extract(listener : java.beans.PropertyChangeListener) : java.beans.PropertyChangeListener;
	
	
}
