package java.awt;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The <code>GridBagConstraints</code> class specifies constraints
* for components that are laid out using the
* <code>GridBagLayout</code> class.
*
* @author Doug Stein
* @author Bill Spitzak (orignial NeWS & OLIT implementation)
* @see java.awt.GridBagLayout
* @since JDK1.0
*/
@:require(java0) extern class GridBagConstraints implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Specifies that this component is the next-to-last component in its
	* column or row (<code>gridwidth</code>, <code>gridheight</code>),
	* or that this component be placed next to the previously added
	* component (<code>gridx</code>, <code>gridy</code>).
	* @see      java.awt.GridBagConstraints#gridwidth
	* @see      java.awt.GridBagConstraints#gridheight
	* @see      java.awt.GridBagConstraints#gridx
	* @see      java.awt.GridBagConstraints#gridy
	*/
	public static var RELATIVE(default, null) : Int;
	
	/**
	* Specifies that this component is the
	* last component in its column or row.
	*/
	public static var REMAINDER(default, null) : Int;
	
	/**
	* Do not resize the component.
	*/
	public static var NONE(default, null) : Int;
	
	/**
	* Resize the component both horizontally and vertically.
	*/
	public static var BOTH(default, null) : Int;
	
	/**
	* Resize the component horizontally but not vertically.
	*/
	public static var HORIZONTAL(default, null) : Int;
	
	/**
	* Resize the component vertically but not horizontally.
	*/
	public static var VERTICAL(default, null) : Int;
	
	/**
	* Put the component in the center of its display area.
	*/
	public static var CENTER(default, null) : Int;
	
	/**
	* Put the component at the top of its display area,
	* centered horizontally.
	*/
	public static var NORTH(default, null) : Int;
	
	/**
	* Put the component at the top-right corner of its display area.
	*/
	public static var NORTHEAST(default, null) : Int;
	
	/**
	* Put the component on the right side of its display area,
	* centered vertically.
	*/
	public static var EAST(default, null) : Int;
	
	/**
	* Put the component at the bottom-right corner of its display area.
	*/
	public static var SOUTHEAST(default, null) : Int;
	
	/**
	* Put the component at the bottom of its display area, centered
	* horizontally.
	*/
	public static var SOUTH(default, null) : Int;
	
	/**
	* Put the component at the bottom-left corner of its display area.
	*/
	public static var SOUTHWEST(default, null) : Int;
	
	/**
	* Put the component on the left side of its display area,
	* centered vertically.
	*/
	public static var WEST(default, null) : Int;
	
	/**
	* Put the component at the top-left corner of its display area.
	*/
	public static var NORTHWEST(default, null) : Int;
	
	/**
	* Place the component centered along the edge of its display area
	* associated with the start of a page for the current
	* {@code ComponentOrientation}.  Equal to NORTH for horizontal
	* orientations.
	*/
	public static var PAGE_START(default, null) : Int;
	
	/**
	* Place the component centered along the edge of its display area
	* associated with the end of a page for the current
	* {@code ComponentOrientation}.  Equal to SOUTH for horizontal
	* orientations.
	*/
	public static var PAGE_END(default, null) : Int;
	
	/**
	* Place the component centered along the edge of its display area where
	* lines of text would normally begin for the current
	* {@code ComponentOrientation}.  Equal to WEST for horizontal,
	* left-to-right orientations and EAST for horizontal, right-to-left
	* orientations.
	*/
	public static var LINE_START(default, null) : Int;
	
	/**
	* Place the component centered along the edge of its display area where
	* lines of text would normally end for the current
	* {@code ComponentOrientation}.  Equal to EAST for horizontal,
	* left-to-right orientations and WEST for horizontal, right-to-left
	* orientations.
	*/
	public static var LINE_END(default, null) : Int;
	
	/**
	* Place the component in the corner of its display area where
	* the first line of text on a page would normally begin for the current
	* {@code ComponentOrientation}.  Equal to NORTHWEST for horizontal,
	* left-to-right orientations and NORTHEAST for horizontal, right-to-left
	* orientations.
	*/
	public static var FIRST_LINE_START(default, null) : Int;
	
	/**
	* Place the component in the corner of its display area where
	* the first line of text on a page would normally end for the current
	* {@code ComponentOrientation}.  Equal to NORTHEAST for horizontal,
	* left-to-right orientations and NORTHWEST for horizontal, right-to-left
	* orientations.
	*/
	public static var FIRST_LINE_END(default, null) : Int;
	
	/**
	* Place the component in the corner of its display area where
	* the last line of text on a page would normally start for the current
	* {@code ComponentOrientation}.  Equal to SOUTHWEST for horizontal,
	* left-to-right orientations and SOUTHEAST for horizontal, right-to-left
	* orientations.
	*/
	public static var LAST_LINE_START(default, null) : Int;
	
	/**
	* Place the component in the corner of its display area where
	* the last line of text on a page would normally end for the current
	* {@code ComponentOrientation}.  Equal to SOUTHEAST for horizontal,
	* left-to-right orientations and SOUTHWEST for horizontal, right-to-left
	* orientations.
	*/
	public static var LAST_LINE_END(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally centered and
	* vertically aligned along the baseline of the prevailing row.
	* If the component does not have a baseline it will be vertically
	* centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BASELINE(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* leading edge.  For components with a left-to-right orientation,
	* the leading edge is the left edge.  Vertically the component is
	* aligned along the baseline of the prevailing row.  If the
	* component does not have a baseline it will be vertically
	* centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BASELINE_LEADING(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* trailing edge.  For components with a left-to-right
	* orientation, the trailing edge is the right edge.  Vertically
	* the component is aligned along the baseline of the prevailing
	* row.  If the component does not have a baseline it will be
	* vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BASELINE_TRAILING(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally centered.  Vertically
	* the component is positioned so that its bottom edge touches
	* the baseline of the starting row.  If the starting row does not
	* have a baseline it will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var ABOVE_BASELINE(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* leading edge.  For components with a left-to-right orientation,
	* the leading edge is the left edge.  Vertically the component is
	* positioned so that its bottom edge touches the baseline of the
	* starting row.  If the starting row does not have a baseline it
	* will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var ABOVE_BASELINE_LEADING(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* trailing edge.  For components with a left-to-right
	* orientation, the trailing edge is the right edge.  Vertically
	* the component is positioned so that its bottom edge touches
	* the baseline of the starting row.  If the starting row does not
	* have a baseline it will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var ABOVE_BASELINE_TRAILING(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally centered.  Vertically
	* the component is positioned so that its top edge touches the
	* baseline of the starting row.  If the starting row does not
	* have a baseline it will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BELOW_BASELINE(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* leading edge.  For components with a left-to-right orientation,
	* the leading edge is the left edge.  Vertically the component is
	* positioned so that its top edge touches the baseline of the
	* starting row.  If the starting row does not have a baseline it
	* will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BELOW_BASELINE_LEADING(default, null) : Int;
	
	/**
	* Possible value for the <code>anchor</code> field.  Specifies
	* that the component should be horizontally placed along the
	* trailing edge.  For components with a left-to-right
	* orientation, the trailing edge is the right edge.  Vertically
	* the component is positioned so that its top edge touches the
	* baseline of the starting row.  If the starting row does not
	* have a baseline it will be vertically centered.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BELOW_BASELINE_TRAILING(default, null) : Int;
	
	/**
	* Specifies the cell containing the leading edge of the component's
	* display area, where the first cell in a row has <code>gridx=0</code>.
	* The leading edge of a component's display area is its left edge for
	* a horizontal, left-to-right container and its right edge for a
	* horizontal, right-to-left container.
	* The value
	* <code>RELATIVE</code> specifies that the component be placed
	* immediately following the component that was added to the container
	* just before this component was added.
	* <p>
	* The default value is <code>RELATIVE</code>.
	* <code>gridx</code> should be a non-negative value.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#gridy
	* @see java.awt.ComponentOrientation
	*/
	public var gridx : Int;
	
	/**
	* Specifies the cell at the top of the component's display area,
	* where the topmost cell has <code>gridy=0</code>. The value
	* <code>RELATIVE</code> specifies that the component be placed just
	* below the component that was added to the container just before
	* this component was added.
	* <p>
	* The default value is <code>RELATIVE</code>.
	* <code>gridy</code> should be a non-negative value.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#gridx
	*/
	public var gridy : Int;
	
	/**
	* Specifies the number of cells in a row for the component's
	* display area.
	* <p>
	* Use <code>REMAINDER</code> to specify that the component's
	* display area will be from <code>gridx</code> to the last
	* cell in the row.
	* Use <code>RELATIVE</code> to specify that the component's
	* display area will be from <code>gridx</code> to the next
	* to the last one in its row.
	* <p>
	* <code>gridwidth</code> should be non-negative and the default
	* value is 1.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#gridheight
	*/
	public var gridwidth : Int;
	
	/**
	* Specifies the number of cells in a column for the component's
	* display area.
	* <p>
	* Use <code>REMAINDER</code> to specify that the component's
	* display area will be from <code>gridy</code> to the last
	* cell in the column.
	* Use <code>RELATIVE</code> to specify that the component's
	* display area will be from <code>gridy</code> to the next
	* to the last one in its column.
	* <p>
	* <code>gridheight</code> should be a non-negative value and the
	* default value is 1.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#gridwidth
	*/
	public var gridheight : Int;
	
	/**
	* Specifies how to distribute extra horizontal space.
	* <p>
	* The grid bag layout manager calculates the weight of a column to
	* be the maximum <code>weightx</code> of all the components in a
	* column. If the resulting layout is smaller horizontally than the area
	* it needs to fill, the extra space is distributed to each column in
	* proportion to its weight. A column that has a weight of zero receives
	* no extra space.
	* <p>
	* If all the weights are zero, all the extra space appears between
	* the grids of the cell and the left and right edges.
	* <p>
	* The default value of this field is <code>0</code>.
	* <code>weightx</code> should be a non-negative value.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#weighty
	*/
	public var weightx : Float;
	
	/**
	* Specifies how to distribute extra vertical space.
	* <p>
	* The grid bag layout manager calculates the weight of a row to be
	* the maximum <code>weighty</code> of all the components in a row.
	* If the resulting layout is smaller vertically than the area it
	* needs to fill, the extra space is distributed to each row in
	* proportion to its weight. A row that has a weight of zero receives no
	* extra space.
	* <p>
	* If all the weights are zero, all the extra space appears between
	* the grids of the cell and the top and bottom edges.
	* <p>
	* The default value of this field is <code>0</code>.
	* <code>weighty</code> should be a non-negative value.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#weightx
	*/
	public var weighty : Float;
	
	/**
	* This field is used when the component is smaller than its
	* display area. It determines where, within the display area, to
	* place the component.
	* <p> There are three kinds of possible values: orientation
	* relative, baseline relative and absolute.  Orientation relative
	* values are interpreted relative to the container's component
	* orientation property, baseline relative values are interpreted
	* relative to the baseline and absolute values are not.  The
	* absolute values are:
	* <code>CENTER</code>, <code>NORTH</code>, <code>NORTHEAST</code>,
	* <code>EAST</code>, <code>SOUTHEAST</code>, <code>SOUTH</code>,
	* <code>SOUTHWEST</code>, <code>WEST</code>, and <code>NORTHWEST</code>.
	* The orientation relative values are: <code>PAGE_START</code>,
	* <code>PAGE_END</code>,
	* <code>LINE_START</code>, <code>LINE_END</code>,
	* <code>FIRST_LINE_START</code>, <code>FIRST_LINE_END</code>,
	* <code>LAST_LINE_START</code> and <code>LAST_LINE_END</code>.  The
	* baseline relative values are:
	* <code>BASELINE</code>, <code>BASELINE_LEADING</code>,
	* <code>BASELINE_TRAILING</code>,
	* <code>ABOVE_BASELINE</code>, <code>ABOVE_BASELINE_LEADING</code>,
	* <code>ABOVE_BASELINE_TRAILING</code>,
	* <code>BELOW_BASELINE</code>, <code>BELOW_BASELINE_LEADING</code>,
	* and <code>BELOW_BASELINE_TRAILING</code>.
	* The default value is <code>CENTER</code>.
	* @serial
	* @see #clone()
	* @see java.awt.ComponentOrientation
	*/
	public var anchor : Int;
	
	/**
	* This field is used when the component's display area is larger
	* than the component's requested size. It determines whether to
	* resize the component, and if so, how.
	* <p>
	* The following values are valid for <code>fill</code>:
	* <p>
	* <ul>
	* <li>
	* <code>NONE</code>: Do not resize the component.
	* <li>
	* <code>HORIZONTAL</code>: Make the component wide enough to fill
	*         its display area horizontally, but do not change its height.
	* <li>
	* <code>VERTICAL</code>: Make the component tall enough to fill its
	*         display area vertically, but do not change its width.
	* <li>
	* <code>BOTH</code>: Make the component fill its display area
	*         entirely.
	* </ul>
	* <p>
	* The default value is <code>NONE</code>.
	* @serial
	* @see #clone()
	*/
	public var fill : Int;
	
	/**
	* This field specifies the external padding of the component, the
	* minimum amount of space between the component and the edges of its
	* display area.
	* <p>
	* The default value is <code>new Insets(0, 0, 0, 0)</code>.
	* @serial
	* @see #clone()
	*/
	public var insets : java.awt.Insets;
	
	/**
	* This field specifies the internal padding of the component, how much
	* space to add to the minimum width of the component. The width of
	* the component is at least its minimum width plus
	* <code>ipadx</code> pixels.
	* <p>
	* The default value is <code>0</code>.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#ipady
	*/
	public var ipadx : Int;
	
	/**
	* This field specifies the internal padding, that is, how much
	* space to add to the minimum height of the component. The height of
	* the component is at least its minimum height plus
	* <code>ipady</code> pixels.
	* <p>
	* The default value is 0.
	* @serial
	* @see #clone()
	* @see java.awt.GridBagConstraints#ipadx
	*/
	public var ipady : Int;
	
	/**
	* Creates a <code>GridBagConstraint</code> object with
	* all of its fields set to their default value.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>GridBagConstraints</code> object with
	* all of its fields set to the passed-in arguments.
	*
	* Note: Because the use of this constructor hinders readability
	* of source code, this constructor should only be used by
	* automatic source code generation tools.
	*
	* @param gridx     The initial gridx value.
	* @param gridy     The initial gridy value.
	* @param gridwidth The initial gridwidth value.
	* @param gridheight        The initial gridheight value.
	* @param weightx   The initial weightx value.
	* @param weighty   The initial weighty value.
	* @param anchor    The initial anchor value.
	* @param fill      The initial fill value.
	* @param insets    The initial insets value.
	* @param ipadx     The initial ipadx value.
	* @param ipady     The initial ipady value.
	*
	* @see java.awt.GridBagConstraints#gridx
	* @see java.awt.GridBagConstraints#gridy
	* @see java.awt.GridBagConstraints#gridwidth
	* @see java.awt.GridBagConstraints#gridheight
	* @see java.awt.GridBagConstraints#weightx
	* @see java.awt.GridBagConstraints#weighty
	* @see java.awt.GridBagConstraints#anchor
	* @see java.awt.GridBagConstraints#fill
	* @see java.awt.GridBagConstraints#insets
	* @see java.awt.GridBagConstraints#ipadx
	* @see java.awt.GridBagConstraints#ipady
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(gridx : Int, gridy : Int, gridwidth : Int, gridheight : Int, weightx : Float, weighty : Float, anchor : Int, fill : Int, insets : java.awt.Insets, ipadx : Int, ipady : Int) : Void;
	
	/**
	* Creates a copy of this grid bag constraint.
	* @return     a copy of this grid bag constraint
	*/
	@:overload public function clone() : Dynamic;
	
	
}
