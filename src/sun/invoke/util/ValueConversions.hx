package sun.invoke.util;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ValueConversions
{
	@:overload public static function unboxCast(type : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	@:overload public static function unboxRaw(type : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	@:overload public static function unbox(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function unboxCast(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function unboxRaw(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function primitiveConversion(wrap : sun.invoke.util.Wrapper, x : Dynamic, _cast : Bool) : java.lang.Number;
	
	@:overload public static function box(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function boxRaw(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function box(type : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	@:overload public static function boxRaw(type : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	/**
	* Because we normalize primitive types to reduce the number of signatures,
	* primitives are sometimes manipulated under an "erased" type,
	* either int (for types other than long/double) or long (for all types).
	* When the erased primitive value is then boxed into an Integer or Long,
	* the final boxed primitive is sometimes required.  This transformation
	* is called a "rebox".  It takes an Integer or Long and produces some
	* other boxed value, typed (inexactly) as an Object
	*/
	@:overload public static function rebox(wrap : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	@:overload public static function rebox(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function zeroConstantFunction(wrap : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	/** Return a method that casts its sole argument (an Object) to the given type
	*  and returns it as the given type (if exact is true), or as plain Object (if erase is true).
	*/
	@:native('cast') @:overload public static function _cast(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function identity() : java.lang.invoke.MethodHandle;
	
	@:overload public static function identity(type : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function identity(wrap : sun.invoke.util.Wrapper) : java.lang.invoke.MethodHandle;
	
	@:overload public static function convertFromFloat(fixType : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function convertFromDouble(fixType : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function convertToFloat(fixType : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function convertToDouble(fixType : Class<Dynamic>) : java.lang.invoke.MethodHandle;
	
	@:overload public static function convertArrayElements(arrayType : Class<Dynamic>, array : Dynamic) : Dynamic;
	
	/** Return a method handle that takes the indicated number of Object
	*  arguments and returns an Object array of them, as if for varargs.
	*/
	@:overload public static function varargsArray(nargs : Int) : java.lang.invoke.MethodHandle;
	
	/** Return a method handle that takes the indicated number of
	*  typed arguments and returns an array of them.
	*  The type argument is the array type.
	*/
	@:overload public static function varargsArray(arrayType : Class<Dynamic>, nargs : Int) : java.lang.invoke.MethodHandle;
	
	/** Return a method handle that takes the indicated number of Object
	*  arguments and returns a List.
	*/
	@:overload public static function varargsList(nargs : Int) : java.lang.invoke.MethodHandle;
	
	
}
@:native('sun$invoke$util$ValueConversions$LazyStatics') @:internal extern class ValueConversions_LazyStatics
{
	
}
