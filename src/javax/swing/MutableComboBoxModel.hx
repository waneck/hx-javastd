package javax.swing;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
/**
* A mutable version of <code>ComboBoxModel</code>.
*
* @param <E> the type of the elements of this model
*
* @author Tom Santos
*/
extern interface MutableComboBoxModel<E> extends javax.swing.ComboBoxModel<E>
{
	/**
	* Adds an item at the end of the model. The implementation of this method
	* should notify all registered <code>ListDataListener</code>s that the
	* item has been added.
	*
	* @param item the item to be added
	*/
	@:overload public function addElement(item : E) : Void;
	
	/**
	* Removes an item from the model. The implementation of this method should
	* should notify all registered <code>ListDataListener</code>s that the
	* item has been removed.
	*
	* @param obj the <code>Object</code> to be removed
	*/
	@:overload public function removeElement(obj : Dynamic) : Void;
	
	/**
	* Adds an item at a specific index.  The implementation of this method
	* should notify all registered <code>ListDataListener</code>s that the
	* item has been added.
	*
	* @param item  the item to be added
	* @param index  location to add the object
	*/
	@:overload public function insertElementAt(item : E, index : Int) : Void;
	
	/**
	* Removes an item at a specific index. The implementation of this method
	* should notify all registered <code>ListDataListener</code>s that the
	* item has been removed.
	*
	* @param index  location of the item to be removed
	*/
	@:overload public function removeElementAt(index : Int) : Void;
	
	
}