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
extern class BorderLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* The north layout constraint (top of container).
	*/
	public static var NORTH(default, null) : String;
	
	/**
	* The south layout constraint (bottom of container).
	*/
	public static var SOUTH(default, null) : String;
	
	/**
	* The east layout constraint (right side of container).
	*/
	public static var EAST(default, null) : String;
	
	/**
	* The west layout constraint (left side of container).
	*/
	public static var WEST(default, null) : String;
	
	/**
	* The center layout constraint (middle of container).
	*/
	public static var CENTER(default, null) : String;
	
	/**
	* Synonym for PAGE_START.  Exists for compatibility with previous
	* versions.  PAGE_START is preferred.
	*
	* @see #PAGE_START
	* @since 1.2
	*/
	@:require(java2) public static var BEFORE_FIRST_LINE(default, null) : String;
	
	/**
	* Synonym for PAGE_END.  Exists for compatibility with previous
	* versions.  PAGE_END is preferred.
	*
	* @see #PAGE_END
	* @since 1.2
	*/
	@:require(java2) public static var AFTER_LAST_LINE(default, null) : String;
	
	/**
	* Synonym for LINE_START.  Exists for compatibility with previous
	* versions.  LINE_START is preferred.
	*
	* @see #LINE_START
	* @since 1.2
	*/
	@:require(java2) public static var BEFORE_LINE_BEGINS(default, null) : String;
	
	/**
	* Synonym for LINE_END.  Exists for compatibility with previous
	* versions.  LINE_END is preferred.
	*
	* @see #LINE_END
	* @since 1.2
	*/
	@:require(java2) public static var AFTER_LINE_ENDS(default, null) : String;
	
	/**
	* The component comes before the first line of the layout's content.
	* For Western, left-to-right and top-to-bottom orientations, this is
	* equivalent to NORTH.
	*
	* @see java.awt.Component#getComponentOrientation
	* @since 1.4
	*/
	@:require(java4) public static var PAGE_START(default, null) : String;
	
	/**
	* The component comes after the last line of the layout's content.
	* For Western, left-to-right and top-to-bottom orientations, this is
	* equivalent to SOUTH.
	*
	* @see java.awt.Component#getComponentOrientation
	* @since 1.4
	*/
	@:require(java4) public static var PAGE_END(default, null) : String;
	
	/**
	* The component goes at the beginning of the line direction for the
	* layout. For Western, left-to-right and top-to-bottom orientations,
	* this is equivalent to WEST.
	*
	* @see java.awt.Component#getComponentOrientation
	* @since 1.4
	*/
	@:require(java4) public static var LINE_START(default, null) : String;
	
	/**
	* The component goes at the end of the line direction for the
	* layout. For Western, left-to-right and top-to-bottom orientations,
	* this is equivalent to EAST.
	*
	* @see java.awt.Component#getComponentOrientation
	* @since 1.4
	*/
	@:require(java4) public static var LINE_END(default, null) : String;
	
	/**
	* Constructs a new border layout with
	* no gaps between components.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a border layout with the specified gaps
	* between components.
	* The horizontal gap is specified by <code>hgap</code>
	* and the vertical gap is specified by <code>vgap</code>.
	* @param   hgap   the horizontal gap.
	* @param   vgap   the vertical gap.
	*/
	@:overload public function new(hgap : Int, vgap : Int) : Void;
	
	/**
	* Returns the horizontal gap between components.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function getHgap() : Int;
	
	/**
	* Sets the horizontal gap between components.
	* @param hgap the horizontal gap between components
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function setHgap(hgap : Int) : Void;
	
	/**
	* Returns the vertical gap between components.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function getVgap() : Int;
	
	/**
	* Sets the vertical gap between components.
	* @param vgap the vertical gap between components
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function setVgap(vgap : Int) : Void;
	
	/**
	* Adds the specified component to the layout, using the specified
	* constraint object.  For border layouts, the constraint must be
	* one of the following constants:  <code>NORTH</code>,
	* <code>SOUTH</code>, <code>EAST</code>,
	* <code>WEST</code>, or <code>CENTER</code>.
	* <p>
	* Most applications do not call this method directly. This method
	* is called when a component is added to a container using the
	* <code>Container.add</code> method with the same argument types.
	* @param   comp         the component to be added.
	* @param   constraints  an object that specifies how and where
	*                       the component is added to the layout.
	* @see     java.awt.Container#add(java.awt.Component, java.lang.Object)
	* @exception   IllegalArgumentException  if the constraint object is not
	*                 a string, or if it not one of the five specified
	*              constants.
	* @since   JDK1.1
	*/
	@:require(java1) @:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* @deprecated  replaced by <code>addLayoutComponent(Component, Object)</code>.
	*/
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from this border layout. This
	* method is called when a container calls its <code>remove</code> or
	* <code>removeAll</code> methods. Most applications do not call this
	* method directly.
	* @param   comp   the component to be removed.
	* @see     java.awt.Container#remove(java.awt.Component)
	* @see     java.awt.Container#removeAll()
	*/
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Gets the component that was added using the given constraint
	*
	* @param   constraints  the desired constraint, one of <code>CENTER</code>,
	*                       <code>NORTH</code>, <code>SOUTH</code>,
	*                       <code>WEST</code>, <code>EAST</code>,
	*                       <code>PAGE_START</code>, <code>PAGE_END</code>,
	*                       <code>LINE_START</code>, <code>LINE_END</code>
	* @return  the component at the given location, or <code>null</code> if
	*          the location is empty
	* @exception   IllegalArgumentException  if the constraint object is
	*              not one of the nine specified constants
	* @see     #addLayoutComponent(java.awt.Component, java.lang.Object)
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLayoutComponent(constraints : Dynamic) : java.awt.Component;
	
	/**
	* Returns the component that corresponds to the given constraint location
	* based on the target <code>Container</code>'s component orientation.
	* Components added with the relative constraints <code>PAGE_START</code>,
	* <code>PAGE_END</code>, <code>LINE_START</code>, and <code>LINE_END</code>
	* take precedence over components added with the explicit constraints
	* <code>NORTH</code>, <code>SOUTH</code>, <code>WEST</code>, and <code>EAST</code>.
	* The <code>Container</code>'s component orientation is used to determine the location of components
	* added with <code>LINE_START</code> and <code>LINE_END</code>.
	*
	* @param   constraints     the desired absolute position, one of <code>CENTER</code>,
	*                          <code>NORTH</code>, <code>SOUTH</code>,
	*                          <code>EAST</code>, <code>WEST</code>
	* @param   target     the {@code Container} used to obtain
	*                     the constraint location based on the target
	*                     {@code Container}'s component orientation.
	* @return  the component at the given location, or <code>null</code> if
	*          the location is empty
	* @exception   IllegalArgumentException  if the constraint object is
	*              not one of the five specified constants
	* @exception   NullPointerException  if the target parameter is null
	* @see     #addLayoutComponent(java.awt.Component, java.lang.Object)
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLayoutComponent(target : java.awt.Container, constraints : Dynamic) : java.awt.Component;
	
	/**
	* Gets the constraints for the specified component
	*
	* @param   comp the component to be queried
	* @return  the constraint for the specified component,
	*          or null if component is null or is not present
	*          in this layout
	* @see #addLayoutComponent(java.awt.Component, java.lang.Object)
	* @since 1.5
	*/
	@:require(java5) @:overload public function getConstraints(comp : java.awt.Component) : Dynamic;
	
	/**
	* Determines the minimum size of the <code>target</code> container
	* using this layout manager.
	* <p>
	* This method is called when a container calls its
	* <code>getMinimumSize</code> method. Most applications do not call
	* this method directly.
	* @param   target   the container in which to do the layout.
	* @return  the minimum dimensions needed to lay out the subcomponents
	*          of the specified container.
	* @see     java.awt.Container
	* @see     java.awt.BorderLayout#preferredLayoutSize
	* @see     java.awt.Container#getMinimumSize()
	*/
	@:overload public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Determines the preferred size of the <code>target</code>
	* container using this layout manager, based on the components
	* in the container.
	* <p>
	* Most applications do not call this method directly. This method
	* is called when a container calls its <code>getPreferredSize</code>
	* method.
	* @param   target   the container in which to do the layout.
	* @return  the preferred dimensions to lay out the subcomponents
	*          of the specified container.
	* @see     java.awt.Container
	* @see     java.awt.BorderLayout#minimumLayoutSize
	* @see     java.awt.Container#getPreferredSize()
	*/
	@:overload public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum dimensions for this layout given the components
	* in the specified target container.
	* @param target the component which needs to be laid out
	* @see Container
	* @see #minimumLayoutSize
	* @see #preferredLayoutSize
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentX(parent : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentY(parent : java.awt.Container) : Single;
	
	/**
	* Invalidates the layout, indicating that if the layout manager
	* has cached information it should be discarded.
	*/
	@:overload public function invalidateLayout(target : java.awt.Container) : Void;
	
	/**
	* Lays out the container argument using this border layout.
	* <p>
	* This method actually reshapes the components in the specified
	* container in order to satisfy the constraints of this
	* <code>BorderLayout</code> object. The <code>NORTH</code>
	* and <code>SOUTH</code> components, if any, are placed at
	* the top and bottom of the container, respectively. The
	* <code>WEST</code> and <code>EAST</code> components are
	* then placed on the left and right, respectively. Finally,
	* the <code>CENTER</code> object is placed in any remaining
	* space in the middle.
	* <p>
	* Most applications do not call this method directly. This method
	* is called when a container calls its <code>doLayout</code> method.
	* @param   target   the container in which to do the layout.
	* @see     java.awt.Container
	* @see     java.awt.Container#doLayout()
	*/
	@:overload public function layoutContainer(target : java.awt.Container) : Void;
	
	/**
	* Returns a string representation of the state of this border layout.
	* @return    a string representation of this border layout.
	*/
	@:overload public function toString() : String;
	
	
}
