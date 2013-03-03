package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GridBagLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* This field is no longer used to reserve arrays and keeped for backward
	* compatibility. Previously, this was
	* the maximum number of grid positions (both horizontal and
	* vertical) that could be laid out by the grid bag layout.
	* Current implementation doesn't impose any limits
	* on the size of a grid.
	*/
	@:protected @:static @:final private static var MAXGRIDSIZE(default, null) : Int;
	
	/**
	* The smallest grid that can be laid out by the grid bag layout.
	*/
	@:protected @:static @:final private static var MINSIZE(default, null) : Int;
	
	/**
	* The preferred grid size that can be laid out by the grid bag layout.
	*/
	@:protected @:static @:final private static var PREFERREDSIZE(default, null) : Int;
	
	/**
	* This hashtable maintains the association between
	* a component and its gridbag constraints.
	* The Keys in <code>comptable</code> are the components and the
	* values are the instances of <code>GridBagConstraints</code>.
	*
	* @serial
	* @see java.awt.GridBagConstraints
	*/
	@:protected private var comptable : java.util.Hashtable<java.awt.Component, java.awt.GridBagConstraints>;
	
	/**
	* This field holds a gridbag constraints instance
	* containing the default values, so if a component
	* does not have gridbag constraints associated with
	* it, then the component will be assigned a
	* copy of the <code>defaultConstraints</code>.
	*
	* @serial
	* @see #getConstraints(Component)
	* @see #setConstraints(Component, GridBagConstraints)
	* @see #lookupConstraints(Component)
	*/
	@:protected private var defaultConstraints : java.awt.GridBagConstraints;
	
	/**
	* This field holds the layout information
	* for the gridbag.  The information in this field
	* is based on the most recent validation of the
	* gridbag.
	* If <code>layoutInfo</code> is <code>null</code>
	* this indicates that there are no components in
	* the gridbag or if there are components, they have
	* not yet been validated.
	*
	* @serial
	* @see #getLayoutInfo(Container, int)
	*/
	@:protected private var layoutInfo : java.awt.GridBagLayoutInfo;
	
	/**
	* This field holds the overrides to the column minimum
	* width.  If this field is non-<code>null</code> the values are
	* applied to the gridbag after all of the minimum columns
	* widths have been calculated.
	* If columnWidths has more elements than the number of
	* columns, columns are added to the gridbag to match
	* the number of elements in columnWidth.
	*
	* @serial
	* @see #getLayoutDimensions()
	*/
	@:public public var columnWidths : java.NativeArray<Int>;
	
	/**
	* This field holds the overrides to the row minimum
	* heights.  If this field is non-<code>null</code> the values are
	* applied to the gridbag after all of the minimum row
	* heights have been calculated.
	* If <code>rowHeights</code> has more elements than the number of
	* rows, rowa are added to the gridbag to match
	* the number of elements in <code>rowHeights</code>.
	*
	* @serial
	* @see #getLayoutDimensions()
	*/
	@:public public var rowHeights : java.NativeArray<Int>;
	
	/**
	* This field holds the overrides to the column weights.
	* If this field is non-<code>null</code> the values are
	* applied to the gridbag after all of the columns
	* weights have been calculated.
	* If <code>columnWeights[i]</code> &gt; weight for column i, then
	* column i is assigned the weight in <code>columnWeights[i]</code>.
	* If <code>columnWeights</code> has more elements than the number
	* of columns, the excess elements are ignored - they do
	* not cause more columns to be created.
	*
	* @serial
	*/
	@:public public var columnWeights : java.NativeArray<Float>;
	
	/**
	* This field holds the overrides to the row weights.
	* If this field is non-<code>null</code> the values are
	* applied to the gridbag after all of the rows
	* weights have been calculated.
	* If <code>rowWeights[i]</code> &gt; weight for row i, then
	* row i is assigned the weight in <code>rowWeights[i]</code>.
	* If <code>rowWeights</code> has more elements than the number
	* of rows, the excess elements are ignored - they do
	* not cause more rows to be created.
	*
	* @serial
	*/
	@:public public var rowWeights : java.NativeArray<Float>;
	
	/**
	* Creates a grid bag layout manager.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Sets the constraints for the specified component in this layout.
	* @param       comp the component to be modified
	* @param       constraints the constraints to be applied
	*/
	@:overload @:public public function setConstraints(comp : java.awt.Component, constraints : java.awt.GridBagConstraints) : Void;
	
	/**
	* Gets the constraints for the specified component.  A copy of
	* the actual <code>GridBagConstraints</code> object is returned.
	* @param       comp the component to be queried
	* @return      the constraint for the specified component in this
	*                  grid bag layout; a copy of the actual constraint
	*                  object is returned
	*/
	@:overload @:public public function getConstraints(comp : java.awt.Component) : java.awt.GridBagConstraints;
	
	/**
	* Retrieves the constraints for the specified component.
	* The return value is not a copy, but is the actual
	* <code>GridBagConstraints</code> object used by the layout mechanism.
	* <p>
	* If <code>comp</code> is not in the <code>GridBagLayout</code>,
	* a set of default <code>GridBagConstraints</code> are returned.
	* A <code>comp</code> value of <code>null</code> is invalid
	* and returns <code>null</code>.
	*
	* @param       comp the component to be queried
	* @return      the contraints for the specified component
	*/
	@:overload @:protected private function lookupConstraints(comp : java.awt.Component) : java.awt.GridBagConstraints;
	
	/**
	* Determines the origin of the layout area, in the graphics coordinate
	* space of the target container.  This value represents the pixel
	* coordinates of the top-left corner of the layout area regardless of
	* the <code>ComponentOrientation</code> value of the container.  This
	* is distinct from the grid origin given by the cell coordinates (0,0).
	* Most applications do not call this method directly.
	* @return     the graphics origin of the cell in the top-left
	*             corner of the layout grid
	* @see        java.awt.ComponentOrientation
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function getLayoutOrigin() : java.awt.Point;
	
	/**
	* Determines column widths and row heights for the layout grid.
	* <p>
	* Most applications do not call this method directly.
	* @return     an array of two arrays, containing the widths
	*                       of the layout columns and
	*                       the heights of the layout rows
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function getLayoutDimensions() : java.NativeArray<java.NativeArray<Int>>;
	
	/**
	* Determines the weights of the layout grid's columns and rows.
	* Weights are used to calculate how much a given column or row
	* stretches beyond its preferred size, if the layout has extra
	* room to fill.
	* <p>
	* Most applications do not call this method directly.
	* @return      an array of two arrays, representing the
	*                    horizontal weights of the layout columns
	*                    and the vertical weights of the layout rows
	* @since       JDK1.1
	*/
	@:require(java1) @:overload @:public public function getLayoutWeights() : java.NativeArray<java.NativeArray<Float>>;
	
	/**
	* Determines which cell in the layout grid contains the point
	* specified by <code>(x,&nbsp;y)</code>. Each cell is identified
	* by its column index (ranging from 0 to the number of columns
	* minus 1) and its row index (ranging from 0 to the number of
	* rows minus 1).
	* <p>
	* If the <code>(x,&nbsp;y)</code> point lies
	* outside the grid, the following rules are used.
	* The column index is returned as zero if <code>x</code> lies to the
	* left of the layout for a left-to-right container or to the right of
	* the layout for a right-to-left container.  The column index is returned
	* as the number of columns if <code>x</code> lies
	* to the right of the layout in a left-to-right container or to the left
	* in a right-to-left container.
	* The row index is returned as zero if <code>y</code> lies above the
	* layout, and as the number of rows if <code>y</code> lies
	* below the layout.  The orientation of a container is determined by its
	* <code>ComponentOrientation</code> property.
	* @param      x    the <i>x</i> coordinate of a point
	* @param      y    the <i>y</i> coordinate of a point
	* @return     an ordered pair of indexes that indicate which cell
	*             in the layout grid contains the point
	*             (<i>x</i>,&nbsp;<i>y</i>).
	* @see        java.awt.ComponentOrientation
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public public function location(x : Int, y : Int) : java.awt.Point;
	
	/**
	* Has no effect, since this layout manager does not use a per-component string.
	*/
	@:overload @:public public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Adds the specified component to the layout, using the specified
	* <code>constraints</code> object.  Note that constraints
	* are mutable and are, therefore, cloned when cached.
	*
	* @param      comp         the component to be added
	* @param      constraints  an object that determines how
	*                          the component is added to the layout
	* @exception IllegalArgumentException if <code>constraints</code>
	*            is not a <code>GridBagConstraint</code>
	*/
	@:overload @:public public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Removes the specified component from this layout.
	* <p>
	* Most applications do not call this method directly.
	* @param    comp   the component to be removed.
	* @see      java.awt.Container#remove(java.awt.Component)
	* @see      java.awt.Container#removeAll()
	*/
	@:overload @:public public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Determines the preferred size of the <code>parent</code>
	* container using this grid bag layout.
	* <p>
	* Most applications do not call this method directly.
	*
	* @param     parent   the container in which to do the layout
	* @see       java.awt.Container#getPreferredSize
	* @return the preferred size of the <code>parent</code>
	*  container
	*/
	@:overload @:public public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Determines the minimum size of the <code>parent</code> container
	* using this grid bag layout.
	* <p>
	* Most applications do not call this method directly.
	* @param     parent   the container in which to do the layout
	* @see       java.awt.Container#doLayout
	* @return the minimum size of the <code>parent</code> container
	*/
	@:overload @:public public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum dimensions for this layout given the components
	* in the specified target container.
	* @param target the container which needs to be laid out
	* @see Container
	* @see #minimumLayoutSize(Container)
	* @see #preferredLayoutSize(Container)
	* @return the maximum dimensions for this layout
	*/
	@:overload @:public public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	* <p>
	* @return the value <code>0.5f</code> to indicate centered
	*/
	@:overload @:public public function getLayoutAlignmentX(parent : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	* <p>
	* @return the value <code>0.5f</code> to indicate centered
	*/
	@:overload @:public public function getLayoutAlignmentY(parent : java.awt.Container) : Single;
	
	/**
	* Invalidates the layout, indicating that if the layout manager
	* has cached information it should be discarded.
	*/
	@:overload @:public public function invalidateLayout(target : java.awt.Container) : Void;
	
	/**
	* Lays out the specified container using this grid bag layout.
	* This method reshapes components in the specified container in
	* order to satisfy the contraints of this <code>GridBagLayout</code>
	* object.
	* <p>
	* Most applications do not call this method directly.
	* @param parent the container in which to do the layout
	* @see java.awt.Container
	* @see java.awt.Container#doLayout
	*/
	@:overload @:public public function layoutContainer(parent : java.awt.Container) : Void;
	
	/**
	* Returns a string representation of this grid bag layout's values.
	* @return     a string representation of this grid bag layout.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Fills in an instance of <code>GridBagLayoutInfo</code> for the
	* current set of managed children. This requires three passes through the
	* set of children:
	*
	* <ol>
	* <li>Figure out the dimensions of the layout grid.
	* <li>Determine which cells the components occupy.
	* <li>Distribute the weights and min sizes amoung the rows/columns.
	* </ol>
	*
	* This also caches the minsizes for all the children when they are
	* first encountered (so subsequent loops don't need to ask again).
	* <p>
	* This method should only be used internally by
	* <code>GridBagLayout</code>.
	*
	* @param parent  the layout container
	* @param sizeflag either <code>PREFERREDSIZE</code> or
	*   <code>MINSIZE</code>
	* @return the <code>GridBagLayoutInfo</code> for the set of children
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getLayoutInfo(parent : java.awt.Container, sizeflag : Int) : java.awt.GridBagLayoutInfo;
	
	/**
	* This method is obsolete and supplied for backwards
	* compatability only; new code should call {@link
	* #getLayoutInfo(java.awt.Container, int) getLayoutInfo} instead.
	* This method is the same as <code>getLayoutInfo</code>;
	* refer to <code>getLayoutInfo</code> for details on parameters
	* and return value.
	*/
	@:overload @:protected private function GetLayoutInfo(parent : java.awt.Container, sizeflag : Int) : java.awt.GridBagLayoutInfo;
	
	/**
	* Adjusts the x, y, width, and height fields to the correct
	* values depending on the constraint geometry and pads.
	* This method should only be used internally by
	* <code>GridBagLayout</code>.
	*
	* @param constraints the constraints to be applied
	* @param r the <code>Rectangle</code> to be adjusted
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function adjustForGravity(constraints : java.awt.GridBagConstraints, r : java.awt.Rectangle) : Void;
	
	/**
	* This method is obsolete and supplied for backwards
	* compatability only; new code should call {@link
	* #adjustForGravity(java.awt.GridBagConstraints, java.awt.Rectangle)
	* adjustForGravity} instead.
	* This method is the same as <code>adjustForGravity</code>;
	* refer to <code>adjustForGravity</code> for details
	* on parameters.
	*/
	@:overload @:protected private function AdjustForGravity(constraints : java.awt.GridBagConstraints, r : java.awt.Rectangle) : Void;
	
	/**
	* Figures out the minimum size of the
	* master based on the information from <code>getLayoutInfo</code>.
	* This method should only be used internally by
	* <code>GridBagLayout</code>.
	*
	* @param parent the layout container
	* @param info the layout info for this parent
	* @return a <code>Dimension</code> object containing the
	*   minimum size
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getMinSize(parent : java.awt.Container, info : java.awt.GridBagLayoutInfo) : java.awt.Dimension;
	
	/**
	* This method is obsolete and supplied for backwards
	* compatability only; new code should call {@link
	* #getMinSize(java.awt.Container, GridBagLayoutInfo) getMinSize} instead.
	* This method is the same as <code>getMinSize</code>;
	* refer to <code>getMinSize</code> for details on parameters
	* and return value.
	*/
	@:overload @:protected private function GetMinSize(parent : java.awt.Container, info : java.awt.GridBagLayoutInfo) : java.awt.Dimension;
	
	/**
	* Lays out the grid.
	* This method should only be used internally by
	* <code>GridBagLayout</code>.
	*
	* @param parent the layout container
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function arrangeGrid(parent : java.awt.Container) : Void;
	
	/**
	* This method is obsolete and supplied for backwards
	* compatability only; new code should call {@link
	* #arrangeGrid(Container) arrangeGrid} instead.
	* This method is the same as <code>arrangeGrid</code>;
	* refer to <code>arrangeGrid</code> for details on the
	* parameter.
	*/
	@:overload @:protected private function ArrangeGrid(parent : java.awt.Container) : Void;
	
	
}
