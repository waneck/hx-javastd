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
extern class JCheckBox extends javax.swing.JToggleButton implements javax.accessibility.Accessible
{
	/** Identifies a change to the flat property. */
	public static var BORDER_PAINTED_FLAT_CHANGED_PROPERTY(default, null) : String;
	
	/**
	* Creates an initially unselected check box button with no text, no icon.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an initially unselected check box with an icon.
	*
	* @param icon  the Icon image to display
	*/
	@:overload public function new(icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a check box with an icon and specifies whether
	* or not it is initially selected.
	*
	* @param icon  the Icon image to display
	* @param selected a boolean value indicating the initial selection
	*        state. If <code>true</code> the check box is selected
	*/
	@:overload public function new(icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Creates an initially unselected check box with text.
	*
	* @param text the text of the check box.
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Creates a check box where properties are taken from the
	* Action supplied.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function new(a : javax.swing.Action) : Void;
	
	/**
	* Creates a check box with text and specifies whether
	* or not it is initially selected.
	*
	* @param text the text of the check box.
	* @param selected a boolean value indicating the initial selection
	*        state. If <code>true</code> the check box is selected
	*/
	@:overload public function new(text : String, selected : Bool) : Void;
	
	/**
	* Creates an initially unselected check box with
	* the specified text and icon.
	*
	* @param text the text of the check box.
	* @param icon  the Icon image to display
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a check box with text and icon,
	* and specifies whether or not it is initially selected.
	*
	* @param text the text of the check box.
	* @param icon  the Icon image to display
	* @param selected a boolean value indicating the initial selection
	*        state. If <code>true</code> the check box is selected
	*/
	@:overload public function new(text : String, icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Sets the <code>borderPaintedFlat</code> property,
	* which gives a hint to the look and feel as to the
	* appearance of the check box border.
	* This is usually set to <code>true</code> when a
	* <code>JCheckBox</code> instance is used as a
	* renderer in a component such as a <code>JTable</code> or
	* <code>JTree</code>.  The default value for the
	* <code>borderPaintedFlat</code> property is <code>false</code>.
	* This method fires a property changed event.
	* Some look and feels might not implement flat borders;
	* they will ignore this property.
	*
	* @param b <code>true</code> requests that the border be painted flat;
	*          <code>false</code> requests normal borders
	* @see #isBorderPaintedFlat
	* @beaninfo
	*        bound: true
	*    attribute: visualUpdate true
	*  description: Whether the border is painted flat.
	* @since 1.3
	*/
	@:require(java3) @:overload public function setBorderPaintedFlat(b : Bool) : Void;
	
	/**
	* Gets the value of the <code>borderPaintedFlat</code> property.
	*
	* @return the value of the <code>borderPaintedFlat</code> property
	* @see #setBorderPaintedFlat
	* @since 1.3
	*/
	@:require(java3) @:overload public function isBorderPaintedFlat() : Bool;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns a string that specifies the name of the L&F class
	* that renders this component.
	*
	* @return the string "CheckBoxUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*        expert: true
	*   description: A string that specifies the name of the L&F class
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns a string representation of this JCheckBox. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	* specific new aspects of the JFC components.
	*
	* @return  a string representation of this JCheckBox.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JCheckBox.
	* For JCheckBoxes, the AccessibleContext takes the form of an
	* AccessibleJCheckBox.
	* A new AccessibleJCheckBox instance is created if necessary.
	*
	* @return an AccessibleJCheckBox that serves as the
	*         AccessibleContext of this JCheckBox
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this CheckBox.
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JCheckBox</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to check box user-interface
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
@:native('javax$swing$JCheckBox$AccessibleJCheckBox') extern class JCheckBox_AccessibleJCheckBox extends javax.swing.JToggleButton.JToggleButton_AccessibleJToggleButton
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
