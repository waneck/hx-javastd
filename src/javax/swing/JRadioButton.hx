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
extern class JRadioButton extends javax.swing.JToggleButton implements javax.accessibility.Accessible
{
	/**
	* Creates an initially unselected radio button
	* with no set text.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates an initially unselected radio button
	* with the specified image but no text.
	*
	* @param icon  the image that the button should display
	*/
	@:overload @:public public function new(icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a radiobutton where properties are taken from the
	* Action supplied.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(a : javax.swing.Action) : Void;
	
	/**
	* Creates a radio button with the specified image
	* and selection state, but no text.
	*
	* @param icon  the image that the button should display
	* @param selected  if true, the button is initially selected;
	*                  otherwise, the button is initially unselected
	*/
	@:overload @:public public function new(icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Creates an unselected radio button with the specified text.
	*
	* @param text  the string displayed on the radio button
	*/
	@:overload @:public public function new(text : String) : Void;
	
	/**
	* Creates a radio button with the specified text
	* and selection state.
	*
	* @param text  the string displayed on the radio button
	* @param selected  if true, the button is initially selected;
	*                  otherwise, the button is initially unselected
	*/
	@:overload @:public public function new(text : String, selected : Bool) : Void;
	
	/**
	* Creates a radio button that has the specified text and image,
	* and that is initially unselected.
	*
	* @param text  the string displayed on the radio button
	* @param icon  the image that the button should display
	*/
	@:overload @:public public function new(text : String, icon : javax.swing.Icon) : Void;
	
	/**
	* Creates a radio button that has the specified text, image,
	* and selection state.
	*
	* @param text  the string displayed on the radio button
	* @param icon  the image that the button should display
	*/
	@:overload @:public public function new(text : String, icon : javax.swing.Icon, selected : Bool) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class
	* that renders this component.
	*
	* @return String "RadioButtonUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*        expert: true
	*   description: A string that specifies the name of the L&F class.
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Returns a string representation of this JRadioButton. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JRadioButton.
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JRadioButton.
	* For JRadioButtons, the AccessibleContext takes the form of an
	* AccessibleJRadioButton.
	* A new AccessibleJRadioButton instance is created if necessary.
	*
	* @return an AccessibleJRadioButton that serves as the
	*         AccessibleContext of this JRadioButton
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this Button
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JRadioButton</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to radio button
* user-interface elements.
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
@:native('javax$swing$JRadioButton$AccessibleJRadioButton') extern class JRadioButton_AccessibleJRadioButton extends javax.swing.JToggleButton.JToggleButton_AccessibleJToggleButton
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	* @see AccessibleRole
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
