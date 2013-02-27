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
extern class ButtonGroup implements java.io.Serializable
{
	/**
	* This class is used to create a multiple-exclusion scope for
	* a set of buttons. Creating a set of buttons with the
	* same <code>ButtonGroup</code> object means that
	* turning "on" one of those buttons
	* turns off all other buttons in the group.
	* <p>
	* A <code>ButtonGroup</code> can be used with
	* any set of objects that inherit from <code>AbstractButton</code>.
	* Typically a button group contains instances of
	* <code>JRadioButton</code>,
	* <code>JRadioButtonMenuItem</code>,
	* or <code>JToggleButton</code>.
	* It wouldn't make sense to put an instance of
	* <code>JButton</code> or <code>JMenuItem</code>
	* in a button group
	* because <code>JButton</code> and <code>JMenuItem</code>
	* don't implement the selected state.
	* <p>
	* Initially, all buttons in the group are unselected.
	* <p>
	* For examples and further information on using button groups see
	* <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/button.html#radiobutton">How to Use Radio Buttons</a>,
	* a section in <em>The Java Tutorial</em>.
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases. The current serialization support is
	* appropriate for short term storage or RMI between applications running
	* the same version of Swing.  As of 1.4, support for long term storage
	* of all JavaBeans<sup><font size="-2">TM</font></sup>
	* has been added to the <code>java.beans</code> package.
	* Please see {@link java.beans.XMLEncoder}.
	*
	* @author Jeff Dinkins
	*/
	private var buttons : java.util.Vector<javax.swing.AbstractButton>;
	
	/**
	* Creates a new <code>ButtonGroup</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Adds the button to the group.
	* @param b the button to be added
	*/
	@:overload public function add(b : javax.swing.AbstractButton) : Void;
	
	/**
	* Removes the button from the group.
	* @param b the button to be removed
	*/
	@:overload public function remove(b : javax.swing.AbstractButton) : Void;
	
	/**
	* Clears the selection such that none of the buttons
	* in the <code>ButtonGroup</code> are selected.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function clearSelection() : Void;
	
	/**
	* Returns all the buttons that are participating in
	* this group.
	* @return an <code>Enumeration</code> of the buttons in this group
	*/
	@:overload public function getElements() : java.util.Enumeration<javax.swing.AbstractButton>;
	
	/**
	* Returns the model of the selected button.
	* @return the selected button model
	*/
	@:overload public function getSelection() : javax.swing.ButtonModel;
	
	/**
	* Sets the selected value for the <code>ButtonModel</code>.
	* Only one button in the group may be selected at a time.
	* @param m the <code>ButtonModel</code>
	* @param b <code>true</code> if this button is to be
	*   selected, otherwise <code>false</code>
	*/
	@:overload public function setSelected(m : javax.swing.ButtonModel, b : Bool) : Void;
	
	/**
	* Returns whether a <code>ButtonModel</code> is selected.
	* @return <code>true</code> if the button is selected,
	*   otherwise returns <code>false</code>
	*/
	@:overload public function isSelected(m : javax.swing.ButtonModel) : Bool;
	
	/**
	* Returns the number of buttons in the group.
	* @return the button count
	* @since 1.3
	*/
	@:require(java3) @:overload public function getButtonCount() : Int;
	
	
}
