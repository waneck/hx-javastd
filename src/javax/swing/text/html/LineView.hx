package javax.swing.text.html;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* A view implementation to display an unwrapped
* preformatted line.<p>
* This subclasses ParagraphView, but this really only contains one
* Row of text.
*
* @author  Timothy Prinzing
*/
@:internal extern class LineView extends javax.swing.text.ParagraphView
{
	/**
	* Creates a LineView object.
	*
	* @param elem the element to wrap in a view
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Preformatted lines are not suppressed if they
	* have only whitespace, so they are always visible.
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Determines the minimum span for this view along an
	* axis.  The preformatted line should refuse to be
	* sized less than the preferred size.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*  <code>View.Y_AXIS</code>
	* @return  the minimum span the view can be rendered into
	* @see View#getPreferredSpan
	*/
	@:overload public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Gets the resize weight for the specified axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the weight
	*/
	@:overload public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Gets the alignment for an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the alignment
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Lays out the children.  If the layout span has changed,
	* the rows are rebuilt.  The superclass functionality
	* is called after checking and possibly rebuilding the
	* rows.  If the height has changed, the
	* <code>preferenceChanged</code> method is called
	* on the parent since the vertical preference is
	* rigid.
	*
	* @param width  the width to lay out against >= 0.  This is
	*   the width inside of the inset area.
	* @param height the height to lay out against >= 0 (not used
	*   by paragraph, but used by the superclass).  This
	*   is the height inside of the inset area.
	*/
	@:overload override private function layout(width : Int, height : Int) : Void;
	
	/**
	* Returns the next tab stop position given a reference position.
	* This view implements the tab coordinate system, and calls
	* <code>getTabbedSpan</code> on the logical children in the process
	* of layout to determine the desired span of the children.  The
	* logical children can delegate their tab expansion upward to
	* the paragraph which knows how to expand tabs.
	* <code>LabelView</code> is an example of a view that delegates
	* its tab expansion needs upward to the paragraph.
	* <p>
	* This is implemented to try and locate a <code>TabSet</code>
	* in the paragraph element's attribute set.  If one can be
	* found, its settings will be used, otherwise a default expansion
	* will be provided.  The base location for for tab expansion
	* is the left inset from the paragraphs most recent allocation
	* (which is what the layout of the children is based upon).
	*
	* @param x the X reference position
	* @param tabOffset the position within the text stream
	*   that the tab occurred at >= 0.
	* @return the trailing end of the tab expansion >= 0
	* @see TabSet
	* @see TabStop
	* @see LabelView
	*/
	@:overload override public function nextTabStop(x : Single, tabOffset : Int) : Single;
	
	/**
	* Returns the location for the tab.
	*/
	@:overload private function getPreTab(x : Single, tabOffset : Int) : Single;
	
	/**
	* @return number of characters per tab, 8.
	*/
	@:overload private function getCharactersPerTab() : Int;
	
	
}
