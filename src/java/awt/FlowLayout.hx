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
extern class FlowLayout implements java.awt.LayoutManager implements java.io.Serializable
{
	/**
	* This value indicates that each row of components
	* should be left-justified.
	*/
	public static var LEFT(default, null) : Int;
	
	/**
	* This value indicates that each row of components
	* should be centered.
	*/
	public static var CENTER(default, null) : Int;
	
	/**
	* This value indicates that each row of components
	* should be right-justified.
	*/
	public static var RIGHT(default, null) : Int;
	
	/**
	* This value indicates that each row of components
	* should be justified to the leading edge of the container's
	* orientation, for example, to the left in left-to-right orientations.
	*
	* @see     java.awt.Component#getComponentOrientation
	* @see     java.awt.ComponentOrientation
	* @since   1.2
	*/
	@:require(java2) public static var LEADING(default, null) : Int;
	
	/**
	* This value indicates that each row of components
	* should be justified to the trailing edge of the container's
	* orientation, for example, to the right in left-to-right orientations.
	*
	* @see     java.awt.Component#getComponentOrientation
	* @see     java.awt.ComponentOrientation
	* @since   1.2
	*/
	@:require(java2) public static var TRAILING(default, null) : Int;
	
	/**
	* Constructs a new <code>FlowLayout</code> with a centered alignment and a
	* default 5-unit horizontal and vertical gap.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>FlowLayout</code> with the specified
	* alignment and a default 5-unit horizontal and vertical gap.
	* The value of the alignment argument must be one of
	* <code>FlowLayout.LEFT</code>, <code>FlowLayout.RIGHT</code>,
	* <code>FlowLayout.CENTER</code>, <code>FlowLayout.LEADING</code>,
	* or <code>FlowLayout.TRAILING</code>.
	* @param align the alignment value
	*/
	@:overload public function new(align : Int) : Void;
	
	/**
	* Creates a new flow layout manager with the indicated alignment
	* and the indicated horizontal and vertical gaps.
	* <p>
	* The value of the alignment argument must be one of
	* <code>FlowLayout.LEFT</code>, <code>FlowLayout.RIGHT</code>,
	* <code>FlowLayout.CENTER</code>, <code>FlowLayout.LEADING</code>,
	* or <code>FlowLayout.TRAILING</code>.
	* @param      align   the alignment value
	* @param      hgap    the horizontal gap between components
	*                     and between the components and the
	*                     borders of the <code>Container</code>
	* @param      vgap    the vertical gap between components
	*                     and between the components and the
	*                     borders of the <code>Container</code>
	*/
	@:overload public function new(align : Int, hgap : Int, vgap : Int) : Void;
	
	/**
	* Gets the alignment for this layout.
	* Possible values are <code>FlowLayout.LEFT</code>,
	* <code>FlowLayout.RIGHT</code>, <code>FlowLayout.CENTER</code>,
	* <code>FlowLayout.LEADING</code>,
	* or <code>FlowLayout.TRAILING</code>.
	* @return     the alignment value for this layout
	* @see        java.awt.FlowLayout#setAlignment
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getAlignment() : Int;
	
	/**
	* Sets the alignment for this layout.
	* Possible values are
	* <ul>
	* <li><code>FlowLayout.LEFT</code>
	* <li><code>FlowLayout.RIGHT</code>
	* <li><code>FlowLayout.CENTER</code>
	* <li><code>FlowLayout.LEADING</code>
	* <li><code>FlowLayout.TRAILING</code>
	* </ul>
	* @param      align one of the alignment values shown above
	* @see        #getAlignment()
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function setAlignment(align : Int) : Void;
	
	/**
	* Gets the horizontal gap between components
	* and between the components and the borders
	* of the <code>Container</code>
	*
	* @return     the horizontal gap between components
	*             and between the components and the borders
	*             of the <code>Container</code>
	* @see        java.awt.FlowLayout#setHgap
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getHgap() : Int;
	
	/**
	* Sets the horizontal gap between components and
	* between the components and the borders of the
	* <code>Container</code>.
	*
	* @param hgap the horizontal gap between components
	*             and between the components and the borders
	*             of the <code>Container</code>
	* @see        java.awt.FlowLayout#getHgap
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function setHgap(hgap : Int) : Void;
	
	/**
	* Gets the vertical gap between components and
	* between the components and the borders of the
	* <code>Container</code>.
	*
	* @return     the vertical gap between components
	*             and between the components and the borders
	*             of the <code>Container</code>
	* @see        java.awt.FlowLayout#setVgap
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getVgap() : Int;
	
	/**
	* Sets the vertical gap between components and between
	* the components and the borders of the <code>Container</code>.
	*
	* @param vgap the vertical gap between components
	*             and between the components and the borders
	*             of the <code>Container</code>
	* @see        java.awt.FlowLayout#getVgap
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function setVgap(vgap : Int) : Void;
	
	/**
	* Sets whether or not components should be vertically aligned along their
	* baseline.  Components that do not have a baseline will be centered.
	* The default is false.
	*
	* @param alignOnBaseline whether or not components should be
	*                        vertically aligned on their baseline
	* @since 1.6
	*/
	@:require(java6) @:overload public function setAlignOnBaseline(alignOnBaseline : Bool) : Void;
	
	/**
	* Returns true if components are to be vertically aligned along
	* their baseline.  The default is false.
	*
	* @return true if components are to be vertically aligned along
	*              their baseline
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAlignOnBaseline() : Bool;
	
	/**
	* Adds the specified component to the layout.
	* Not used by this class.
	* @param name the name of the component
	* @param comp the component to be added
	*/
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout.
	* Not used by this class.
	* @param comp the component to remove
	* @see       java.awt.Container#removeAll
	*/
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the preferred dimensions for this layout given the
	* <i>visible</i> components in the specified target container.
	*
	* @param target the container that needs to be laid out
	* @return    the preferred dimensions to lay out the
	*            subcomponents of the specified container
	* @see Container
	* @see #minimumLayoutSize
	* @see       java.awt.Container#getPreferredSize
	*/
	@:overload public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum dimensions needed to layout the <i>visible</i>
	* components contained in the specified target container.
	* @param target the container that needs to be laid out
	* @return    the minimum dimensions to lay out the
	*            subcomponents of the specified container
	* @see #preferredLayoutSize
	* @see       java.awt.Container
	* @see       java.awt.Container#doLayout
	*/
	@:overload public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Lays out the container. This method lets each
	* <i>visible</i> component take
	* its preferred size by reshaping the components in the
	* target container in order to satisfy the alignment of
	* this <code>FlowLayout</code> object.
	*
	* @param target the specified component being laid out
	* @see Container
	* @see       java.awt.Container#doLayout
	*/
	@:overload public function layoutContainer(target : java.awt.Container) : Void;
	
	/**
	* Returns a string representation of this <code>FlowLayout</code>
	* object and its values.
	* @return     a string representation of this layout
	*/
	@:overload public function toString() : String;
	
	
}
