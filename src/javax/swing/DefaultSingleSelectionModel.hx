package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultSingleSelectionModel implements javax.swing.SingleSelectionModel implements java.io.Serializable
{
	/* Only one ModelChangeEvent is needed per model instance since the
	* event's only (read-only) state is the source property.  The source
	* of events generated here is always "this".
	*/
	@:protected @:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/** The collection of registered listeners */
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	@:overload @:public public function getSelectedIndex() : Int;
	
	@:overload @:public public function setSelectedIndex(index : Int) : Void;
	
	@:overload @:public public function clearSelection() : Void;
	
	@:overload @:public public function isSelected() : Bool;
	
	/**
	* Adds a <code>ChangeListener</code> to the button.
	*/
	@:overload @:public public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a <code>ChangeListener</code> from the button.
	*/
	@:overload @:public public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the change listeners
	* registered on this <code>DefaultSingleSelectionModel</code>.
	*
	* @return all of this model's <code>ChangeListener</code>s
	*         or an empty
	*         array if no change listeners are currently registered
	*
	* @see #addChangeListener
	* @see #removeChangeListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	* @see EventListenerList
	*/
	@:overload @:protected private function fireStateChanged() : Void;
	
	/**
	* Returns an array of all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s
	* are registered using the <code>add<em>Foo</em>Listener</code> method.
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a <code>DefaultSingleSelectionModel</code>
	* instance <code>m</code>
	* for its change listeners
	* with the following code:
	*
	* <pre>ChangeListener[] cls = (ChangeListener[])(m.getListeners(ChangeListener.class));</pre>
	*
	* If no such listeners exist,
	* this method returns an empty array.
	*
	* @param listenerType  the type of listeners requested;
	*          this parameter should specify an interface
	*          that descends from <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s
	*          on this model,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code> doesn't
	*          specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getChangeListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	
}
