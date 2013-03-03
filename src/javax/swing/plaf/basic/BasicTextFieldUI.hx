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
extern class BasicTextFieldUI extends javax.swing.plaf.basic.BasicTextUI
{
	/**
	* Creates a UI for a JTextField.
	*
	* @param c the text field
	* @return the UI
	*/
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Creates a new BasicTextFieldUI.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Fetches the name used as a key to lookup properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name ("TextField")
	*/
	@:overload @:protected override private function getPropertyPrefix() : String;
	
	/**
	* Creates a view (FieldView) based on an element.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload @:public override public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	
}
/**
* A field view that support bidirectional text via the
* support provided by ParagraphView.
*/
@:native('javax$swing$plaf$basic$BasicTextFieldUI$I18nFieldView') @:internal extern class BasicTextFieldUI_I18nFieldView extends javax.swing.text.ParagraphView
{
	/**
	* Fetch the constraining span to flow against for
	* the given child index.  There is no limit for
	* a field since it scrolls, so this is implemented to
	* return <code>Integer.MAX_VALUE</code>.
	*/
	@:overload @:public override public function getFlowSpan(index : Int) : Int;
	
	@:overload @:protected override private function setJustification(j : Int) : Void;
	
	/**
	* Renders using the given rendering surface and area on that surface.
	* The view may need to do layout and create child views to enable
	* itself to render into the given allocation.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	*
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the resizability of the view along the
	* given axis.  A value of 0 or less is not resizable.
	*
	* @param axis View.X_AXIS or View.Y_AXIS
	* @return the weight -> 1 for View.X_AXIS, else 0
	*/
	@:overload @:public override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param p0 the position to convert >= 0
	* @param b0 the bias toward the previous character or the
	*  next character represented by p0, in case the
	*  position is a boundary of two views.
	* @param p1 the position to convert >= 0
	* @param b1 the bias toward the previous character or the
	*  next character represented by p1, in case the
	*  position is a boundary of two views.
	* @param a the allocated region to render into
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException for an invalid bias argument
	* @see View#viewToModel
	*/
	@:overload @:public override public function modelToView(p0 : Int, b0 : javax.swing.text.Position.Position_Bias, p1 : Int, b1 : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param fx the X coordinate >= 0.0f
	* @param fy the Y coordinate >= 0.0f
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view
	* @see View#viewToModel
	*/
	@:overload @:public override public function viewToModel(fx : Single, fy : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload @:public override public function insertUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload @:public override public function removeUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
