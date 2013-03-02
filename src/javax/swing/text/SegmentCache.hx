package javax.swing.text;
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
@:internal extern class SegmentCache
{
	/**
	* Returns the shared SegmentCache.
	*/
	@:overload public static function getSharedInstance() : javax.swing.text.SegmentCache;
	
	/**
	* A convenience method to get a Segment from the shared
	* <code>SegmentCache</code>.
	*/
	@:overload public static function getSharedSegment() : javax.swing.text.Segment;
	
	/**
	* A convenience method to release a Segment to the shared
	* <code>SegmentCache</code>.
	*/
	@:overload public static function releaseSharedSegment(segment : javax.swing.text.Segment) : Void;
	
	/**
	* Creates and returns a SegmentCache.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns a <code>Segment</code>. When done, the <code>Segment</code>
	* should be recycled by invoking <code>releaseSegment</code>.
	*/
	@:overload public function getSegment() : javax.swing.text.Segment;
	
	/**
	* Releases a Segment. You should not use a Segment after you release it,
	* and you should NEVER release the same Segment more than once, eg:
	* <pre>
	*   segmentCache.releaseSegment(segment);
	*   segmentCache.releaseSegment(segment);
	* </pre>
	* Will likely result in very bad things happening!
	*/
	@:overload public function releaseSegment(segment : javax.swing.text.Segment) : Void;
	
	
}
/**
* CachedSegment is used as a tagging interface to determine if
* a Segment can successfully be shared.
*/
@:native('javax$swing$text$SegmentCache$CachedSegment') @:internal extern class SegmentCache_CachedSegment extends javax.swing.text.Segment
{
	
}
