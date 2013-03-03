package java.awt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicStroke implements java.awt.Stroke
{
	/**
	* Joins path segments by extending their outside edges until
	* they meet.
	*/
	@:public @:final @:static public static var JOIN_MITER(default, null) : Int;
	
	/**
	* Joins path segments by rounding off the corner at a radius
	* of half the line width.
	*/
	@:public @:final @:static public static var JOIN_ROUND(default, null) : Int;
	
	/**
	* Joins path segments by connecting the outer corners of their
	* wide outlines with a straight segment.
	*/
	@:public @:final @:static public static var JOIN_BEVEL(default, null) : Int;
	
	/**
	* Ends unclosed subpaths and dash segments with no added
	* decoration.
	*/
	@:public @:final @:static public static var CAP_BUTT(default, null) : Int;
	
	/**
	* Ends unclosed subpaths and dash segments with a round
	* decoration that has a radius equal to half of the width
	* of the pen.
	*/
	@:public @:final @:static public static var CAP_ROUND(default, null) : Int;
	
	/**
	* Ends unclosed subpaths and dash segments with a square
	* projection that extends beyond the end of the segment
	* to a distance equal to half of the line width.
	*/
	@:public @:final @:static public static var CAP_SQUARE(default, null) : Int;
	
	/**
	* Constructs a new <code>BasicStroke</code> with the specified
	* attributes.
	* @param width the width of this <code>BasicStroke</code>.  The
	*         width must be greater than or equal to 0.0f.  If width is
	*         set to 0.0f, the stroke is rendered as the thinnest
	*         possible line for the target device and the antialias
	*         hint setting.
	* @param cap the decoration of the ends of a <code>BasicStroke</code>
	* @param join the decoration applied where path segments meet
	* @param miterlimit the limit to trim the miter join.  The miterlimit
	*        must be greater than or equal to 1.0f.
	* @param dash the array representing the dashing pattern
	* @param dash_phase the offset to start the dashing pattern
	* @throws IllegalArgumentException if <code>width</code> is negative
	* @throws IllegalArgumentException if <code>cap</code> is not either
	*         CAP_BUTT, CAP_ROUND or CAP_SQUARE
	* @throws IllegalArgumentException if <code>miterlimit</code> is less
	*         than 1 and <code>join</code> is JOIN_MITER
	* @throws IllegalArgumentException if <code>join</code> is not
	*         either JOIN_ROUND, JOIN_BEVEL, or JOIN_MITER
	* @throws IllegalArgumentException if <code>dash_phase</code>
	*         is negative and <code>dash</code> is not <code>null</code>
	* @throws IllegalArgumentException if the length of
	*         <code>dash</code> is zero
	* @throws IllegalArgumentException if dash lengths are all zero.
	*/
	@:overload @:public public function new(width : Single, cap : Int, join : Int, miterlimit : Single, dash : java.NativeArray<Single>, dash_phase : Single) : Void;
	
	/**
	* Constructs a solid <code>BasicStroke</code> with the specified
	* attributes.
	* @param width the width of the <code>BasicStroke</code>
	* @param cap the decoration of the ends of a <code>BasicStroke</code>
	* @param join the decoration applied where path segments meet
	* @param miterlimit the limit to trim the miter join
	* @throws IllegalArgumentException if <code>width</code> is negative
	* @throws IllegalArgumentException if <code>cap</code> is not either
	*         CAP_BUTT, CAP_ROUND or CAP_SQUARE
	* @throws IllegalArgumentException if <code>miterlimit</code> is less
	*         than 1 and <code>join</code> is JOIN_MITER
	* @throws IllegalArgumentException if <code>join</code> is not
	*         either JOIN_ROUND, JOIN_BEVEL, or JOIN_MITER
	*/
	@:overload @:public public function new(width : Single, cap : Int, join : Int, miterlimit : Single) : Void;
	
	/**
	* Constructs a solid <code>BasicStroke</code> with the specified
	* attributes.  The <code>miterlimit</code> parameter is
	* unnecessary in cases where the default is allowable or the
	* line joins are not specified as JOIN_MITER.
	* @param width the width of the <code>BasicStroke</code>
	* @param cap the decoration of the ends of a <code>BasicStroke</code>
	* @param join the decoration applied where path segments meet
	* @throws IllegalArgumentException if <code>width</code> is negative
	* @throws IllegalArgumentException if <code>cap</code> is not either
	*         CAP_BUTT, CAP_ROUND or CAP_SQUARE
	* @throws IllegalArgumentException if <code>join</code> is not
	*         either JOIN_ROUND, JOIN_BEVEL, or JOIN_MITER
	*/
	@:overload @:public public function new(width : Single, cap : Int, join : Int) : Void;
	
	/**
	* Constructs a solid <code>BasicStroke</code> with the specified
	* line width and with default values for the cap and join
	* styles.
	* @param width the width of the <code>BasicStroke</code>
	* @throws IllegalArgumentException if <code>width</code> is negative
	*/
	@:overload @:public public function new(width : Single) : Void;
	
	/**
	* Constructs a new <code>BasicStroke</code> with defaults for all
	* attributes.
	* The default attributes are a solid line of width 1.0, CAP_SQUARE,
	* JOIN_MITER, a miter limit of 10.0.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns a <code>Shape</code> whose interior defines the
	* stroked outline of a specified <code>Shape</code>.
	* @param s the <code>Shape</code> boundary be stroked
	* @return the <code>Shape</code> of the stroked outline.
	*/
	@:overload @:public public function createStrokedShape(s : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Returns the line width.  Line width is represented in user space,
	* which is the default-coordinate space used by Java 2D.  See the
	* <code>Graphics2D</code> class comments for more information on
	* the user space coordinate system.
	* @return the line width of this <code>BasicStroke</code>.
	* @see Graphics2D
	*/
	@:overload @:public public function getLineWidth() : Single;
	
	/**
	* Returns the end cap style.
	* @return the end cap style of this <code>BasicStroke</code> as one
	* of the static <code>int</code> values that define possible end cap
	* styles.
	*/
	@:overload @:public public function getEndCap() : Int;
	
	/**
	* Returns the line join style.
	* @return the line join style of the <code>BasicStroke</code> as one
	* of the static <code>int</code> values that define possible line
	* join styles.
	*/
	@:overload @:public public function getLineJoin() : Int;
	
	/**
	* Returns the limit of miter joins.
	* @return the limit of miter joins of the <code>BasicStroke</code>.
	*/
	@:overload @:public public function getMiterLimit() : Single;
	
	/**
	* Returns the array representing the lengths of the dash segments.
	* Alternate entries in the array represent the user space lengths
	* of the opaque and transparent segments of the dashes.
	* As the pen moves along the outline of the <code>Shape</code>
	* to be stroked, the user space
	* distance that the pen travels is accumulated.  The distance
	* value is used to index into the dash array.
	* The pen is opaque when its current cumulative distance maps
	* to an even element of the dash array and transparent otherwise.
	* @return the dash array.
	*/
	@:overload @:public public function getDashArray() : java.NativeArray<Single>;
	
	/**
	* Returns the current dash phase.
	* The dash phase is a distance specified in user coordinates that
	* represents an offset into the dashing pattern. In other words, the dash
	* phase defines the point in the dashing pattern that will correspond to
	* the beginning of the stroke.
	* @return the dash phase as a <code>float</code> value.
	*/
	@:overload @:public public function getDashPhase() : Single;
	
	/**
	* Returns the hashcode for this stroke.
	* @return      a hash code for this stroke.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Tests if a specified object is equal to this <code>BasicStroke</code>
	* by first testing if it is a <code>BasicStroke</code> and then comparing
	* its width, join, cap, miter limit, dash, and dash phase attributes with
	* those of this <code>BasicStroke</code>.
	* @param  obj the specified object to compare to this
	*              <code>BasicStroke</code>
	* @return <code>true</code> if the width, join, cap, miter limit, dash, and
	*            dash phase are the same for both objects;
	*            <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
