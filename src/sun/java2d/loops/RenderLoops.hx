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
/*
* This class stores the various loops that are used by the
* standard rendering pipelines.  The loops for a given instance
* of this class will all share the same destination type and the
* same supported paint and composite operation.
* Each instance of this class should be shared by all graphics
* objects that render onto the same type of destination with the
* same paint and composite combination to reduce the amount of
* time spent looking up loops appropriate for the current fill
* technique.
*/
extern class RenderLoops
{
	@:public @:static @:final public static var primTypeID(default, null) : Int;
	
	@:public public var drawLineLoop : sun.java2d.loops.DrawLine;
	
	@:public public var fillRectLoop : sun.java2d.loops.FillRect;
	
	@:public public var drawRectLoop : sun.java2d.loops.DrawRect;
	
	@:public public var drawPolygonsLoop : sun.java2d.loops.DrawPolygons;
	
	@:public public var drawPathLoop : sun.java2d.loops.DrawPath;
	
	@:public public var fillPathLoop : sun.java2d.loops.FillPath;
	
	@:public public var fillSpansLoop : sun.java2d.loops.FillSpans;
	
	@:public public var fillParallelogramLoop : sun.java2d.loops.FillParallelogram;
	
	@:public public var drawParallelogramLoop : sun.java2d.loops.DrawParallelogram;
	
	@:public public var drawGlyphListLoop : sun.java2d.loops.DrawGlyphList;
	
	@:public public var drawGlyphListAALoop : sun.java2d.loops.DrawGlyphListAA;
	
	@:public public var drawGlyphListLCDLoop : sun.java2d.loops.DrawGlyphListLCD;
	
	
}
