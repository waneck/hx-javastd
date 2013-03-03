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
extern class JPanel extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Creates a new JPanel with the specified layout manager and buffering
	* strategy.
	*
	* @param layout  the LayoutManager to use
	* @param isDoubleBuffered  a boolean, true for double-buffering, which
	*        uses additional memory space to achieve fast, flicker-free
	*        updates
	*/
	@:overload @:public public function new(layout : java.awt.LayoutManager, isDoubleBuffered : Bool) : Void;
	
	/**
	* Create a new buffered JPanel with the specified layout manager
	*
	* @param layout  the LayoutManager to use
	*/
	@:overload @:public public function new(layout : java.awt.LayoutManager) : Void;
	
	/**
	* Creates a new <code>JPanel</code> with <code>FlowLayout</code>
	* and the specified buffering strategy.
	* If <code>isDoubleBuffered</code> is true, the <code>JPanel</code>
	* will use a double buffer.
	*
	* @param isDoubleBuffered  a boolean, true for double-buffering, which
	*        uses additional memory space to achieve fast, flicker-free
	*        updates
	*/
	@:overload @:public public function new(isDoubleBuffered : Bool) : Void;
	
	/**
	* Creates a new <code>JPanel</code> with a double buffer
	* and a flow layout.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Resets the UI property with a value from the current look and feel.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the look and feel (L&F) object that renders this component.
	*
	* @return the PanelUI object that renders this component
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getUI() : javax.swing.plaf.PanelUI;
	
	/**
	* Sets the look and feel (L&F) object that renders this component.
	*
	* @param ui  the PanelUI L&F object
	* @see UIDefaults#getUI
	* @since 1.4
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:require(java4) @:overload @:public public function setUI(ui : javax.swing.plaf.PanelUI) : Void;
	
	/**
	* Returns a string that specifies the name of the L&F class
	* that renders this component.
	*
	* @return "PanelUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*        expert: true
	*   description: A string that specifies the name of the L&F class.
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Returns a string representation of this JPanel. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JPanel.
	*/
	@:overload @:protected override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JPanel.
	* For JPanels, the AccessibleContext takes the form of an
	* AccessibleJPanel.
	* A new AccessibleJPanel instance is created if necessary.
	*
	* @return an AccessibleJPanel that serves as the
	*         AccessibleContext of this JPanel
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JPanel</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to panel user-interface
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
@:native('javax$swing$JPanel$AccessibleJPanel') extern class JPanel_AccessibleJPanel extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
