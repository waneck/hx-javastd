package javax.swing.text.html;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Displays the <dfn>inline element</dfn> styles
* based upon css attributes.
*
* @author  Timothy Prinzing
*/
extern class InlineView extends javax.swing.text.LabelView
{
	/**
	* Constructs a new view wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Gives notification that something was inserted into
	* the document in a location that this view is responsible for.
	* If either parameter is <code>null</code>, behavior of this method is
	* implementation dependent.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @since 1.5
	* @see View#insertUpdate
	*/
	@:require(java5) @:overload @:public override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	* If either parameter is <code>null</code>, behavior of this method is
	* implementation dependent.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @since 1.5
	* @see View#removeUpdate
	*/
	@:require(java5) @:overload @:public override public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload @:public override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Determines how attractive a break opportunity in
	* this view is.  This can be used for determining which
	* view is the most attractive to call <code>breakView</code>
	* on in the process of formatting.  A view that represents
	* text that has whitespace in it might be more attractive
	* than a view that has no whitespace, for example.  The
	* higher the weight, the more attractive the break.  A
	* value equal to or lower than <code>BadBreakWeight</code>
	* should not be considered for a break.  A value greater
	* than or equal to <code>ForcedBreakWeight</code> should
	* be broken.
	* <p>
	* This is implemented to provide the default behavior
	* of returning <code>BadBreakWeight</code> unless the length
	* is greater than the length of the view in which case the
	* entire view represents the fragment.  Unless a view has
	* been written to support breaking behavior, it is not
	* attractive to try and break the view.  An example of
	* a view that does support breaking is <code>LabelView</code>.
	* An example of a view that uses break weight is
	* <code>ParagraphView</code>.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @param pos the potential location of the start of the
	*   broken view >= 0.  This may be useful for calculating tab
	*   positions.
	* @param len specifies the relative length from <em>pos</em>
	*   where a potential break is desired >= 0.
	* @return the weight, which should be a value between
	*   ForcedBreakWeight and BadBreakWeight.
	* @see LabelView
	* @see ParagraphView
	* @see javax.swing.text.View#BadBreakWeight
	* @see javax.swing.text.View#GoodBreakWeight
	* @see javax.swing.text.View#ExcellentBreakWeight
	* @see javax.swing.text.View#ForcedBreakWeight
	*/
	@:overload @:public override public function getBreakWeight(axis : Int, pos : Single, len : Single) : Int;
	
	/**
	* Tries to break this view on the given axis. Refer to
	* {@link javax.swing.text.View#breakView} for a complete
	* description of this method.
	* <p>Behavior of this method is unspecified in case <code>axis</code>
	* is neither <code>View.X_AXIS</code> nor <code>View.Y_AXIS</code>, and
	* in case <code>offset</code>, <code>pos</code>, or <code>len</code>
	* is null.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @param offset the location in the document model
	*   that a broken fragment would occupy >= 0.  This
	*   would be the starting offset of the fragment
	*   returned
	* @param pos the position along the axis that the
	*  broken view would occupy >= 0.  This may be useful for
	*  things like tab calculations
	* @param len specifies the distance along the axis
	*  where a potential break is desired >= 0
	* @return the fragment of the view that represents the
	*  given span.
	* @since 1.5
	* @see javax.swing.text.View#breakView
	*/
	@:require(java5) @:overload @:public override public function breakView(axis : Int, offset : Int, pos : Single, len : Single) : javax.swing.text.View;
	
	/**
	* Set the cached properties from the attributes.
	*/
	@:overload @:protected override private function setPropertiesFromAttributes() : Void;
	
	@:overload @:protected private function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	
}
