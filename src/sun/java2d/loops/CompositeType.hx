package sun.java2d.loops;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CompositeType
{
	/**
	* algorithm is a general algorithm that uses a CompositeContext
	* to do the rendering.
	*/
	public static var DESC_ANY(default, null) : String;
	
	/**
	* constant used to describe the Graphics.setXORMode() algorithm
	*/
	public static var DESC_XOR(default, null) : String;
	
	/**
	* constants used to describe the various AlphaComposite
	* algorithms.
	*/
	public static var DESC_CLEAR(default, null) : String;
	
	public static var DESC_SRC(default, null) : String;
	
	public static var DESC_DST(default, null) : String;
	
	public static var DESC_SRC_OVER(default, null) : String;
	
	public static var DESC_DST_OVER(default, null) : String;
	
	public static var DESC_SRC_IN(default, null) : String;
	
	public static var DESC_DST_IN(default, null) : String;
	
	public static var DESC_SRC_OUT(default, null) : String;
	
	public static var DESC_DST_OUT(default, null) : String;
	
	public static var DESC_SRC_ATOP(default, null) : String;
	
	public static var DESC_DST_ATOP(default, null) : String;
	
	public static var DESC_ALPHA_XOR(default, null) : String;
	
	/**
	* constants used to describe the two common cases of
	* AlphaComposite algorithms that are simpler if there
	* is not extraAlpha.
	*/
	public static var DESC_SRC_NO_EA(default, null) : String;
	
	public static var DESC_SRC_OVER_NO_EA(default, null) : String;
	
	/**
	* constant used to describe an algorithm that implements all 8 of
	* the Porter-Duff rules in one Primitive.
	*/
	public static var DESC_ANY_ALPHA(default, null) : String;
	
	/**
	* The root CompositeType object for all chains of algorithm descriptions.
	*/
	public static var Any(default, null) : CompositeType;
	
	/*
	* START OF CompositeeType OBJECTS FOR THE VARIOUS CONSTANTS
	*/
	public static var General(default, null) : CompositeType;
	
	public static var AnyAlpha(default, null) : CompositeType;
	
	public static var Xor(default, null) : CompositeType;
	
	public static var Clear(default, null) : CompositeType;
	
	public static var Src(default, null) : CompositeType;
	
	public static var Dst(default, null) : CompositeType;
	
	public static var SrcOver(default, null) : CompositeType;
	
	public static var DstOver(default, null) : CompositeType;
	
	public static var SrcIn(default, null) : CompositeType;
	
	public static var DstIn(default, null) : CompositeType;
	
	public static var SrcOut(default, null) : CompositeType;
	
	public static var DstOut(default, null) : CompositeType;
	
	public static var SrcAtop(default, null) : CompositeType;
	
	public static var DstAtop(default, null) : CompositeType;
	
	public static var AlphaXor(default, null) : CompositeType;
	
	public static var SrcNoEa(default, null) : CompositeType;
	
	public static var SrcOverNoEa(default, null) : CompositeType;
	
	/*
	* A special CompositeType for the case where we are filling in
	* SrcOverNoEa mode with an opaque color.  In that case then the
	* best loop for us to use would be a SrcNoEa loop, but what if
	* there is no such loop?  In that case then we would end up
	* backing off to a Src loop (which should still be fine) or an
	* AnyAlpha loop which would be slower than a SrcOver loop in
	* most cases.
	* The fix is to use the following chain which looks for loops
	* in the following order:
	*    SrcNoEa, Src, SrcOverNoEa, SrcOver, AnyAlpha
	*/
	public static var OpaqueSrcOverNoEa(default, null) : CompositeType;
	
	/**
	* Return a new CompositeType object which uses this object as its
	* more general "supertype" descriptor.  If no operation can be
	* found that implements the algorithm described more exactly
	* by desc, then this object will define the more general
	* compositing algorithm that can be used instead.
	*/
	@:overload public function deriveSubType(desc : String) : CompositeType;
	
	/**
	* Return a CompositeType object for the specified AlphaComposite
	* rule.
	*/
	@:overload public static function forAlphaComposite(ac : java.awt.AlphaComposite) : CompositeType;
	
	@:overload @:synchronized @:final public static function makeUniqueID(desc : String) : Int;
	
	@:overload public function getUniqueID() : Int;
	
	@:overload public function getDescriptor() : String;
	
	@:overload public function getSuperType() : CompositeType;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function isDerivedFrom(other : CompositeType) : Bool;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
