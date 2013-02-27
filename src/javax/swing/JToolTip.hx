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
extern class JToolTip extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/** Creates a tool tip. */
	@:overload public function new() : Void;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the <code>ToolTipUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.ToolTipUI;
	
	/**
	* Resets the UI property to a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "ToolTipUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Sets the text to show when the tool tip is displayed.
	* The string <code>tipText</code> may be <code>null</code>.
	*
	* @param tipText the <code>String</code> to display
	* @beaninfo
	*    preferred: true
	*        bound: true
	*  description: Sets the text of the tooltip
	*/
	@:overload public function setTipText(tipText : String) : Void;
	
	/**
	* Returns the text that is shown when the tool tip is displayed.
	* The returned value may be <code>null</code>.
	*
	* @return the <code>String</code> that is displayed
	*/
	@:overload public function getTipText() : String;
	
	/**
	* Specifies the component that the tooltip describes.
	* The component <code>c</code> may be <code>null</code>
	* and will have no effect.
	* <p>
	* This is a bound property.
	*
	* @param c the <code>JComponent</code> being described
	* @see JComponent#createToolTip
	* @beaninfo
	*       bound: true
	* description: Sets the component that the tooltip describes.
	*/
	@:overload public function setComponent(c : javax.swing.JComponent) : Void;
	
	/**
	* Returns the component the tooltip applies to.
	* The returned value may be <code>null</code>.
	*
	* @return the component that the tooltip describes
	*
	* @see JComponent#createToolTip
	*/
	@:overload public function getComponent() : javax.swing.JComponent;
	
	/**
	* Returns a string representation of this <code>JToolTip</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JToolTip</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JToolTip.
	* For tool tips, the AccessibleContext takes the form of an
	* AccessibleJToolTip.
	* A new AccessibleJToolTip instance is created if necessary.
	*
	* @return an AccessibleJToolTip that serves as the
	*         AccessibleContext of this JToolTip
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JToolTip</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to tool tip user-interface elements.
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
@:native('javax$swing$JToolTip$AccessibleJToolTip') extern class JToolTip_AccessibleJToolTip extends AccessibleJComponent
{
	/**
	* Get the accessible description of this object.
	*
	* @return a localized String describing this object.
	*/
	@:overload public function getAccessibleDescription() : String;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
