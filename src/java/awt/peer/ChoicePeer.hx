package java.awt.peer;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface ChoicePeer extends java.awt.peer.ComponentPeer
{
	/**
	* Adds an item with the string {@code item} to the combo box list
	* at index {@code index}.
	*
	* @param item the label to be added to the list
	* @param index the index where to add the item
	*
	* @see Choice#add(String)
	*/
	@:overload public function add(item : String, index : Int) : Void;
	
	/**
	* Removes the item at index {@code index} from the combo box list.
	*
	* @param index the index where to remove the item
	*
	* @see Choice#remove(int)
	*/
	@:overload public function remove(index : Int) : Void;
	
	/**
	* Removes all items from the combo box list.
	*
	* @see Choice#removeAll()
	*/
	@:overload public function removeAll() : Void;
	
	/**
	* Selects the item at index {@code index}.
	*
	* @param index the index which should be selected
	*
	* @see Choice#select(int)
	*/
	@:overload public function select(index : Int) : Void;
	
	
}
