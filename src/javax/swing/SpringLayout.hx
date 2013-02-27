package javax.swing;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A <code>SpringLayout</code> lays out the children of its associated container
* according to a set of constraints.
* See <a href="http://java.sun.com/docs/books/tutorial/uiswing/layout/spring.html">How to Use SpringLayout</a>
* in <em>The Java Tutorial</em> for examples of using
* <code>SpringLayout</code>.
*
* <p>
* Each constraint,
* represented by a <code>Spring</code> object,
* controls the vertical or horizontal distance
* between two component edges.
* The edges can belong to
* any child of the container,
* or to the container itself.
* For example,
* the allowable width of a component
* can be expressed using a constraint
* that controls the distance between the west (left) and east (right)
* edges of the component.
* The allowable <em>y</em> coordinates for a component
* can be expressed by constraining the distance between
* the north (top) edge of the component
* and the north edge of its container.
*
* <P>
* Every child of a <code>SpringLayout</code>-controlled container,
* as well as the container itself,
* has exactly one set of constraints
* associated with it.
* These constraints are represented by
* a <code>SpringLayout.Constraints</code> object.
* By default,
* <code>SpringLayout</code> creates constraints
* that make their associated component
* have the minimum, preferred, and maximum sizes
* returned by the component's
* {@link java.awt.Component#getMinimumSize},
* {@link java.awt.Component#getPreferredSize}, and
* {@link java.awt.Component#getMaximumSize}
* methods. The <em>x</em> and <em>y</em> positions are initially not
* constrained, so that until you constrain them the <code>Component</code>
* will be positioned at 0,0 relative to the <code>Insets</code> of the
* parent <code>Container</code>.
*
* <p>
* You can change
* a component's constraints in several ways.
* You can
* use one of the
* {@link #putConstraint putConstraint}
* methods
* to establish a spring
* linking the edges of two components within the same container.
* Or you can get the appropriate <code>SpringLayout.Constraints</code>
* object using
* {@link #getConstraints getConstraints}
* and then modify one or more of its springs.
* Or you can get the spring for a particular edge of a component
* using {@link #getConstraint getConstraint},
* and modify it.
* You can also associate
* your own <code>SpringLayout.Constraints</code> object
* with a component by specifying the constraints object
* when you add the component to its container
* (using
* {@link Container#add(Component, Object)}).
*
* <p>
* The <code>Spring</code> object representing each constraint
* has a minimum, preferred, maximum, and current value.
* The current value of the spring
* is somewhere between the minimum and maximum values,
* according to the formula given in the
* {@link Spring#sum} method description.
* When the minimum, preferred, and maximum values are the same,
* the current value is always equal to them;
* this inflexible spring is called a <em>strut</em>.
* You can create struts using the factory method
* {@link Spring#constant(int)}.
* The <code>Spring</code> class also provides factory methods
* for creating other kinds of springs,
* including springs that depend on other springs.
*
* <p>
* In a <code>SpringLayout</code>, the position of each edge is dependent on
* the position of just one other edge. If a constraint is subsequently added
* to create a new binding for an edge, the previous binding is discarded
* and the edge remains dependent on a single edge.
* Springs should only be attached
* between edges of the container and its immediate children; the behavior
* of the <code>SpringLayout</code> when presented with constraints linking
* the edges of components from different containers (either internal or
* external) is undefined.
*
* <h3>
* SpringLayout vs. Other Layout Managers
* </h3>
*
* <blockquote>
* <hr>
* <strong>Note:</strong>
* Unlike many layout managers,
* <code>SpringLayout</code> doesn't automatically set the location of
* the components it manages.
* If you hand-code a GUI that uses <code>SpringLayout</code>,
* remember to initialize component locations by constraining the west/east
* and north/south locations.
* <p>
* Depending on the constraints you use,
* you may also need to set the size of the container explicitly.
* <hr>
* </blockquote>
*
* <p>
* Despite the simplicity of <code>SpringLayout</code>,
* it can emulate the behavior of most other layout managers.
* For some features,
* such as the line breaking provided by <code>FlowLayout</code>,
* you'll need to
* create a special-purpose subclass of the <code>Spring</code> class.
*
* <p>
* <code>SpringLayout</code> also provides a way to solve
* many of the difficult layout
* problems that cannot be solved by nesting combinations
* of <code>Box</code>es. That said, <code>SpringLayout</code> honors the
* <code>LayoutManager2</code> contract correctly and so can be nested with
* other layout managers -- a technique that can be preferable to
* creating the constraints implied by the other layout managers.
* <p>
* The asymptotic complexity of the layout operation of a <code>SpringLayout</code>
* is linear in the number of constraints (and/or components).
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see Spring
* @see SpringLayout.Constraints
*
* @author      Philip Milne
* @author      Scott Violet
* @author      Joe Winchester
* @since       1.4
*/
@:require(java4) extern class SpringLayout implements java.awt.LayoutManager2
{
	/**
	* Specifies the top edge of a component's bounding rectangle.
	*/
	public static var NORTH(default, null) : String;
	
	/**
	* Specifies the bottom edge of a component's bounding rectangle.
	*/
	public static var SOUTH(default, null) : String;
	
	/**
	* Specifies the right edge of a component's bounding rectangle.
	*/
	public static var EAST(default, null) : String;
	
	/**
	* Specifies the left edge of a component's bounding rectangle.
	*/
	public static var WEST(default, null) : String;
	
	/**
	* Specifies the horizontal center of a component's bounding rectangle.
	*
	* @since 1.6
	*/
	@:require(java6) public static var HORIZONTAL_CENTER(default, null) : String;
	
	/**
	* Specifies the vertical center of a component's bounding rectangle.
	*
	* @since 1.6
	*/
	@:require(java6) public static var VERTICAL_CENTER(default, null) : String;
	
	/**
	* Specifies the baseline of a component.
	*
	* @since 1.6
	*/
	@:require(java6) public static var BASELINE(default, null) : String;
	
	/**
	* Specifies the width of a component's bounding rectangle.
	*
	* @since 1.6
	*/
	@:require(java6) public static var WIDTH(default, null) : String;
	
	/**
	* Specifies the height of a component's bounding rectangle.
	*
	* @since 1.6
	*/
	@:require(java6) public static var HEIGHT(default, null) : String;
	
	/**
	* Constructs a new <code>SpringLayout</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Has no effect,
	* since this layout manager does not
	* use a per-component string.
	*/
	@:overload public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	/**
	* Removes the constraints associated with the specified component.
	*
	* @param c the component being removed from the container
	*/
	@:overload public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	@:overload public function maximumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* If <code>constraints</code> is an instance of
	* <code>SpringLayout.Constraints</code>,
	* associates the constraints with the specified component.
	* <p>
	* @param   component the component being added
	* @param   constraints the component's constraints
	*
	* @see SpringLayout.Constraints
	*/
	@:overload public function addLayoutComponent(component : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Returns 0.5f (centered).
	*/
	@:overload public function getLayoutAlignmentX(p : java.awt.Container) : Single;
	
	/**
	* Returns 0.5f (centered).
	*/
	@:overload public function getLayoutAlignmentY(p : java.awt.Container) : Single;
	
	@:overload public function invalidateLayout(p : java.awt.Container) : Void;
	
	/**
	* Links edge <code>e1</code> of component <code>c1</code> to
	* edge <code>e2</code> of component <code>c2</code>,
	* with a fixed distance between the edges. This
	* constraint will cause the assignment
	* <pre>
	*     value(e1, c1) = value(e2, c2) + pad</pre>
	* to take place during all subsequent layout operations.
	* <p>
	* @param   e1 the edge of the dependent
	* @param   c1 the component of the dependent
	* @param   pad the fixed distance between dependent and anchor
	* @param   e2 the edge of the anchor
	* @param   c2 the component of the anchor
	*
	* @see #putConstraint(String, Component, Spring, String, Component)
	*/
	@:overload public function putConstraint(e1 : String, c1 : java.awt.Component, pad : Int, e2 : String, c2 : java.awt.Component) : Void;
	
	/**
	* Links edge <code>e1</code> of component <code>c1</code> to
	* edge <code>e2</code> of component <code>c2</code>. As edge
	* <code>(e2, c2)</code> changes value, edge <code>(e1, c1)</code> will
	* be calculated by taking the (spring) sum of <code>(e2, c2)</code>
	* and <code>s</code>.
	* Each edge must have one of the following values:
	* <code>SpringLayout.NORTH</code>,
	* <code>SpringLayout.SOUTH</code>,
	* <code>SpringLayout.EAST</code>,
	* <code>SpringLayout.WEST</code>,
	* <code>SpringLayout.VERTICAL_CENTER</code>,
	* <code>SpringLayout.HORIZONTAL_CENTER</code> or
	* <code>SpringLayout.BASELINE</code>.
	* <p>
	* @param   e1 the edge of the dependent
	* @param   c1 the component of the dependent
	* @param   s the spring linking dependent and anchor
	* @param   e2 the edge of the anchor
	* @param   c2 the component of the anchor
	*
	* @see #putConstraint(String, Component, int, String, Component)
	* @see #NORTH
	* @see #SOUTH
	* @see #EAST
	* @see #WEST
	* @see #VERTICAL_CENTER
	* @see #HORIZONTAL_CENTER
	* @see #BASELINE
	*/
	@:overload public function putConstraint(e1 : String, c1 : java.awt.Component, s : javax.swing.Spring, e2 : String, c2 : java.awt.Component) : Void;
	
	/**
	* Returns the constraints for the specified component.
	* Note that,
	* unlike the <code>GridBagLayout</code>
	* <code>getConstraints</code> method,
	* this method does not clone constraints.
	* If no constraints
	* have been associated with this component,
	* this method
	* returns a default constraints object positioned at
	* 0,0 relative to the parent's Insets and its width/height
	* constrained to the minimum, maximum, and preferred sizes of the
	* component. The size characteristics
	* are not frozen at the time this method is called;
	* instead this method returns a constraints object
	* whose characteristics track the characteristics
	* of the component as they change.
	*
	* @param       c the component whose constraints will be returned
	*
	* @return      the constraints for the specified component
	*/
	@:overload public function getConstraints(c : java.awt.Component) : SpringLayout_Constraints;
	
	/**
	* Returns the spring controlling the distance between
	* the specified edge of
	* the component and the top or left edge of its parent. This
	* method, instead of returning the current binding for the
	* edge, returns a proxy that tracks the characteristics
	* of the edge even if the edge is subsequently rebound.
	* Proxies are intended to be used in builder envonments
	* where it is useful to allow the user to define the
	* constraints for a layout in any order. Proxies do, however,
	* provide the means to create cyclic dependencies amongst
	* the constraints of a layout. Such cycles are detected
	* internally by <code>SpringLayout</code> so that
	* the layout operation always terminates.
	*
	* @param edgeName must be one of
	* <code>SpringLayout.NORTH</code>,
	* <code>SpringLayout.SOUTH</code>,
	* <code>SpringLayout.EAST</code>,
	* <code>SpringLayout.WEST</code>,
	* <code>SpringLayout.VERTICAL_CENTER</code>,
	* <code>SpringLayout.HORIZONTAL_CENTER</code> or
	* <code>SpringLayout.BASELINE</code>
	* @param c the component whose edge spring is desired
	*
	* @return a proxy for the spring controlling the distance between the
	*         specified edge and the top or left edge of its parent
	*
	* @see #NORTH
	* @see #SOUTH
	* @see #EAST
	* @see #WEST
	* @see #VERTICAL_CENTER
	* @see #HORIZONTAL_CENTER
	* @see #BASELINE
	*/
	@:overload public function getConstraint(edgeName : String, c : java.awt.Component) : javax.swing.Spring;
	
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
/**
* A <code>Constraints</code> object holds the
* constraints that govern the way a component's size and position
* change in a container controlled by a <code>SpringLayout</code>.
* A <code>Constraints</code> object is
* like a <code>Rectangle</code>, in that it
* has <code>x</code>, <code>y</code>,
* <code>width</code>, and <code>height</code> properties.
* In the <code>Constraints</code> object, however,
* these properties have
* <code>Spring</code> values instead of integers.
* In addition,
* a <code>Constraints</code> object
* can be manipulated as four edges
* -- north, south, east, and west --
* using the <code>constraint</code> property.
*
* <p>
* The following formulas are always true
* for a <code>Constraints</code> object (here WEST and <code>x</code> are synonyms, as are and NORTH and <code>y</code>):
*
* <pre>
*               EAST = WEST + WIDTH
*              SOUTH = NORTH + HEIGHT
*  HORIZONTAL_CENTER = WEST + WIDTH/2
*    VERTICAL_CENTER = NORTH + HEIGHT/2
*  ABSOLUTE_BASELINE = NORTH + RELATIVE_BASELINE*
* </pre>
* <p>
* For example, if you have specified the WIDTH and WEST (X) location
* the EAST is calculated as WEST + WIDTH.  If you instead specified
* the WIDTH and EAST locations the WEST (X) location is then calculated
* as EAST - WIDTH.
* <p>
* [RELATIVE_BASELINE is a private constraint that is set automatically when
* the SpringLayout.Constraints(Component) constuctor is called or when
* a constraints object is registered with a SpringLayout object.]
* <p>
* <b>Note</b>: In this document,
* operators represent methods
* in the <code>Spring</code> class.
* For example, "a + b" is equal to
* <code>Spring.sum(a, b)</code>,
* and "a - b" is equal to
* <code>Spring.sum(a, Spring.minus(b))</code>.
* See the
* {@link Spring <code>Spring</code> API documentation}
* for further details
* of spring arithmetic.
*
* <p>
*
* Because a <code>Constraints</code> object's properties --
* representing its edges, size, and location -- can all be set
* independently and yet are interrelated,
* a <code>Constraints</code> object can become <em>over-constrained</em>.
* For example, if the <code>WEST</code>, <code>WIDTH</code> and
* <code>EAST</code> edges are all set, steps must be taken to ensure that
* the first of the formulas above holds.  To do this, the
* <code>Constraints</code>
* object throws away the <em>least recently set</em>
* constraint so as to make the formulas hold.
* @since 1.4
*/
@:require(java4) @:native('javax$swing$SpringLayout$Constraints') extern class SpringLayout_Constraints
{
	/**
	* Creates an empty <code>Constraints</code> object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>Constraints</code> object with the
	* specified values for its
	* <code>x</code> and <code>y</code> properties.
	* The <code>height</code> and <code>width</code> springs
	* have <code>null</code> values.
	*
	* @param x  the spring controlling the component's <em>x</em> value
	* @param y  the spring controlling the component's <em>y</em> value
	*/
	@:overload public function new(x : javax.swing.Spring, y : javax.swing.Spring) : Void;
	
	/**
	* Creates a <code>Constraints</code> object with the
	* specified values for its
	* <code>x</code>, <code>y</code>, <code>width</code>,
	* and <code>height</code> properties.
	* Note: If the <code>SpringLayout</code> class
	* encounters <code>null</code> values in the
	* <code>Constraints</code> object of a given component,
	* it replaces them with suitable defaults.
	*
	* @param x  the spring value for the <code>x</code> property
	* @param y  the spring value for the <code>y</code> property
	* @param width  the spring value for the <code>width</code> property
	* @param height  the spring value for the <code>height</code> property
	*/
	@:overload public function new(x : javax.swing.Spring, y : javax.swing.Spring, width : javax.swing.Spring, height : javax.swing.Spring) : Void;
	
	/**
	* Creates a <code>Constraints</code> object with
	* suitable <code>x</code>, <code>y</code>, <code>width</code> and
	* <code>height</code> springs for component, <code>c</code>.
	* The <code>x</code> and <code>y</code> springs are constant
	* springs  initialised with the component's location at
	* the time this method is called. The <code>width</code> and
	* <code>height</code> springs are special springs, created by
	* the <code>Spring.width()</code> and <code>Spring.height()</code>
	* methods, which track the size characteristics of the component
	* when they change.
	*
	* @param c  the component whose characteristics will be reflected by this Constraints object
	* @throws NullPointerException if <code>c</code> is null.
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(c : java.awt.Component) : Void;
	
	/**
	* Sets the <code>x</code> property,
	* which controls the <code>x</code> value
	* of a component's location.
	*
	* @param x the spring controlling the <code>x</code> value
	*          of a component's location
	*
	* @see #getX
	* @see SpringLayout.Constraints
	*/
	@:overload public function setX(x : javax.swing.Spring) : Void;
	
	/**
	* Returns the value of the <code>x</code> property.
	*
	* @return the spring controlling the <code>x</code> value
	*         of a component's location
	*
	* @see #setX
	* @see SpringLayout.Constraints
	*/
	@:overload public function getX() : javax.swing.Spring;
	
	/**
	* Sets the <code>y</code> property,
	* which controls the <code>y</code> value
	* of a component's location.
	*
	* @param y the spring controlling the <code>y</code> value
	*          of a component's location
	*
	* @see #getY
	* @see SpringLayout.Constraints
	*/
	@:overload public function setY(y : javax.swing.Spring) : Void;
	
	/**
	* Returns the value of the <code>y</code> property.
	*
	* @return the spring controlling the <code>y</code> value
	*         of a component's location
	*
	* @see #setY
	* @see SpringLayout.Constraints
	*/
	@:overload public function getY() : javax.swing.Spring;
	
	/**
	* Sets the <code>width</code> property,
	* which controls the width of a component.
	*
	* @param width the spring controlling the width of this
	* <code>Constraints</code> object
	*
	* @see #getWidth
	* @see SpringLayout.Constraints
	*/
	@:overload public function setWidth(width : javax.swing.Spring) : Void;
	
	/**
	* Returns the value of the <code>width</code> property.
	*
	* @return the spring controlling the width of a component
	*
	* @see #setWidth
	* @see SpringLayout.Constraints
	*/
	@:overload public function getWidth() : javax.swing.Spring;
	
	/**
	* Sets the <code>height</code> property,
	* which controls the height of a component.
	*
	* @param height the spring controlling the height of this <code>Constraints</code>
	* object
	*
	* @see #getHeight
	* @see SpringLayout.Constraints
	*/
	@:overload public function setHeight(height : javax.swing.Spring) : Void;
	
	/**
	* Returns the value of the <code>height</code> property.
	*
	* @return the spring controlling the height of a component
	*
	* @see #setHeight
	* @see SpringLayout.Constraints
	*/
	@:overload public function getHeight() : javax.swing.Spring;
	
	/**
	* Sets the spring controlling the specified edge.
	* The edge must have one of the following values:
	* <code>SpringLayout.NORTH</code>,
	* <code>SpringLayout.SOUTH</code>,
	* <code>SpringLayout.EAST</code>,
	* <code>SpringLayout.WEST</code>,
	* <code>SpringLayout.HORIZONTAL_CENTER</code>,
	* <code>SpringLayout.VERTICAL_CENTER</code>,
	* <code>SpringLayout.BASELINE</code>,
	* <code>SpringLayout.WIDTH</code> or
	* <code>SpringLayout.HEIGHT</code>.
	* For any other <code>String</code> value passed as the edge,
	* no action is taken. For a <code>null</code> edge, a
	* <code>NullPointerException</code> is thrown.
	* <p/>
	* <b>Note:</b> This method can affect {@code x} and {@code y} values
	* previously set for this {@code Constraints}.
	*
	* @param edgeName the edge to be set
	* @param s the spring controlling the specified edge
	*
	* @throws NullPointerException if <code>edgeName</code> is <code>null</code>
	*
	* @see #getConstraint
	* @see #NORTH
	* @see #SOUTH
	* @see #EAST
	* @see #WEST
	* @see #HORIZONTAL_CENTER
	* @see #VERTICAL_CENTER
	* @see #BASELINE
	* @see #WIDTH
	* @see #HEIGHT
	* @see SpringLayout.Constraints
	*/
	@:overload public function setConstraint(edgeName : String, s : javax.swing.Spring) : Void;
	
	/**
	* Returns the value of the specified edge, which may be
	* a derived value, or even <code>null</code>.
	* The edge must have one of the following values:
	* <code>SpringLayout.NORTH</code>,
	* <code>SpringLayout.SOUTH</code>,
	* <code>SpringLayout.EAST</code>,
	* <code>SpringLayout.WEST</code>,
	* <code>SpringLayout.HORIZONTAL_CENTER</code>,
	* <code>SpringLayout.VERTICAL_CENTER</code>,
	* <code>SpringLayout.BASELINE</code>,
	* <code>SpringLayout.WIDTH</code> or
	* <code>SpringLayout.HEIGHT</code>.
	* For any other <code>String</code> value passed as the edge,
	* <code>null</code> will be returned. Throws
	* <code>NullPointerException</code> for a <code>null</code> edge.
	*
	* @param edgeName the edge whose value
	*                 is to be returned
	*
	* @return the spring controlling the specified edge, may be <code>null</code>
	*
	* @throws NullPointerException if <code>edgeName</code> is <code>null</code>
	*
	* @see #setConstraint
	* @see #NORTH
	* @see #SOUTH
	* @see #EAST
	* @see #WEST
	* @see #HORIZONTAL_CENTER
	* @see #VERTICAL_CENTER
	* @see #BASELINE
	* @see #WIDTH
	* @see #HEIGHT
	* @see SpringLayout.Constraints
	*/
	@:overload public function getConstraint(edgeName : String) : javax.swing.Spring;
	
	
}
@:native('javax$swing$SpringLayout$SpringProxy') @:internal extern class SpringLayout_SpringProxy extends javax.swing.Spring
{
	@:overload public function new(edgeName : String, c : java.awt.Component, l : SpringLayout) : Void;
	
	@:overload override public function getMinimumValue() : Int;
	
	@:overload override public function getPreferredValue() : Int;
	
	@:overload override public function getMaximumValue() : Int;
	
	@:overload override public function getValue() : Int;
	
	@:overload override public function setValue(size : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}
