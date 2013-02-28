package javax.swing;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class JToggleButton extends javax.swing.AbstractButton implements javax.accessibility.Accessible
{
	/**
	* Creates an initially unselected toggle button
	* without setting the text or image.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an initially unselected toggle button
	* with the specified image but no text.
	*
	* @param icon  the image that the button should display
	*/
	@:overload public function new(icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a toggle button with the specified image
	* and selection state, but no text.
	*
	* @param icon  the image that the button should display
	* @param selected  if true, the button is initially selected;
	*                  otherwise, the button is initially unselected
	*/
	@:overload public function new(icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Creates an unselected toggle button with the specified text.
	*
	* @param text  the string displayed on the toggle button
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Creates a toggle button with the specified text
	* and selection state.
	*
	* @param text  the string displayed on the toggle button
	* @param selected  if true, the button is initially selected;
	*                  otherwise, the button is initially unselected
	*/
	@:overload public function new(text : String, selected : Bool) : Void;
	
	/**
	* Creates a toggle button where properties are taken from the
	* Action supplied.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(a : javax.swing.Action) : Void;
	
	/**
	* Creates a toggle button that has the specified text and image,
	* and that is initially unselected.
	*
	* @param text the string displayed on the button
	* @param icon  the image that the button should display
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a toggle button with the specified text, image, and
	* selection state.
	*
	* @param text the text of the toggle button
	* @param icon  the image that the button should display
	* @param selected  if true, the button is initially selected;
	*                  otherwise, the button is initially unselected
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the l&f class
	* that renders this component.
	*
	* @return String "ToggleButtonUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*  description: A string that specifies the name of the L&F class
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns a string representation of this JToggleButton. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JToggleButton.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JToggleButton.
	* For toggle buttons, the AccessibleContext takes the form of an
	* AccessibleJToggleButton.
	* A new AccessibleJToggleButton instance is created if necessary.
	*
	* @return an AccessibleJToggleButton that serves as the
	*         AccessibleContext of this JToggleButton
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this ToggleButton.
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* The ToggleButton model
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JToggleButton$ToggleButtonModel') extern class JToggleButton_ToggleButtonModel extends javax.swing.DefaultButtonModel
{
	/**
	* Creates a new ToggleButton Model
	*/
	@:overload public function new() : Void;
	
	/**
	* Checks if the button is selected.
	*/
	@:overload override public function isSelected() : Bool;
	
	/**
	* Sets the selected state of the button.
	* @param b true selects the toggle button,
	*          false deselects the toggle button.
	*/
	@:overload override public function setSelected(b : Bool) : Void;
	
	/**
	* Sets the pressed state of the toggle button.
	*/
	@:overload override public function setPressed(b : Bool) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JToggleButton</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to toggle button user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JToggleButton$AccessibleJToggleButton') extern class JToggleButton_AccessibleJToggleButton extends javax.swing.AbstractButton.AbstractButton_AccessibleAbstractButton implements java.awt.event.ItemListener
{
	@:overload public function new() : Void;
	
	/**
	* Fire accessible property change events when the state of the
	* toggle button changes.
	*/
	@:overload public function itemStateChanged(e : java.awt.event.ItemEvent) : Void;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
