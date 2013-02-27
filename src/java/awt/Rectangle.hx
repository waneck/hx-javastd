package java.awt;
/*
* Copyright (c) 1995, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Rectangle extends java.awt.geom.Rectangle2D implements java.awt.Shape implements java.io.Serializable
{
	/**
	* The X coordinate of the upper-left corner of the <code>Rectangle</code>.
	*
	* @serial
	* @see #setLocation(int, int)
	* @see #getLocation()
	* @since 1.0
	*/
	@:require(java0) public var x : Int;
	
	/**
	* The Y coordinate of the upper-left corner of the <code>Rectangle</code>.
	*
	* @serial
	* @see #setLocation(int, int)
	* @see #getLocation()
	* @since 1.0
	*/
	@:require(java0) public var y : Int;
	
	/**
	* The width of the <code>Rectangle</code>.
	* @serial
	* @see #setSize(int, int)
	* @see #getSize()
	* @since 1.0
	*/
	@:require(java0) public var width : Int;
	
	/**
	* The height of the <code>Rectangle</code>.
	*
	* @serial
	* @see #setSize(int, int)
	* @see #getSize()
	* @since 1.0
	*/
	@:require(java0) public var height : Int;
	
	/**
	* Constructs a new <code>Rectangle</code> whose upper-left corner
	* is at (0,&nbsp;0) in the coordinate space, and whose width and
	* height are both zero.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>Rectangle</code>, initialized to match
	* the values of the specified <code>Rectangle</code>.
	* @param r  the <code>Rectangle</code> from which to copy initial values
	*           to a newly constructed <code>Rectangle</code>
	* @since 1.1
	*/
	@:require(java1) @:overload public function new(r : Rectangle) : Void;
	
	/**
	* Constructs a new <code>Rectangle</code> whose upper-left corner is
	* specified as
	* {@code (x,y)} and whose width and height
	* are specified by the arguments of the same name.
	* @param     x the specified X coordinate
	* @param     y the specified Y coordinate
	* @param     width    the width of the <code>Rectangle</code>
	* @param     height   the height of the <code>Rectangle</code>
	* @since 1.0
	*/
	@:require(java0) @:overload public function new(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Constructs a new <code>Rectangle</code> whose upper-left corner
	* is at (0,&nbsp;0) in the coordinate space, and whose width and
	* height are specified by the arguments of the same name.
	* @param width the width of the <code>Rectangle</code>
	* @param height the height of the <code>Rectangle</code>
	*/
	@:overload public function new(width : Int, height : Int) : Void;
	
	/**
	* Constructs a new <code>Rectangle</code> whose upper-left corner is
	* specified by the {@link Point} argument, and
	* whose width and height are specified by the
	* {@link Dimension} argument.
	* @param p a <code>Point</code> that is the upper-left corner of
	* the <code>Rectangle</code>
	* @param d a <code>Dimension</code>, representing the
	* width and height of the <code>Rectangle</code>
	*/
	@:overload public function new(p : java.awt.Point, d : java.awt.Dimension) : Void;
	
	/**
	* Constructs a new <code>Rectangle</code> whose upper-left corner is the
	* specified <code>Point</code>, and whose width and height are both zero.
	* @param p a <code>Point</code> that is the top left corner
	* of the <code>Rectangle</code>
	*/
	@:overload public function new(p : java.awt.Point) : Void;
	
	/**
	* Constructs a new <code>Rectangle</code> whose top left corner is
	* (0,&nbsp;0) and whose width and height are specified
	* by the <code>Dimension</code> argument.
	* @param d a <code>Dimension</code>, specifying width and height
	*/
	@:overload public function new(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the X coordinate of the bounding <code>Rectangle</code> in
	* <code>double</code> precision.
	* @return the X coordinate of the bounding <code>Rectangle</code>.
	*/
	@:overload override public function getX() : Float;
	
	/**
	* Returns the Y coordinate of the bounding <code>Rectangle</code> in
	* <code>double</code> precision.
	* @return the Y coordinate of the bounding <code>Rectangle</code>.
	*/
	@:overload override public function getY() : Float;
	
	/**
	* Returns the width of the bounding <code>Rectangle</code> in
	* <code>double</code> precision.
	* @return the width of the bounding <code>Rectangle</code>.
	*/
	@:overload override public function getWidth() : Float;
	
	/**
	* Returns the height of the bounding <code>Rectangle</code> in
	* <code>double</code> precision.
	* @return the height of the bounding <code>Rectangle</code>.
	*/
	@:overload override public function getHeight() : Float;
	
	/**
	* Gets the bounding <code>Rectangle</code> of this <code>Rectangle</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>getBounds</code> method of
	* {@link Component}.
	* @return    a new <code>Rectangle</code>, equal to the
	* bounding <code>Rectangle</code> for this <code>Rectangle</code>.
	* @see       java.awt.Component#getBounds
	* @see       #setBounds(Rectangle)
	* @see       #setBounds(int, int, int, int)
	* @since     1.1
	*/
	@:require(java1) @:overload override public function getBounds() : Rectangle;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	/**
	* Sets the bounding <code>Rectangle</code> of this <code>Rectangle</code>
	* to match the specified <code>Rectangle</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setBounds</code> method of <code>Component</code>.
	* @param r the specified <code>Rectangle</code>
	* @see       #getBounds
	* @see       java.awt.Component#setBounds(java.awt.Rectangle)
	* @since     1.1
	*/
	@:require(java1) @:overload public function setBounds(r : Rectangle) : Void;
	
	/**
	* Sets the bounding <code>Rectangle</code> of this
	* <code>Rectangle</code> to the specified
	* <code>x</code>, <code>y</code>, <code>width</code>,
	* and <code>height</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setBounds</code> method of <code>Component</code>.
	* @param x the new X coordinate for the upper-left
	*                    corner of this <code>Rectangle</code>
	* @param y the new Y coordinate for the upper-left
	*                    corner of this <code>Rectangle</code>
	* @param width the new width for this <code>Rectangle</code>
	* @param height the new height for this <code>Rectangle</code>
	* @see       #getBounds
	* @see       java.awt.Component#setBounds(int, int, int, int)
	* @since     1.1
	*/
	@:require(java1) @:overload public function setBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Sets the bounds of this {@code Rectangle} to the integer bounds
	* which encompass the specified {@code x}, {@code y}, {@code width},
	* and {@code height}.
	* If the parameters specify a {@code Rectangle} that exceeds the
	* maximum range of integers, the result will be the best
	* representation of the specified {@code Rectangle} intersected
	* with the maximum integer bounds.
	* @param x the X coordinate of the upper-left corner of
	*                  the specified rectangle
	* @param y the Y coordinate of the upper-left corner of
	*                  the specified rectangle
	* @param width the width of the specified rectangle
	* @param height the new height of the specified rectangle
	*/
	@:overload override public function setRect(x : Float, y : Float, width : Float, height : Float) : Void;
	
	/**
	* Sets the bounding <code>Rectangle</code> of this
	* <code>Rectangle</code> to the specified
	* <code>x</code>, <code>y</code>, <code>width</code>,
	* and <code>height</code>.
	* <p>
	* @param x the new X coordinate for the upper-left
	*                    corner of this <code>Rectangle</code>
	* @param y the new Y coordinate for the upper-left
	*                    corner of this <code>Rectangle</code>
	* @param width the new width for this <code>Rectangle</code>
	* @param height the new height for this <code>Rectangle</code>
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setBounds(int, int, int, int)</code>.
	*/
	@:overload public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Returns the location of this <code>Rectangle</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>getLocation</code> method of <code>Component</code>.
	* @return the <code>Point</code> that is the upper-left corner of
	*                  this <code>Rectangle</code>.
	* @see       java.awt.Component#getLocation
	* @see       #setLocation(Point)
	* @see       #setLocation(int, int)
	* @since     1.1
	*/
	@:require(java1) @:overload public function getLocation() : java.awt.Point;
	
	/**
	* Moves this <code>Rectangle</code> to the specified location.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setLocation</code> method of <code>Component</code>.
	* @param p the <code>Point</code> specifying the new location
	*                for this <code>Rectangle</code>
	* @see       java.awt.Component#setLocation(java.awt.Point)
	* @see       #getLocation
	* @since     1.1
	*/
	@:require(java1) @:overload public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Moves this <code>Rectangle</code> to the specified location.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setLocation</code> method of <code>Component</code>.
	* @param x the X coordinate of the new location
	* @param y the Y coordinate of the new location
	* @see       #getLocation
	* @see       java.awt.Component#setLocation(int, int)
	* @since     1.1
	*/
	@:require(java1) @:overload public function setLocation(x : Int, y : Int) : Void;
	
	/**
	* Moves this <code>Rectangle</code> to the specified location.
	* <p>
	* @param x the X coordinate of the new location
	* @param y the Y coordinate of the new location
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setLocation(int, int)</code>.
	*/
	@:overload public function move(x : Int, y : Int) : Void;
	
	/**
	* Translates this <code>Rectangle</code> the indicated distance,
	* to the right along the X coordinate axis, and
	* downward along the Y coordinate axis.
	* @param dx the distance to move this <code>Rectangle</code>
	*                 along the X axis
	* @param dy the distance to move this <code>Rectangle</code>
	*                 along the Y axis
	* @see       java.awt.Rectangle#setLocation(int, int)
	* @see       java.awt.Rectangle#setLocation(java.awt.Point)
	*/
	@:overload public function translate(dx : Int, dy : Int) : Void;
	
	/**
	* Gets the size of this <code>Rectangle</code>, represented by
	* the returned <code>Dimension</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>getSize</code> method of <code>Component</code>.
	* @return a <code>Dimension</code>, representing the size of
	*            this <code>Rectangle</code>.
	* @see       java.awt.Component#getSize
	* @see       #setSize(Dimension)
	* @see       #setSize(int, int)
	* @since     1.1
	*/
	@:require(java1) @:overload public function getSize() : java.awt.Dimension;
	
	/**
	* Sets the size of this <code>Rectangle</code> to match the
	* specified <code>Dimension</code>.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setSize</code> method of <code>Component</code>.
	* @param d the new size for the <code>Dimension</code> object
	* @see       java.awt.Component#setSize(java.awt.Dimension)
	* @see       #getSize
	* @since     1.1
	*/
	@:require(java1) @:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Sets the size of this <code>Rectangle</code> to the specified
	* width and height.
	* <p>
	* This method is included for completeness, to parallel the
	* <code>setSize</code> method of <code>Component</code>.
	* @param width the new width for this <code>Rectangle</code>
	* @param height the new height for this <code>Rectangle</code>
	* @see       java.awt.Component#setSize(int, int)
	* @see       #getSize
	* @since     1.1
	*/
	@:require(java1) @:overload public function setSize(width : Int, height : Int) : Void;
	
	/**
	* Sets the size of this <code>Rectangle</code> to the specified
	* width and height.
	* <p>
	* @param width the new width for this <code>Rectangle</code>
	* @param height the new height for this <code>Rectangle</code>
	* @deprecated As of JDK version 1.1,
	* replaced by <code>setSize(int, int)</code>.
	*/
	@:overload public function resize(width : Int, height : Int) : Void;
	
	/**
	* Checks whether or not this <code>Rectangle</code> contains the
	* specified <code>Point</code>.
	* @param p the <code>Point</code> to test
	* @return    <code>true</code> if the specified <code>Point</code>
	*            is inside this <code>Rectangle</code>;
	*            <code>false</code> otherwise.
	* @since     1.1
	*/
	@:require(java1) @:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Checks whether or not this <code>Rectangle</code> contains the
	* point at the specified location {@code (x,y)}.
	*
	* @param  x the specified X coordinate
	* @param  y the specified Y coordinate
	* @return    <code>true</code> if the point
	*            {@code (x,y)} is inside this
	*            <code>Rectangle</code>;
	*            <code>false</code> otherwise.
	* @since     1.1
	*/
	@:require(java1) @:overload public function contains(x : Int, y : Int) : Bool;
	
	/**
	* Checks whether or not this <code>Rectangle</code> entirely contains
	* the specified <code>Rectangle</code>.
	*
	* @param     r   the specified <code>Rectangle</code>
	* @return    <code>true</code> if the <code>Rectangle</code>
	*            is contained entirely inside this <code>Rectangle</code>;
	*            <code>false</code> otherwise
	* @since     1.2
	*/
	@:require(java2) @:overload public function contains(r : Rectangle) : Bool;
	
	/**
	* Checks whether this <code>Rectangle</code> entirely contains
	* the <code>Rectangle</code>
	* at the specified location {@code (X,Y)} with the
	* specified dimensions {@code (W,H)}.
	* @param     X the specified X coordinate
	* @param     Y the specified Y coordinate
	* @param     W   the width of the <code>Rectangle</code>
	* @param     H   the height of the <code>Rectangle</code>
	* @return    <code>true</code> if the <code>Rectangle</code> specified by
	*            {@code (X, Y, W, H)}
	*            is entirely enclosed inside this <code>Rectangle</code>;
	*            <code>false</code> otherwise.
	* @since     1.1
	*/
	@:require(java1) @:overload public function contains(X : Int, Y : Int, W : Int, H : Int) : Bool;
	
	/**
	* Checks whether or not this <code>Rectangle</code> contains the
	* point at the specified location {@code (X,Y)}.
	*
	* @param  X the specified X coordinate
	* @param  Y the specified Y coordinate
	* @return    <code>true</code> if the point
	*            {@code (X,Y)} is inside this
	*            <code>Rectangle</code>;
	*            <code>false</code> otherwise.
	* @deprecated As of JDK version 1.1,
	* replaced by <code>contains(int, int)</code>.
	*/
	@:overload public function inside(X : Int, Y : Int) : Bool;
	
	/**
	* Determines whether or not this <code>Rectangle</code> and the specified
	* <code>Rectangle</code> intersect. Two rectangles intersect if
	* their intersection is nonempty.
	*
	* @param r the specified <code>Rectangle</code>
	* @return    <code>true</code> if the specified <code>Rectangle</code>
	*            and this <code>Rectangle</code> intersect;
	*            <code>false</code> otherwise.
	*/
	@:overload public function intersects(r : Rectangle) : Bool;
	
	/**
	* Computes the intersection of this <code>Rectangle</code> with the
	* specified <code>Rectangle</code>. Returns a new <code>Rectangle</code>
	* that represents the intersection of the two rectangles.
	* If the two rectangles do not intersect, the result will be
	* an empty rectangle.
	*
	* @param     r   the specified <code>Rectangle</code>
	* @return    the largest <code>Rectangle</code> contained in both the
	*            specified <code>Rectangle</code> and in
	*            this <code>Rectangle</code>; or if the rectangles
	*            do not intersect, an empty rectangle.
	*/
	@:overload public function intersection(r : Rectangle) : Rectangle;
	
	/**
	* Computes the union of this <code>Rectangle</code> with the
	* specified <code>Rectangle</code>. Returns a new
	* <code>Rectangle</code> that
	* represents the union of the two rectangles.
	* <p>
	* If either {@code Rectangle} has any dimension less than zero
	* the rules for <a href=#NonExistant>non-existant</a> rectangles
	* apply.
	* If only one has a dimension less than zero, then the result
	* will be a copy of the other {@code Rectangle}.
	* If both have dimension less than zero, then the result will
	* have at least one dimension less than zero.
	* <p>
	* If the resulting {@code Rectangle} would have a dimension
	* too large to be expressed as an {@code int}, the result
	* will have a dimension of {@code Integer.MAX_VALUE} along
	* that dimension.
	* @param r the specified <code>Rectangle</code>
	* @return    the smallest <code>Rectangle</code> containing both
	*            the specified <code>Rectangle</code> and this
	*            <code>Rectangle</code>.
	*/
	@:overload public function union(r : Rectangle) : Rectangle;
	
	/**
	* Adds a point, specified by the integer arguments {@code newx,newy}
	* to the bounds of this {@code Rectangle}.
	* <p>
	* If this {@code Rectangle} has any dimension less than zero,
	* the rules for <a href=#NonExistant>non-existant</a>
	* rectangles apply.
	* In that case, the new bounds of this {@code Rectangle} will
	* have a location equal to the specified coordinates and
	* width and height equal to zero.
	* <p>
	* After adding a point, a call to <code>contains</code> with the
	* added point as an argument does not necessarily return
	* <code>true</code>. The <code>contains</code> method does not
	* return <code>true</code> for points on the right or bottom
	* edges of a <code>Rectangle</code>. Therefore, if the added point
	* falls on the right or bottom edge of the enlarged
	* <code>Rectangle</code>, <code>contains</code> returns
	* <code>false</code> for that point.
	* If the specified point must be contained within the new
	* {@code Rectangle}, a 1x1 rectangle should be added instead:
	* <pre>
	*     r.add(newx, newy, 1, 1);
	* </pre>
	* @param newx the X coordinate of the new point
	* @param newy the Y coordinate of the new point
	*/
	@:overload public function add(newx : Int, newy : Int) : Void;
	
	/**
	* Adds the specified {@code Point} to the bounds of this
	* {@code Rectangle}.
	* <p>
	* If this {@code Rectangle} has any dimension less than zero,
	* the rules for <a href=#NonExistant>non-existant</a>
	* rectangles apply.
	* In that case, the new bounds of this {@code Rectangle} will
	* have a location equal to the coordinates of the specified
	* {@code Point} and width and height equal to zero.
	* <p>
	* After adding a <code>Point</code>, a call to <code>contains</code>
	* with the added <code>Point</code> as an argument does not
	* necessarily return <code>true</code>. The <code>contains</code>
	* method does not return <code>true</code> for points on the right
	* or bottom edges of a <code>Rectangle</code>. Therefore if the added
	* <code>Point</code> falls on the right or bottom edge of the
	* enlarged <code>Rectangle</code>, <code>contains</code> returns
	* <code>false</code> for that <code>Point</code>.
	* If the specified point must be contained within the new
	* {@code Rectangle}, a 1x1 rectangle should be added instead:
	* <pre>
	*     r.add(pt.x, pt.y, 1, 1);
	* </pre>
	* @param pt the new <code>Point</code> to add to this
	*           <code>Rectangle</code>
	*/
	@:overload public function add(pt : java.awt.Point) : Void;
	
	/**
	* Adds a <code>Rectangle</code> to this <code>Rectangle</code>.
	* The resulting <code>Rectangle</code> is the union of the two
	* rectangles.
	* <p>
	* If either {@code Rectangle} has any dimension less than 0, the
	* result will have the dimensions of the other {@code Rectangle}.
	* If both {@code Rectangle}s have at least one dimension less
	* than 0, the result will have at least one dimension less than 0.
	* <p>
	* If either {@code Rectangle} has one or both dimensions equal
	* to 0, the result along those axes with 0 dimensions will be
	* equivalent to the results obtained by adding the corresponding
	* origin coordinate to the result rectangle along that axis,
	* similar to the operation of the {@link #add(Point)} method,
	* but contribute no further dimension beyond that.
	* <p>
	* If the resulting {@code Rectangle} would have a dimension
	* too large to be expressed as an {@code int}, the result
	* will have a dimension of {@code Integer.MAX_VALUE} along
	* that dimension.
	* @param  r the specified <code>Rectangle</code>
	*/
	@:overload public function add(r : Rectangle) : Void;
	
	/**
	* Resizes the <code>Rectangle</code> both horizontally and vertically.
	* <p>
	* This method modifies the <code>Rectangle</code> so that it is
	* <code>h</code> units larger on both the left and right side,
	* and <code>v</code> units larger at both the top and bottom.
	* <p>
	* The new <code>Rectangle</code> has {@code (x - h, y - v)}
	* as its upper-left corner,
	* width of {@code (width + 2h)},
	* and a height of {@code (height + 2v)}.
	* <p>
	* If negative values are supplied for <code>h</code> and
	* <code>v</code>, the size of the <code>Rectangle</code>
	* decreases accordingly.
	* The {@code grow} method will check for integer overflow
	* and underflow, but does not check whether the resulting
	* values of {@code width} and {@code height} grow
	* from negative to non-negative or shrink from non-negative
	* to negative.
	* @param h the horizontal expansion
	* @param v the vertical expansion
	*/
	@:overload public function grow(h : Int, v : Int) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function isEmpty() : Bool;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload override public function outcode(x : Float, y : Float) : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function createIntersection(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	* @since 1.2
	*/
	@:require(java2) @:overload public function createUnion(r : java.awt.geom.Rectangle2D) : java.awt.geom.Rectangle2D;
	
	/**
	* Checks whether two rectangles are equal.
	* <p>
	* The result is <code>true</code> if and only if the argument is not
	* <code>null</code> and is a <code>Rectangle</code> object that has the
	* same upper-left corner, width, and height as
	* this <code>Rectangle</code>.
	* @param obj the <code>Object</code> to compare with
	*                this <code>Rectangle</code>
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a <code>String</code> representing this
	* <code>Rectangle</code> and its values.
	* @return a <code>String</code> representing this
	*               <code>Rectangle</code> object's coordinate and size values.
	*/
	@:overload public function toString() : String;
	
	
}
