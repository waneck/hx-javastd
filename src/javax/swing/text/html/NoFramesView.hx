package javax.swing.text.html;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
* This is the view associated with the html tag NOFRAMES.
* This view has been written to ignore the contents of the
* NOFRAMES tag.  The contents of the tag will only be visible
* when the JTextComponent the view is contained in is editable.
*
* @author  Sunita Mani
*/
@:internal extern class NoFramesView extends javax.swing.text.html.BlockView
{
	/**
	* Creates a new view that represents an
	* html box.  This can be used for a number
	* of elements.  By default this view is not
	* visible.
	*
	* @param elem the element to create a view for
	* @param axis either View.X_AXIS or View.Y_AXIS
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* If this view is not visible, then it returns.
	* Otherwise it invokes the superclass.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see #isVisible
	* @see text.ParagraphView#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Determines if the JTextComponent that the view
	* is contained in is editable. If so, then this
	* view and all its child views are visible.
	* Once this has been determined, the superclass
	* is invoked to continue processing.
	*
	* @param p the parent View.
	* @see BlockView#setParent
	*/
	@:overload @:public override public function setParent(p : javax.swing.text.View) : Void;
	
	/**
	* Returns a true/false value that represents
	* whether the view is visible or not.
	*/
	@:overload @:public override public function isVisible() : Bool;
	
	/**
	* Do nothing if the view is not visible, otherwise
	* invoke the superclass to perform layout.
	*/
	@:overload @:protected override private function layout(width : Int, height : Int) : Void;
	
	/**
	* Determines the preferred span for this view.  Returns
	* 0 if the view is not visible, otherwise it calls the
	* superclass method to get the preferred span.
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into;
	*           typically the view is told to render into the span
	*           that is returned, although there is no guarantee;
	*           the parent may choose to resize or break the view
	* @see text.ParagraphView#getPreferredSpan
	*/
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.  Returns 0 if the view is not visible, otherwise
	* it calls the superclass method to get the minimum span.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return  the minimum span the view can be rendered into
	* @see text.ParagraphView#getMinimumSpan
	*/
	@:overload @:public override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.  Returns 0 if the view is not visible, otherwise
	* it calls the superclass method ot get the maximum span.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*  <code>View.Y_AXIS</code>
	* @return  the maximum span the view can be rendered into
	* @see text.ParagraphView#getMaximumSpan
	*/
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
	
}
