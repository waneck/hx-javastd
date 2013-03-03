package javax.swing;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class SpinnerListModel extends javax.swing.AbstractSpinnerModel implements java.io.Serializable
{
	/**
	* Constructs a <code>SpinnerModel</code> whose sequence of
	* values is defined by the specified <code>List</code>.
	* The initial value (<i>current element</i>)
	* of the model will be <code>values.get(0)</code>.
	* If <code>values</code> is <code>null</code> or has zero
	* size, an <code>IllegalArugmentException</code> is thrown.
	*
	* @param values the sequence this model represents
	* @throws IllegalArugmentException if <code>values</code> is
	*    <code>null</code> or zero size
	*/
	@:overload @:public public function new(values : java.util.List<Dynamic>) : Void;
	
	/**
	* Constructs a <code>SpinnerModel</code> whose sequence of values
	* is defined by the specified array.  The initial value of the model
	* will be <code>values[0]</code>.  If <code>values</code> is
	* <code>null</code> or has zero length, an
	* <code>IllegalArugmentException</code> is thrown.
	*
	* @param values the sequence this model represents
	* @throws IllegalArugmentException if <code>values</code> is
	*    <code>null</code> or zero length
	*/
	@:overload @:public public function new(values : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructs an effectively empty <code>SpinnerListModel</code>.
	* The model's list will contain a single
	* <code>"empty"</code> string element.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the <code>List</code> that defines the sequence for this model.
	*
	* @return the value of the <code>list</code> property
	* @see #setList
	*/
	@:overload @:public public function getList() : java.util.List<Dynamic>;
	
	/**
	* Changes the list that defines this sequence and resets the index
	* of the models <code>value</code> to zero.  Note that <code>list</code>
	* is not copied, the model just stores a reference to it.
	* <p>
	* This method fires a <code>ChangeEvent</code> if <code>list</code> is
	* not equal to the current list.
	*
	* @param list the sequence that this model represents
	* @throws IllegalArgumentException if <code>list</code> is
	*    <code>null</code> or zero length
	* @see #getList
	*/
	@:overload @:public public function setList(list : java.util.List<Dynamic>) : Void;
	
	/**
	* Returns the current element of the sequence.
	*
	* @return the <code>value</code> property
	* @see SpinnerModel#getValue
	* @see #setValue
	*/
	@:overload @:public override public function getValue() : Dynamic;
	
	/**
	* Changes the current element of the sequence and notifies
	* <code>ChangeListeners</code>.  If the specified
	* value is not equal to an element of the underlying sequence
	* then an <code>IllegalArgumentException</code> is thrown.
	* In the following example the <code>setValue</code> call
	* would cause an exception to be thrown:
	* <pre>
	* String[] values = {"one", "two", "free", "four"};
	* SpinnerModel model = new SpinnerListModel(values);
	* model.setValue("TWO");
	* </pre>
	*
	* @param elt the sequence element that will be model's current value
	* @throws IllegalArgumentException if the specified value isn't allowed
	* @see SpinnerModel#setValue
	* @see #getValue
	*/
	@:overload @:public override public function setValue(elt : Dynamic) : Void;
	
	/**
	* Returns the next legal value of the underlying sequence or
	* <code>null</code> if value is already the last element.
	*
	* @return the next legal value of the underlying sequence or
	*     <code>null</code> if value is already the last element
	* @see SpinnerModel#getNextValue
	* @see #getPreviousValue
	*/
	@:overload @:public override public function getNextValue() : Dynamic;
	
	/**
	* Returns the previous element of the underlying sequence or
	* <code>null</code> if value is already the first element.
	*
	* @return the previous element of the underlying sequence or
	*     <code>null</code> if value is already the first element
	* @see SpinnerModel#getPreviousValue
	* @see #getNextValue
	*/
	@:overload @:public override public function getPreviousValue() : Dynamic;
	
	
}
