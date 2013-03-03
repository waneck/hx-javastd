package javax.swing.text.html;
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
@:internal extern class HRuleView extends javax.swing.text.View
{
	/**
	* Creates a new view that represents an &lt;hr&gt; element.
	*
	* @param elem the element to create a view for
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Update any cached values that come from attributes.
	*/
	@:overload @:protected private function setPropertiesFromAttributes() : Void;
	
	/**
	* Paints the view.
	*
	* @param g the graphics context
	* @param a the allocation region for the view
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Calculates the desired shape of the rule... this is
	* basically the preferred size of the border.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the desired span
	* @see View#getPreferredSpan
	*/
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Gets the resize weight for the axis.
	* The rule is: rigid vertically and flexible horizontally.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the weight
	*/
	@:overload @:public override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Determines how attractive a break opportunity in
	* this view is.  This is implemented to request a forced break.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @param pos the potential location of the start of the
	*   broken view (greater than or equal to zero).
	*   This may be useful for calculating tab
	*   positions.
	* @param len specifies the relative length from <em>pos</em>
	*   where a potential break is desired. The value must be greater
	*   than or equal to zero.
	* @return the weight, which should be a value between
	*   ForcedBreakWeight and BadBreakWeight.
	*/
	@:overload @:public override public function getBreakWeight(axis : Int, pos : Single, len : Single) : Int;
	
	@:overload @:public override public function breakView(axis : Int, offset : Int, pos : Single, len : Single) : javax.swing.text.View;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not
	* represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x the X coordinate
	* @param y the Y coordinate
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point of view
	* @see View#viewToModel
	*/
	@:overload @:public override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	@:overload @:public override public function changedUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
