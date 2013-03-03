package com.sun.media.sound;
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
/**
* A standard transformer used in connection blocks.
* It expects input values to be between 0 and 1.
*
* The result of the transform is
*   between 0 and 1 if polarity = unipolar and
*   between -1 and 1 if polarity = bipolar.
*
* These constraints only applies to Concave, Convex and Switch transforms.
*
* @author Karl Helgason
*/
extern class ModelStandardTransform implements com.sun.media.sound.ModelTransform
{
	@:public @:static @:final public static var DIRECTION_MIN2MAX(default, null) : Bool;
	
	@:public @:static @:final public static var DIRECTION_MAX2MIN(default, null) : Bool;
	
	@:public @:static @:final public static var POLARITY_UNIPOLAR(default, null) : Bool;
	
	@:public @:static @:final public static var POLARITY_BIPOLAR(default, null) : Bool;
	
	@:public @:static @:final public static var TRANSFORM_LINEAR(default, null) : Int;
	
	@:public @:static @:final public static var TRANSFORM_CONCAVE(default, null) : Int;
	
	@:public @:static @:final public static var TRANSFORM_CONVEX(default, null) : Int;
	
	@:public @:static @:final public static var TRANSFORM_SWITCH(default, null) : Int;
	
	@:public @:static @:final public static var TRANSFORM_ABSOLUTE(default, null) : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(direction : Bool) : Void;
	
	@:overload @:public public function new(direction : Bool, polarity : Bool) : Void;
	
	@:overload @:public public function new(direction : Bool, polarity : Bool, transform : Int) : Void;
	
	@:overload @:public public function transform(value : Float) : Float;
	
	@:overload @:public public function getDirection() : Bool;
	
	@:overload @:public public function setDirection(direction : Bool) : Void;
	
	@:overload @:public public function getPolarity() : Bool;
	
	@:overload @:public public function setPolarity(polarity : Bool) : Void;
	
	@:overload @:public public function getTransform() : Int;
	
	@:overload @:public public function setTransform(transform : Int) : Void;
	
	
}
