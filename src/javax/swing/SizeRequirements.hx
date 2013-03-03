package javax.swing;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SizeRequirements implements java.io.Serializable
{
	/**
	* The minimum size required.
	* For a component <code>comp</code>, this should be equal to either
	* <code>comp.getMinimumSize().width</code> or
	* <code>comp.getMinimumSize().height</code>.
	*/
	@:public public var minimum : Int;
	
	/**
	* The preferred (natural) size.
	* For a component <code>comp</code>, this should be equal to either
	* <code>comp.getPreferredSize().width</code> or
	* <code>comp.getPreferredSize().height</code>.
	*/
	@:public public var preferred : Int;
	
	/**
	* The maximum size allowed.
	* For a component <code>comp</code>, this should be equal to either
	* <code>comp.getMaximumSize().width</code> or
	* <code>comp.getMaximumSize().height</code>.
	*/
	@:public public var maximum : Int;
	
	/**
	* The alignment, specified as a value between 0.0 and 1.0,
	* inclusive.
	* To specify centering, the alignment should be 0.5.
	*/
	@:public public var alignment : Single;
	
	/**
	* Creates a SizeRequirements object with the minimum, preferred,
	* and maximum sizes set to zero and an alignment value of 0.5
	* (centered).
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a SizeRequirements object with the specified minimum, preferred,
	* and maximum sizes and the specified alignment.
	*
	* @param min the minimum size >= 0
	* @param pref the preferred size >= 0
	* @param max the maximum size >= 0
	* @param a the alignment >= 0.0f && <= 1.0f
	*/
	@:overload @:public public function new(min : Int, pref : Int, max : Int, a : Single) : Void;
	
	/**
	* Returns a string describing the minimum, preferred, and maximum
	* size requirements, along with the alignment.
	*
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Determines the total space necessary to
	* place a set of components end-to-end.  The needs
	* of each component in the set are represented by an entry in the
	* passed-in SizeRequirements array.
	* The returned SizeRequirements object has an alignment of 0.5
	* (centered).  The space requirement is never more than
	* Integer.MAX_VALUE.
	*
	* @param children  the space requirements for a set of components.
	*   The vector may be of zero length, which will result in a
	*   default SizeRequirements object instance being passed back.
	* @return  the total space requirements.
	*/
	@:overload @:public @:static public static function getTiledSizeRequirements(children : java.NativeArray<javax.swing.SizeRequirements>) : javax.swing.SizeRequirements;
	
	/**
	* Determines the total space necessary to
	* align a set of components.  The needs
	* of each component in the set are represented by an entry in the
	* passed-in SizeRequirements array.  The total space required will
	* never be more than Integer.MAX_VALUE.
	*
	* @param children  the set of child requirements.  If of zero length,
	*  the returns result will be a default instance of SizeRequirements.
	* @return  the total space requirements.
	*/
	@:overload @:public @:static public static function getAlignedSizeRequirements(children : java.NativeArray<javax.swing.SizeRequirements>) : javax.swing.SizeRequirements;
	
	/**
	* Creates a set of offset/span pairs representing how to
	* lay out a set of components end-to-end.
	* This method requires that you specify
	* the total amount of space to be allocated,
	* the size requirements for each component to be placed
	* (specified as an array of SizeRequirements), and
	* the total size requirement of the set of components.
	* You can get the total size requirement
	* by invoking the getTiledSizeRequirements method.  The components
	* will be tiled in the forward direction with offsets increasing from 0.
	*
	* @param allocated the total span to be allocated >= 0.
	* @param total     the total of the children requests.  This argument
	*  is optional and may be null.
	* @param children  the size requirements for each component.
	* @param offsets   the offset from 0 for each child where
	*   the spans were allocated (determines placement of the span).
	* @param spans     the span allocated for each child to make the
	*   total target span.
	*/
	@:overload @:public @:static public static function calculateTiledPositions(allocated : Int, total : javax.swing.SizeRequirements, children : java.NativeArray<javax.swing.SizeRequirements>, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Creates a set of offset/span pairs representing how to
	* lay out a set of components end-to-end.
	* This method requires that you specify
	* the total amount of space to be allocated,
	* the size requirements for each component to be placed
	* (specified as an array of SizeRequirements), and
	* the total size requirement of the set of components.
	* You can get the total size requirement
	* by invoking the getTiledSizeRequirements method.
	*
	* This method also requires a flag indicating whether components
	* should be tiled in the forward direction (offsets increasing
	* from 0) or reverse direction (offsets decreasing from the end
	* of the allocated space).  The forward direction represents
	* components tiled from left to right or top to bottom.  The
	* reverse direction represents components tiled from right to left
	* or bottom to top.
	*
	* @param allocated the total span to be allocated >= 0.
	* @param total     the total of the children requests.  This argument
	*  is optional and may be null.
	* @param children  the size requirements for each component.
	* @param offsets   the offset from 0 for each child where
	*   the spans were allocated (determines placement of the span).
	* @param spans     the span allocated for each child to make the
	*   total target span.
	* @param forward   tile with offsets increasing from 0 if true
	*   and with offsets decreasing from the end of the allocated space
	*   if false.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function calculateTiledPositions(allocated : Int, total : javax.swing.SizeRequirements, children : java.NativeArray<javax.swing.SizeRequirements>, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>, forward : Bool) : Void;
	
	/**
	* Creates a bunch of offset/span pairs specifying how to
	* lay out a set of components with the specified alignments.
	* The resulting span allocations will overlap, with each one
	* fitting as well as possible into the given total allocation.
	* This method requires that you specify
	* the total amount of space to be allocated,
	* the size requirements for each component to be placed
	* (specified as an array of SizeRequirements), and
	* the total size requirements of the set of components
	* (only the alignment field of which is actually used).
	* You can get the total size requirement by invoking
	* getAlignedSizeRequirements.
	*
	* Normal alignment will be done with an alignment value of 0.0f
	* representing the left/top edge of a component.
	*
	* @param allocated the total span to be allocated >= 0.
	* @param total     the total of the children requests.
	* @param children  the size requirements for each component.
	* @param offsets   the offset from 0 for each child where
	*   the spans were allocated (determines placement of the span).
	* @param spans     the span allocated for each child to make the
	*   total target span.
	*/
	@:overload @:public @:static public static function calculateAlignedPositions(allocated : Int, total : javax.swing.SizeRequirements, children : java.NativeArray<javax.swing.SizeRequirements>, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Creates a set of offset/span pairs specifying how to
	* lay out a set of components with the specified alignments.
	* The resulting span allocations will overlap, with each one
	* fitting as well as possible into the given total allocation.
	* This method requires that you specify
	* the total amount of space to be allocated,
	* the size requirements for each component to be placed
	* (specified as an array of SizeRequirements), and
	* the total size requirements of the set of components
	* (only the alignment field of which is actually used)
	* You can get the total size requirement by invoking
	* getAlignedSizeRequirements.
	*
	* This method also requires a flag indicating whether normal or
	* reverse alignment should be performed.  With normal alignment
	* the value 0.0f represents the left/top edge of the component
	* to be aligned.  With reverse alignment, 0.0f represents the
	* right/bottom edge.
	*
	* @param allocated the total span to be allocated >= 0.
	* @param total     the total of the children requests.
	* @param children  the size requirements for each component.
	* @param offsets   the offset from 0 for each child where
	*   the spans were allocated (determines placement of the span).
	* @param spans     the span allocated for each child to make the
	*   total target span.
	* @param normal    when true, the alignment value 0.0f means
	*   left/top; when false, it means right/bottom.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function calculateAlignedPositions(allocated : Int, total : javax.swing.SizeRequirements, children : java.NativeArray<javax.swing.SizeRequirements>, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>, normal : Bool) : Void;
	
	/**
	* Adjust a specified array of sizes by a given amount.
	*
	* @param delta     an int specifying the size difference
	* @param children  an array of SizeRequirements objects
	* @return an array of ints containing the final size for each item
	*/
	@:overload @:public @:static public static function adjustSizes(delta : Int, children : java.NativeArray<javax.swing.SizeRequirements>) : java.NativeArray<Int>;
	
	
}
