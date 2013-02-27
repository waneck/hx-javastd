package sun.java2d;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class Spans
{
	@:overload public function new() : Void;
	
	/**
	* Add a span covering the half open interval
	* including <code>start</code> up to
	* but not including <code>end</code>.
	*/
	@:overload public function add(start : Single, end : Single) : Void;
	
	/**
	* Add a span which covers the entire range.
	* This call is logically equivalent to
	* <code>add(Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY)</code>
	* The result of making this call is that
	* all future <code>add</code> calls are ignored
	* and the <code>intersects</code> method always
	* returns true.
	*/
	@:overload public function addInfinite() : Void;
	
	/**
	* Returns true if the span defined by the half-open
	* interval from <code>start</code> up to,
	* but not including, <code>end</code> intersects
	* any of the spans defined by this instance.
	*/
	@:overload public function intersects(start : Single, end : Single) : Bool;
	
	
}
/**
* Holds a single half-open interval.
*/
@:native('sun$java2d$Spans$Span') @:internal extern class Spans_Span implements java.lang.Comparable<Dynamic>
{
	/**
	* Rank spans according to their starting
	* position. The end position is ignored
	* in this ranking.
	*/
	@:overload public function compareTo(o : Dynamic) : Int;
	
	@:overload public function toString() : String;
	
	
}
/**
* This class ranks a pair of <code>Span</code>
* instances. If the instances intersect they
* are deemed equal otherwise they are ranked
* by their relative position. Use
* <code>SpanIntersection.instance</code> to
* get the single instance of this class.
*/
@:native('sun$java2d$Spans$SpanIntersection') @:internal extern class Spans_SpanIntersection implements java.util.Comparator<Dynamic>
{
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
