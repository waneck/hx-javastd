package javax.swing.colorchooser;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultColorSelectionModel implements javax.swing.colorchooser.ColorSelectionModel implements java.io.Serializable
{
	/**
	* Only one <code>ChangeEvent</code> is needed per model instance
	* since the event's only (read-only) state is the source property.
	* The source of events generated here is always "this".
	*/
	@:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	private var listenerList : javax.swing.event.EventListenerList;
	
	/**
	* Creates a <code>DefaultColorSelectionModel</code> with the
	* current color set to <code>Color.white</code>.  This is
	* the default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>DefaultColorSelectionModel</code> with the
	* current color set to <code>color</code>, which should be
	* non-<code>null</code>.  Note that setting the color to
	* <code>null</code> is undefined and may have unpredictable
	* results.
	*
	* @param color the new <code>Color</code>
	*/
	@:overload public function new(color : java.awt.Color) : Void;
	
	/**
	* Returns the selected <code>Color</code> which should be
	* non-<code>null</code>.
	*
	* @return the selected <code>Color</code>
	*/
	@:overload public function getSelectedColor() : java.awt.Color;
	
	/**
	* Sets the selected color to <code>color</code>.
	* Note that setting the color to <code>null</code>
	* is undefined and may have unpredictable results.
	* This method fires a state changed event if it sets the
	* current color to a new non-<code>null</code> color;
	* if the new color is the same as the current color,
	* no event is fired.
	*
	* @param color the new <code>Color</code>
	*/
	@:overload public function setSelectedColor(color : java.awt.Color) : Void;
	
	/**
	* Adds a <code>ChangeListener</code> to the model.
	*
	* @param l the <code>ChangeListener</code> to be added
	*/
	@:overload public function addChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Removes a <code>ChangeListener</code> from the model.
	* @param l the <code>ChangeListener</code> to be removed
	*/
	@:overload public function removeChangeListener(l : javax.swing.event.ChangeListener) : Void;
	
	/**
	* Returns an array of all the <code>ChangeListener</code>s added
	* to this <code>DefaultColorSelectionModel</code> with
	* <code>addChangeListener</code>.
	*
	* @return all of the <code>ChangeListener</code>s added, or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getChangeListeners() : java.NativeArray<javax.swing.event.ChangeListener>;
	
	/**
	* Runs each <code>ChangeListener</code>'s
	* <code>stateChanged</code> method.
	*
	* <!-- @see #setRangeProperties    //bad link-->
	* @see EventListenerList
	*/
	@:overload private function fireStateChanged() : Void;
	
	
}
