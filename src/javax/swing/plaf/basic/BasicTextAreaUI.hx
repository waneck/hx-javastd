package javax.swing.plaf.basic;
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
/**
* Provides the look and feel for a plain text editor.  In this
* implementation the default UI is extended to act as a simple
* view factory.
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
* @author  Timothy Prinzing
*/
extern class BasicTextAreaUI extends javax.swing.plaf.basic.BasicTextUI
{
	/**
	* Creates a UI for a JTextArea.
	*
	* @param ta a text area
	* @return the UI
	*/
	@:overload public static function createUI(ta : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Constructs a new BasicTextAreaUI object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Fetches the name used as a key to look up properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("TextArea")
	*/
	@:overload override private function getPropertyPrefix() : String;
	
	@:overload override private function installDefaults() : Void;
	
	/**
	* This method gets called when a bound property is changed
	* on the associated JTextComponent.  This is a hook
	* which UI implementations may change to reflect how the
	* UI displays bound properties of JTextComponent subclasses.
	* This is implemented to rebuild the View when the
	* <em>WrapLine</em> or the <em>WrapStyleWord</em> property changes.
	*
	* @param evt the property change event
	*/
	@:overload override private function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* The method is overridden to take into account caret width.
	*
	* @param c the editor component
	* @return the preferred size
	* @throws IllegalArgumentException if invalid value is passed
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* The method is overridden to take into account caret width.
	*
	* @param c the editor component
	* @return the minimum size
	* @throws IllegalArgumentException if invalid value is passed
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Creates the view for an element.  Returns a WrappedPlainView or
	* PlainView.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload override public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	
}
/**
* Paragraph for representing plain-text lines that support
* bidirectional text.
*/
@:native('javax$swing$plaf$basic$BasicTextAreaUI$PlainParagraph') @:internal extern class BasicTextAreaUI_PlainParagraph extends javax.swing.text.ParagraphView
{
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	@:overload override private function setPropertiesFromAttributes() : Void;
	
	/**
	* Fetch the constraining span to flow against for
	* the given child index.
	*/
	@:overload override public function getFlowSpan(index : Int) : Int;
	
	@:overload override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Sets the size of the view.  If the size has changed, layout
	* is redone.  The size is the full size of the view including
	* the inset areas.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload override public function setSize(width : Single, height : Single) : Void;
	
	
}
/**
* This class can be used to represent a logical view for
* a flow.  It keeps the children updated to reflect the state
* of the model, gives the logical child views access to the
* view hierarchy, and calculates a preferred span.  It doesn't
* do any rendering, layout, or model/view translation.
*/
@:native('javax$swing$plaf$basic$BasicTextAreaUI$PlainParagraph$LogicalView') @:internal extern class BasicTextAreaUI_PlainParagraph_LogicalView extends javax.swing.text.CompositeView
{
	@:overload override private function getViewIndexAtPosition(pos : Int) : Int;
	
	@:overload override private function updateChildren(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, f : javax.swing.text.ViewFactory) : Bool;
	
	@:overload override private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Forward the DocumentEvent to the given child view.  This
	* is implemented to reparent the child to the logical view
	* (the children may have been parented by a row in the flow
	* if they fit without breaking) and then execute the superclass
	* behavior.
	*
	* @param v the child view to forward the event to.
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see #forwardUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload override private function forwardUpdateToView(v : javax.swing.text.View, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	@:overload override private function isBefore(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	@:overload override private function isAfter(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	@:overload override private function getViewAtPoint(x : Int, y : Int, alloc : java.awt.Rectangle) : javax.swing.text.View;
	
	@:overload override private function childAllocation(index : Int, a : java.awt.Rectangle) : Void;
	
	
}
