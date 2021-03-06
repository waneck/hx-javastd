package sun.misc;
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
extern class ClassFileTransformer
{
	/**
	* Add the class file transformer object.
	*
	* @param t Class file transformer instance
	*/
	@:overload @:public @:static public static function add(t : sun.misc.ClassFileTransformer) : Void;
	
	/**
	* Get the array of ClassFileTransformer object.
	*
	* @return ClassFileTransformer object array
	*/
	@:overload @:public @:static public static function getTransformers() : java.NativeArray<sun.misc.ClassFileTransformer>;
	
	/**
	* Transform a byte array from one to the other.
	*
	* @param b Byte array
	* @param off Offset
	* @param len Length of byte array
	* @return Transformed byte array
	*/
	@:overload @:public @:abstract public function transform(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
