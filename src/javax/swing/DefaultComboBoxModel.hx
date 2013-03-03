package javax.swing;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultComboBoxModel<E> extends javax.swing.AbstractListModel<E> implements javax.swing.MutableComboBoxModel<E> implements java.io.Serializable
{
	/**
	* Constructs an empty DefaultComboBoxModel object.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a DefaultComboBoxModel object initialized with
	* an array of objects.
	*
	* @param items  an array of Object objects
	*/
	@:overload @:public public function new(items : java.NativeArray<E>) : Void;
	
	/**
	* Constructs a DefaultComboBoxModel object initialized with
	* a vector.
	*
	* @param v  a Vector object ...
	*/
	@:overload @:public public function new(v : java.util.Vector<E>) : Void;
	
	/**
	* Set the value of the selected item. The selected item may be null.
	* <p>
	* @param anObject The combo box value or null for no selection.
	*/
	@:overload @:public public function setSelectedItem(anObject : Dynamic) : Void;
	
	@:overload @:public public function getSelectedItem() : Dynamic;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getElementAt(index : Int) : E;
	
	/**
	* Returns the index-position of the specified object in the list.
	*
	* @param anObject
	* @return an int representing the index position, where 0 is
	*         the first position
	*/
	@:overload @:public public function getIndexOf(anObject : Dynamic) : Int;
	
	@:overload @:public public function addElement(anObject : E) : Void;
	
	@:overload @:public public function insertElementAt(anObject : E, index : Int) : Void;
	
	@:overload @:public public function removeElementAt(index : Int) : Void;
	
	@:overload @:public public function removeElement(anObject : Dynamic) : Void;
	
	/**
	* Empties the list.
	*/
	@:overload @:public public function removeAllElements() : Void;
	
	
}
