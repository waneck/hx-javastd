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
extern class BoxLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* Specifies that components should be laid out left to right.
	*/
	public static var X_AXIS(default, null) : Int;
	
	/**
	* Specifies that components should be laid out top to bottom.
	*/
	public static var Y_AXIS(default, null) : Int;
	
	/**
	* Specifies that components should be laid out in the direction of
	* a line of text as determined by the target container's
	* <code>ComponentOrientation</code> property.
	*/
	public static var LINE_AXIS(default, null) : Int;
	
	/**
	* Specifies that components should be laid out in the direction that
	* lines flow across a page as determined by the target container's
	* <code>ComponentOrientation</code> property.
	*/
	public static var PAGE_AXIS(default, null) : Int;
	
	/**
	* Creates a layout manager that will lay out components along the
	* given axis.
	*
	* @param target  the container that needs to be laid out
	* @param axis  the axis to lay out components along. Can be one of:
	*              <code>BoxLayout.X_AXIS</code>,
	*              <code>BoxLayout.Y_AXIS</code>,
	*              <code>BoxLayout.LINE_AXIS</code> or
	*              <code>BoxLayout.PAGE_AXIS</code>
	*
	* @exception AWTError  if the value of <code>axis</code> is invalid
	*/
	@:overload public function new(target : java.awt.Container, axis : Int) : Void;
	
	/**
	* Returns the container that uses this layout manager.
	*
	* @return the container that uses this layout manager
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getTarget() : java.awt.Container;
	
	/**
	* Returns the axis that was used to lay out components.
	* Returns one of:
	* <code>BoxLayout.X_AXIS</code>,
	* <code>BoxLayout.Y_AXIS</code>,
	* <code>BoxLayout.LINE_AXIS</code> or
	* <code>BoxLayout.PAGE_AXIS</code>
	*
	* @return the axis that was used to lay out components
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getAxis() : Int;
	
	/**
	* Indicates that a child has changed its layout related information,
	* and thus any cached calculations should be flushed.
	* <p>
	* This method is called by AWT when the invalidate method is called
	* on the Container.  Since the invalidate method may be called
	* asynchronously to the event thread, this method may be called
	* asynchronously.
	*
	* @param target  the affected container
	*
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	*/
	@:overload @:synchronized public function invalidateLayout(target : java.awt.Container) : Void;
	
	/**
	* Not used by this class.
	*
	* @param name the name of the component
	* @param comp the component
	*/
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Not used by this class.
	*
	* @param comp the component
	*/
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Not used by this class.
	*
	* @param comp the component
	* @param constraints constraints
	*/
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Returns the preferred dimensions for this layout, given the components
	* in the specified target container.
	*
	* @param target  the container that needs to be laid out
	* @return the dimensions >= 0 && <= Integer.MAX_VALUE
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	* @see Container
	* @see #minimumLayoutSize
	* @see #maximumLayoutSize
	*/
	@:overload public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum dimensions needed to lay out the components
	* contained in the specified target container.
	*
	* @param target  the container that needs to be laid out
	* @return the dimensions >= 0 && <= Integer.MAX_VALUE
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	* @see #preferredLayoutSize
	* @see #maximumLayoutSize
	*/
	@:overload public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum dimensions the target container can use
	* to lay out the components it contains.
	*
	* @param target  the container that needs to be laid out
	* @return the dimenions >= 0 && <= Integer.MAX_VALUE
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	* @see #preferredLayoutSize
	* @see #minimumLayoutSize
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the X axis for the container.
	* If the box is horizontal, the default
	* alignment will be returned. Otherwise, the alignment needed
	* to place the children along the X axis will be returned.
	*
	* @param target  the container
	* @return the alignment >= 0.0f && <= 1.0f
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	*/
	@:overload @:synchronized public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the Y axis for the container.
	* If the box is vertical, the default
	* alignment will be returned. Otherwise, the alignment needed
	* to place the children along the Y axis will be returned.
	*
	* @param target  the container
	* @return the alignment >= 0.0f && <= 1.0f
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	*/
	@:overload @:synchronized public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	/**
	* Called by the AWT <!-- XXX CHECK! --> when the specified container
	* needs to be laid out.
	*
	* @param target  the container to lay out
	*
	* @exception AWTError  if the target isn't the container specified to the
	*                      BoxLayout constructor
	*/
	@:overload public function layoutContainer(target : java.awt.Container) : Void;
	
	
}
