package javax.swing.text;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class TextLayoutStrategy extends javax.swing.text.FlowView.FlowView_FlowStrategy
{
	/**
	* Constructs a layout strategy for paragraphs based
	* upon java.awt.font.LineBreakMeasurer.
	*/
	@:overload public function new() : Void;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that the given flow view is responsible for.  The
	* strategy should update the appropriate changed region (which
	* depends upon the strategy used for repair).
	*
	* @param e the change information from the associated document
	* @param alloc the current allocation of the view inside of the insets.
	*   This value will be null if the view has not yet been displayed.
	* @see View#insertUpdate
	*/
	@:overload override public function insertUpdate(fv : javax.swing.text.FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that the given flow view is responsible for.
	*
	* @param e the change information from the associated document
	* @param alloc the current allocation of the view inside of the insets.
	* @see View#removeUpdate
	*/
	@:overload override public function removeUpdate(fv : javax.swing.text.FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload override public function changedUpdate(fv : javax.swing.text.FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Does a a full layout on the given View.  This causes all of
	* the rows (child views) to be rebuilt to match the given
	* constraints for each row.  This is called by a FlowView.layout
	* to update the child views in the flow.
	*
	* @param fv the view to reflow
	*/
	@:overload override public function layout(fv : javax.swing.text.FlowView) : Void;
	
	/**
	* Creates a row of views that will fit within the
	* layout span of the row.  This is implemented to execute the
	* superclass functionality (which fills the row with child
	* views or view fragments) and follow that with bidi reordering
	* of the unidirectional view fragments.
	*
	* @param row the row to fill in with views.  This is assumed
	*   to be empty on entry.
	* @param pos  The current position in the children of
	*   this views element from which to start.
	* @return the position to start the next row
	*/
	@:overload override private function layoutRow(fv : javax.swing.text.FlowView, rowIndex : Int, p0 : Int) : Int;
	
	/**
	* Adjusts the given row if possible to fit within the
	* layout span.  Since all adjustments were already
	* calculated by the LineBreakMeasurer, this is implemented
	* to do nothing.
	*
	* @param r the row to adjust to the current layout
	*  span.
	* @param desiredSpan the current layout span >= 0
	* @param x the location r starts at.
	*/
	@:overload override private function adjustRow(fv : javax.swing.text.FlowView, rowIndex : Int, desiredSpan : Int, x : Int) : Void;
	
	/**
	* Creates a unidirectional view that can be used to represent the
	* current chunk.  This can be either an entire view from the
	* logical view, or a fragment of the view.
	*
	* @param fv the view holding the flow
	* @param startOffset the start location for the view being created
	* @param spanLeft the about of span left to fill in the row
	* @param rowIndex the row the view will be placed into
	*/
	@:overload override private function createView(fv : javax.swing.text.FlowView, startOffset : Int, spanLeft : Int, rowIndex : Int) : javax.swing.text.View;
	
	
}
/**
* Implementation of AttributedCharacterIterator that supports
* the GlyphView attributes for rendering the glyphs through a
* TextLayout.
*/
@:native('javax$swing$text$TextLayoutStrategy$AttributedSegment') @:internal extern class TextLayoutStrategy_AttributedSegment extends javax.swing.text.Segment implements java.text.AttributedCharacterIterator
{
	/**
	* Returns the index of the first character of the run
	* with respect to all attributes containing the current character.
	*/
	@:overload public function getRunStart() : Int;
	
	/**
	* Returns the index of the first character of the run
	* with respect to the given attribute containing the current character.
	*/
	@:overload public function getRunStart(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	/**
	* Returns the index of the first character of the run
	* with respect to the given attributes containing the current character.
	*/
	@:overload public function getRunStart(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to all attributes containing the current character.
	*/
	@:overload public function getRunLimit() : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to the given attribute containing the current character.
	*/
	@:overload public function getRunLimit(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to the given attributes containing the current character.
	*/
	@:overload public function getRunLimit(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	/**
	* Returns a map with the attributes defined on the current
	* character.
	*/
	@:overload public function getAttributes() : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>;
	
	/**
	* Returns the value of the named attribute for the current character.
	* Returns null if the attribute is not defined.
	* @param attribute the key of the attribute whose value is requested.
	*/
	@:overload public function getAttribute(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Dynamic;
	
	/**
	* Returns the keys of all attributes defined on the
	* iterator's text range. The set is empty if no
	* attributes are defined.
	*/
	@:overload public function getAllAttributeKeys() : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>;
	
	
}
