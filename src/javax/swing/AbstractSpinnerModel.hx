package javax.swing;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractSpinnerModel implements javax.swing.SpinnerModel implements java.io.Serializable
{
	/**
	* The list of ChangeListeners for this model.  Subclasses may
	* store their own listeners here.
	*/
	private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Adds a ChangeListener to the model's listener list.  The
	* ChangeListeners must be notified when the models value changes.
	*
	* @param l the ChangeListener to add
	* @see #removeChangeListener
	* @see SpinnerModel#addChangeListener
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a ChangeListener from the model's listener list.
	*
	* @param l the ChangeListener to remove
	* @see #addChangeListener
	* @see SpinnerModel#removeChangeListener
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this AbstractSpinnerModel with addChangeListener().
	*
	* @return all of the <code>ChangeListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Run each ChangeListeners stateChanged() method.
	*
	* @see #setValue
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	/**
	* Return an array of all the listeners of the given type that
	* were added to this model.  For example to find all of the
	* ChangeListeners added to this model:
	* <pre>
	* myAbstractSpinnerModel.getListeners(ChangeListener.class);
	* </pre>
	*
	* @param listenerType the type of listeners to return, e.g. ChangeListener.class
	* @return all of the objects receiving <em>listenerType</em> notifications
	*         from this model
	*/
	@:overload public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Changes current value of the model, typically this value is displayed
	* by the <code>editor</code> part of a  <code>JSpinner</code>.
	* If the <code>SpinnerModel</code> implementation doesn't support
	* the specified value then an <code>IllegalArgumentException</code>
	* is thrown.  For example a <code>SpinnerModel</code> for numbers might
	* only support values that are integer multiples of ten. In
	* that case, <code>model.setValue(new Number(11))</code>
	* would throw an exception.
	*
	* @throws IllegalArgumentException if <code>value</code> isn't allowed
	* @see #getValue
	*/
	@:overload public function setValue(value : Dynamic) : Void;
	
	/**
	* The <i>current element</i> of the sequence.  This element is usually
	* displayed by the <code>editor</code> part of a <code>JSpinner</code>.
	*
	* @return the current spinner value.
	* @see #setValue
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Return the object in the sequence that comes after the object returned
	* by <code>getValue()</code>. If the end of the sequence has been reached
	* then return null.  Calling this method does not effect <code>value</code>.
	*
	* @return the next legal value or null if one doesn't exist
	* @see #getValue
	* @see #getPreviousValue
	*/
	@:overload public function getNextValue() : Dynamic;
	
	/**
	* Return the object in the sequence that comes before the object returned
	* by <code>getValue()</code>.  If the end of the sequence has been reached then
	* return null. Calling this method does not effect <code>value</code>.
	*
	* @return the previous legal value or null if one doesn't exist
	* @see #getValue
	* @see #getNextValue
	*/
	@:overload public function getPreviousValue() : Dynamic;
	
	
}
