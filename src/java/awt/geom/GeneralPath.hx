package java.awt.geom;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GeneralPath extends java.awt.geom.Path2D.Path2D_Float
{
	/**
	* Constructs a new empty single precision {@code GeneralPath} object
	* with a default winding rule of {@link #WIND_NON_ZERO}.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>GeneralPath</code> object with the specified
	* winding rule to control operations that require the interior of the
	* path to be defined.
	*
	* @param rule the winding rule
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(rule : Int) : Void;
	
	/**
	* Constructs a new <code>GeneralPath</code> object with the specified
	* winding rule and the specified initial capacity to store path
	* coordinates.
	* This number is an initial guess as to how many path segments
	* will be added to the path, but the storage is expanded as
	* needed to store whatever path segments are added.
	*
	* @param rule the winding rule
	* @param initialCapacity the estimate for the number of path segments
	*                        in the path
	* @see #WIND_EVEN_ODD
	* @see #WIND_NON_ZERO
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(rule : Int, initialCapacity : Int) : Void;
	
	/**
	* Constructs a new <code>GeneralPath</code> object from an arbitrary
	* {@link Shape} object.
	* All of the initial geometry and the winding rule for this path are
	* taken from the specified <code>Shape</code> object.
	*
	* @param s the specified <code>Shape</code> object
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(s : java.awt.Shape) : Void;
	
	
}
