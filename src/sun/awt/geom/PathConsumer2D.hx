package sun.awt.geom;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface PathConsumer2D
{
	/**
	* @see java.awt.geom.Path2D.Float.moveTo
	*/
	@:overload public function moveTo(x : Single, y : Single) : Void;
	
	/**
	* @see java.awt.geom.Path2D.Float.lineTo
	*/
	@:overload public function lineTo(x : Single, y : Single) : Void;
	
	/**
	* @see java.awt.geom.Path2D.Float.quadTo
	*/
	@:overload public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	/**
	* @see java.awt.geom.Path2D.Float.curveTo
	*/
	@:overload public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	/**
	* @see java.awt.geom.Path2D.Float.closePath
	*/
	@:overload public function closePath() : Void;
	
	/**
	* Called after the last segment of the last subpath when the
	* iteration of the path segments is completely done.  This
	* method serves to trigger the end of path processing in the
	* consumer that would normally be triggered when a
	* {@link java.awt.geom.PathIterator PathIterator}
	* returns {@code true} from its {@code done} method.
	*/
	@:overload public function pathDone() : Void;
	
	/**
	* If a given PathConsumer performs all or most of its work
	* natively then it can return a (non-zero) pointer to a
	* native function vector that defines C functions for all
	* of the above methods.
	* The specific pointer it returns is a pointer to a
	* PathConsumerVec structure as defined in the include file
	* src/share/native/sun/java2d/pipe/PathConsumer2D.h
	* @return a native pointer to a PathConsumerVec structure.
	*/
	@:overload public function getNativeConsumer() : haxe.Int64;
	
	
}
