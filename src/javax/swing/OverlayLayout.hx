package javax.swing;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OverlayLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* Constructs a layout manager that performs overlay
	* arrangement of the children.  The layout manager
	* created is dedicated to the given container.
	*
	* @param target  the container to do layout against
	*/
	@:overload @:public public function new(target : java.awt.Container) : Void;
	
	/**
	* Returns the container that uses this layout manager.
	*
	* @return the container that uses this layout manager
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:final public function getTarget() : java.awt.Container;
	
	/**
	* Indicates a child has changed its layout related information,
	* which causes any cached calculations to be flushed.
	*
	* @param target the container
	*/
	@:overload @:public public function invalidateLayout(target : java.awt.Container) : Void;
	
	/**
	* Adds the specified component to the layout. Used by
	* this class to know when to invalidate layout.
	*
	* @param name the name of the component
	* @param comp the the component to be added
	*/
	@:overload @:public public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout. Used by
	* this class to know when to invalidate layout.
	*
	* @param comp the component to remove
	*/
	@:overload @:public public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Adds the specified component to the layout, using the specified
	* constraint object. Used by this class to know when to invalidate
	* layout.
	*
	* @param comp the component to be added
	* @param constraints  where/how the component is added to the layout.
	*/
	@:overload @:public public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Returns the preferred dimensions for this layout given the components
	* in the specified target container.  Recomputes the layout if it
	* has been invalidated.  Factors in the current inset setting returned
	* by getInsets().
	*
	* @param target the component which needs to be laid out
	* @return a Dimension object containing the preferred dimensions
	* @see #minimumLayoutSize
	*/
	@:overload @:public public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum dimensions needed to lay out the components
	* contained in the specified target container.  Recomputes the layout
	* if it has been invalidated, and factors in the current inset setting.
	*
	* @param target the component which needs to be laid out
	* @return a Dimension object containing the minimum dimensions
	* @see #preferredLayoutSize
	*/
	@:overload @:public public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum dimensions needed to lay out the components
	* contained in the specified target container.  Recomputes the
	* layout if it has been invalidated, and factors in the inset setting
	* returned by <code>getInset</code>.
	*
	* @param target the component that needs to be laid out
	* @return a <code>Dimension</code> object containing the maximum
	*         dimensions
	* @see #preferredLayoutSize
	*/
	@:overload @:public public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis for the container.
	*
	* @param target the container
	* @return the alignment >= 0.0f && <= 1.0f
	*/
	@:overload @:public public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis for the container.
	*
	* @param target the container
	* @return the alignment >= 0.0f && <= 1.0f
	*/
	@:overload @:public public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	/**
	* Called by the AWT when the specified container needs to be laid out.
	*
	* @param target  the container to lay out
	*
	* @exception AWTError  if the target isn't the container specified to the
	*                      constructor
	*/
	@:overload @:public public function layoutContainer(target : java.awt.Container) : Void;
	
	
}
