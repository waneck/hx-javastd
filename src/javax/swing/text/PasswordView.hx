package javax.swing.text;
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
extern class PasswordView extends javax.swing.text.FieldView
{
	/**
	* Constructs a new view wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Renders the given range in the model as normal unselected
	* text.  This sets the foreground color and echos the characters
	* using the value returned by getEchoChar().
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param p0 the starting offset in the model >= 0
	* @param p1 the ending offset in the model >= p0
	* @return the X location of the end of the range >= 0
	* @exception BadLocationException if p0 or p1 are out of range
	*/
	@:overload private function drawUnselectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
	/**
	* Renders the given range in the model as selected text.  This
	* is implemented to render the text in the color specified in
	* the hosting component.  It assumes the highlighter will render
	* the selected background.  Uses the result of getEchoChar() to
	* display the characters.
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param p0 the starting offset in the model >= 0
	* @param p1 the ending offset in the model >= p0
	* @return the X location of the end of the range >= 0
	* @exception BadLocationException if p0 or p1 are out of range
	*/
	@:overload private function drawSelectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
	/**
	* Renders the echo character, or whatever graphic should be used
	* to display the password characters.  The color in the Graphics
	* object is set to the appropriate foreground color for selected
	* or unselected text.
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param c the echo character
	* @return the updated X position >= 0
	*/
	@:overload private function drawEchoCharacter(g : java.awt.Graphics, x : Int, y : Int, c : java.StdTypes.Char16) : Int;
	
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
	@:overload public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
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
	@:overload public function viewToModel(fx : Single, fy : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	*/
	@:overload public function getPreferredSpan(axis : Int) : Single;
	
	
}
