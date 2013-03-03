package javax.swing;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
* A model that supports at most one indexed selection.
*
* @author Dave Moore
*/
extern interface SingleSelectionModel
{
	/**
	* Returns the model's selection.
	*
	* @return  the model's selection, or -1 if there is no selection
	* @see     #setSelectedIndex
	*/
	@:overload @:public public function getSelectedIndex() : Int;
	
	/**
	* Sets the model's selected index to <I>index</I>.
	*
	* Notifies any listeners if the model changes
	*
	* @param index an int specifying the model selection
	* @see   #getSelectedIndex
	* @see   #addChangeListener
	*/
	@:overload @:public public function setSelectedIndex(index : Int) : Void;
	
	/**
	* Clears the selection (to -1).
	*/
	@:overload @:public public function clearSelection() : Void;
	
	/**
	* Returns true if the selection model currently has a selected value.
	* @return true if a value is currently selected
	*/
	@:overload @:public public function isSelected() : Bool;
	
	/**
	* Adds <I>listener</I> as a listener to changes in the model.
	* @param listener the ChangeListener to add
	*/
	@:overload public function addChangeListener(listener : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes <I>listener</I> as a listener to changes in the model.
	* @param listener the ChangeListener to remove
	*/
	@:overload public function removeChangeListener(listener : javax.swing.event.ChangeListener) : Void;
	
	
}
