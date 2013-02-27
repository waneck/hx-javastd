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
extern class VerifyType
{
	/**
	* True if a value can be stacked as the source type and unstacked as the
	* destination type, without violating the JVM's type consistency.
	*
	* @param call the type of a stacked value
	* @param recv the type by which we'd like to treat it
	* @return whether the retyping can be done without motion or reformatting
	*/
	@:overload public static function isNullConversion(src : Class<Dynamic>, dst : Class<Dynamic>) : Bool;
	
	/**
	* Specialization of isNullConversion to reference types.

	* @param call the type of a stacked value
	* @param recv the reference type by which we'd like to treat it
	* @return whether the retyping can be done without a cast
	*/
	@:overload public static function isNullReferenceConversion(src : Class<Dynamic>, dst : Class<Dynamic>) : Bool;
	
	/**
	* Is the given type java.lang.Null or an equivalent null-only type?
	*/
	@:overload public static function isNullType(type : Class<Dynamic>) : Bool;
	
	/**
	* True if a method handle can receive a call under a slightly different
	* method type, without moving or reformatting any stack elements.
	*
	* @param call the type of call being made
	* @param recv the type of the method handle receiving the call
	* @return whether the retyping can be done without motion or reformatting
	*/
	@:overload public static function isNullConversion(call : java.lang.invoke.MethodType, recv : java.lang.invoke.MethodType) : Bool;
	
	/**
	* Determine if the JVM verifier allows a value of type call to be
	* passed to a formal parameter (or return variable) of type recv.
	* Returns 1 if the verifier allows the types to match without conversion.
	* Returns -1 if the types can be made to match by a JVM-supported adapter.
	* Cases supported are:
	* <ul><li>checkcast
	* </li><li>conversion between any two integral types (but not floats)
	* </li><li>unboxing from a wrapper to its corresponding primitive type
	* </li><li>conversion in either direction between float and double
	* </li></ul>
	* (Autoboxing is not supported here; it must be done via Java code.)
	* Returns 0 otherwise.
	*/
	@:overload public static function canPassUnchecked(src : Class<Dynamic>, dst : Class<Dynamic>) : Int;
	
	@:overload public static function canPassRaw(src : Class<Dynamic>, dst : Class<Dynamic>) : Int;
	
	@:overload public static function isSpreadArgType(spreadArg : Class<Dynamic>) : Bool;
	
	@:overload public static function spreadArgElementType(spreadArg : Class<Dynamic>, i : Int) : Class<Dynamic>;
	
	
}
