package javax.swing.text.html;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Implements a FrameSetView, intended to support the HTML
* &lt;FRAMESET&gt; tag.  Supports the ROWS and COLS attributes.
*
* @author  Sunita Mani
*
*          Credit also to the hotjava browser engineers that
*          worked on making the allocation of space algorithms
*          conform to the HTML 4.0 standard and also be netscape
*          compatible.
*
*/
@:internal extern class FrameSetView extends javax.swing.text.BoxView
{
	/**
	* Constructs a FrameSetView for the given element.
	*
	* @param elem the element that this view is responsible for
	*/
	@:overload public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* Perform layout for the major axis of the box (i.e. the
	* axis that it represents).  The results of the layout should
	* be placed in the given arrays which represent the allocations
	* to the children along the major axis.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	@:overload private function getChildRequests(targetSpan : Int, axis : Int) : java.NativeArray<javax.swing.SizeRequirements>;
	
	
}
