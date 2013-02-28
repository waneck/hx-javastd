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
extern class JSeparator extends javax.swing.JComponent implements javax.swing.SwingConstants implements javax.accessibility.Accessible
{
	/** Creates a new horizontal separator. */
	@:overload public function new() : Void;
	
	/**
	* Creates a new separator with the specified horizontal or
	* vertical orientation.
	*
	* @param orientation an integer specifying
	*          <code>SwingConstants.HORIZONTAL</code> or
	*          <code>SwingConstants.VERTICAL</code>
	* @exception IllegalArgumentException if <code>orientation</code>
	*          is neither <code>SwingConstants.HORIZONTAL</code> nor
	*          <code>SwingConstants.VERTICAL</code>
	*/
	@:overload public function new(orientation : Int) : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the SeparatorUI object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.SeparatorUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the SeparatorUI L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.SeparatorUI) : Void;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "SeparatorUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns the orientation of this separator.
	*
	* @return   The value of the orientation property, one of the
	*           following constants defined in <code>SwingConstants</code>:
	*           <code>VERTICAL</code>, or
	*           <code>HORIZONTAL</code>.
	*
	* @see SwingConstants
	* @see #setOrientation
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* Sets the orientation of the separator.
	* The default value of this property is HORIZONTAL.
	* @param orientation  either <code>SwingConstants.HORIZONTAL</code>
	*                  or <code>SwingConstants.VERTICAL</code>
	* @exception IllegalArgumentException  if <code>orientation</code>
	*          is neither <code>SwingConstants.HORIZONTAL</code>
	*          nor <code>SwingConstants.VERTICAL</code>
	*
	* @see SwingConstants
	* @see #getOrientation
	* @beaninfo
	*        bound: true
	*    preferred: true
	*         enum: HORIZONTAL SwingConstants.HORIZONTAL
	*               VERTICAL   SwingConstants.VERTICAL
	*    attribute: visualUpdate true
	*  description: The orientation of the separator.
	*/
	@:overload public function setOrientation(orientation : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JSeparator</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JSeparator</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JSeparator.
	* For separators, the AccessibleContext takes the form of an
	* AccessibleJSeparator.
	* A new AccessibleJSeparator instance is created if necessary.
	*
	* @return an AccessibleJSeparator that serves as the
	*         AccessibleContext of this JSeparator
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JSeparator</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to separator user-interface elements.
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
@:native('javax$swing$JSeparator$AccessibleJSeparator') extern class JSeparator_AccessibleJSeparator extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
