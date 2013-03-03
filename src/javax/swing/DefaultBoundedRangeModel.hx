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
extern class DefaultBoundedRangeModel implements javax.swing.BoundedRangeModel implements java.io.Serializable
{
	/**
	* Only one <code>ChangeEvent</code> is needed per model instance since the
	* event's only (read-only) state is the source property.  The source
	* of events generated here is always "this".
	*/
	@:protected @:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/** The listeners waiting for model changes. */
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Initializes all of the properties with default values.
	* Those values are:
	* <ul>
	* <li><code>value</code> = 0
	* <li><code>extent</code> = 0
	* <li><code>minimum</code> = 0
	* <li><code>maximum</code> = 100
	* <li><code>adjusting</code> = false
	* </ul>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Initializes value, extent, minimum and maximum. Adjusting is false.
	* Throws an <code>IllegalArgumentException</code> if the following
	* constraints aren't satisfied:
	* <pre>
	* min &lt;= value &lt;= value+extent &lt;= max
	* </pre>
	*/
	@:overload @:public public function new(value : Int, extent : Int, min : Int, max : Int) : Void;
	
	/**
	* Returns the model's current value.
	* @return the model's current value
	* @see #setValue
	* @see BoundedRangeModel#getValue
	*/
	@:overload @:public public function getValue() : Int;
	
	/**
	* Returns the model's extent.
	* @return the model's extent
	* @see #setExtent
	* @see BoundedRangeModel#getExtent
	*/
	@:overload @:public public function getExtent() : Int;
	
	/**
	* Returns the model's minimum.
	* @return the model's minimum
	* @see #setMinimum
	* @see BoundedRangeModel#getMinimum
	*/
	@:overload @:public public function getMinimum() : Int;
	
	/**
	* Returns the model's maximum.
	* @return  the model's maximum
	* @see #setMaximum
	* @see BoundedRangeModel#getMaximum
	*/
	@:overload @:public public function getMaximum() : Int;
	
	/**
	* Sets the current value of the model. For a slider, that
	* determines where the knob appears. Ensures that the new
	* value, <I>n</I> falls within the model's constraints:
	* <pre>
	*     minimum &lt;= value &lt;= value+extent &lt;= maximum
	* </pre>
	*
	* @see BoundedRangeModel#setValue
	*/
	@:overload @:public public function setValue(n : Int) : Void;
	
	/**
	* Sets the extent to <I>n</I> after ensuring that <I>n</I>
	* is greater than or equal to zero and falls within the model's
	* constraints:
	* <pre>
	*     minimum &lt;= value &lt;= value+extent &lt;= maximum
	* </pre>
	* @see BoundedRangeModel#setExtent
	*/
	@:overload @:public public function setExtent(n : Int) : Void;
	
	/**
	* Sets the minimum to <I>n</I> after ensuring that <I>n</I>
	* that the other three properties obey the model's constraints:
	* <pre>
	*     minimum &lt;= value &lt;= value+extent &lt;= maximum
	* </pre>
	* @see #getMinimum
	* @see BoundedRangeModel#setMinimum
	*/
	@:overload @:public public function setMinimum(n : Int) : Void;
	
	/**
	* Sets the maximum to <I>n</I> after ensuring that <I>n</I>
	* that the other three properties obey the model's constraints:
	* <pre>
	*     minimum &lt;= value &lt;= value+extent &lt;= maximum
	* </pre>
	* @see BoundedRangeModel#setMaximum
	*/
	@:overload @:public public function setMaximum(n : Int) : Void;
	
	/**
	* Sets the <code>valueIsAdjusting</code> property.
	*
	* @see #getValueIsAdjusting
	* @see #setValue
	* @see BoundedRangeModel#setValueIsAdjusting
	*/
	@:overload @:public public function setValueIsAdjusting(b : Bool) : Void;
	
	/**
	* Returns true if the value is in the process of changing
	* as a result of actions being taken by the user.
	*
	* @return the value of the <code>valueIsAdjusting</code> property
	* @see #setValue
	* @see BoundedRangeModel#getValueIsAdjusting
	*/
	@:overload @:public public function getValueIsAdjusting() : Bool;
	
	/**
	* Sets all of the <code>BoundedRangeModel</code> properties after forcing
	* the arguments to obey the usual constraints:
	* <pre>
	*     minimum &lt;= value &lt;= value+extent &lt;= maximum
	* </pre>
	* <p>
	* At most, one <code>ChangeEvent</code> is generated.
	*
	* @see BoundedRangeModel#setRangeProperties
	* @see #setValue
	* @see #setExtent
	* @see #setMinimum
	* @see #setMaximum
	* @see #setValueIsAdjusting
	*/
	@:overload @:public public function setRangeProperties(newValue : Int, newExtent : Int, newMin : Int, newMax : Int, adjusting : Bool) : Void;
	
	/**
	* Adds a <code>ChangeListener</code>.  The change listeners are run each
	* time any one of the Bounded Range model properties changes.
	*
	* @param l the ChangeListener to add
	* @see #removeChangeListener
	* @see BoundedRangeModel#addChangeListener
	*/
	@:overload @:public public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a <code>ChangeListener</code>.
	*
	* @param l the <code>ChangeListener</code> to remove
	* @see #addChangeListener
	* @see BoundedRangeModel#removeChangeListener
	*/
	@:overload @:public public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the change listeners
	* registered on this <code>DefaultBoundedRangeModel</code>.
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
	* Runs each <code>ChangeListener</code>'s <code>stateChanged</code> method.
	*
	* @see #setRangeProperties
	* @see EventListenerList
	*/
	@:overload @:protected private function fireStateChanged() : Void;
	
	/**
	* Returns a string that displays all of the
	* <code>BoundedRangeModel</code> properties.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns an array of all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s
	* are registered using the <code>add<em>Foo</em>Listener</code> method.
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a <code>DefaultBoundedRangeModel</code>
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
