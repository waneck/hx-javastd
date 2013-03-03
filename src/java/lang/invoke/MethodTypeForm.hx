package java.lang.invoke;
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
/**
* Shared information for a group of method types, which differ
* only by reference types, and therefore share a common erasure
* and wrapping.
* <p>
* For an empirical discussion of the structure of method types,
* see <a href="http://groups.google.com/group/jvm-languages/browse_thread/thread/ac9308ae74da9b7e/">
* the thread "Avoiding Boxing" on jvm-languages</a>.
* There are approximately 2000 distinct erased method types in the JDK.
* There are a little over 10 times that number of unerased types.
* No more than half of these are likely to be loaded at once.
* @author John Rose
*/
@:internal extern class MethodTypeForm
{
	@:overload @:public public function erasedType() : java.lang.invoke.MethodType;
	
	@:overload @:protected private function new(erasedType : java.lang.invoke.MethodType) : Void;
	
	/** Turn all primitive types to corresponding wrapper types.
	*/
	@:overload @:public public function primsAsBoxes() : java.lang.invoke.MethodType;
	
	/** Turn all primitive argument types to corresponding wrapper types.
	*  Subword and void return types are promoted to int.
	*/
	@:overload @:public public function primArgsAsBoxes() : java.lang.invoke.MethodType;
	
	/** Turn all primitive types to either int or long.
	*  Floating point return types are not changed, because
	*  they may require special calling sequences.
	*  A void return value is turned to int.
	*/
	@:overload @:public public function primsAsInts() : java.lang.invoke.MethodType;
	
	/** Turn all primitive types to either int or long.
	*  Floating point return types are not changed, because
	*  they may require special calling sequences.
	*  A void return value is turned to int.
	*/
	@:overload @:public public function primsAsLongs() : java.lang.invoke.MethodType;
	
	/** Stably sort parameters into 3 buckets: ref, int, long. */
	@:overload @:public public function primsAtEnd() : java.lang.invoke.MethodType;
	
	/** Compute a new ordering of parameters so that all references
	*  are before all ints or longs, and all ints are before all longs.
	*  For this ordering, doubles count as longs, and all other primitive
	*  values count as ints.
	*  As a special case, if the parameters are already in the specified
	*  order, this method returns a null reference, rather than an array
	*  specifying a null permutation.
	*  <p>
	*  For example, the type {@code (int,boolean,int,Object,String)void}
	*  produces the order {@code {3,4,0,1,2}}, the type
	*  {@code (long,int,String)void} produces {@code {2,1,2}}, and
	*  the type {@code (Object,int)Object} produces {@code null}.
	*/
	@:overload @:public @:static public static function primsAtEndOrder(mt : java.lang.invoke.MethodType) : java.NativeArray<Int>;
	
	/** Put the existing parameters of mt into a new order, given by newParamOrder.
	*  The third argument is logically appended to mt.parameterArray,
	*  so that elements of newParamOrder can index either pre-existing or
	*  new parameter types.
	*/
	@:overload @:public @:static public static function reorderParameters(mt : java.lang.invoke.MethodType, newParamOrder : java.NativeArray<Int>, moreParams : java.NativeArray<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	@:overload @:public public function parameterCount() : Int;
	
	@:overload @:public public function parameterSlotCount() : Int;
	
	@:overload @:public public function returnCount() : Int;
	
	@:overload @:public public function returnSlotCount() : Int;
	
	@:overload @:public public function primitiveParameterCount() : Int;
	
	@:overload @:public public function longPrimitiveParameterCount() : Int;
	
	@:overload @:public public function primitiveReturnCount() : Int;
	
	@:overload @:public public function longPrimitiveReturnCount() : Int;
	
	@:overload @:public public function hasPrimitives() : Bool;
	
	@:overload @:public public function hasLongPrimitives() : Bool;
	
	@:overload @:public public function parameterToArgSlot(i : Int) : Int;
	
	@:overload @:public public function argSlotToParameter(argSlot : Int) : Int;
	
	/** Codes for {@link #canonicalize(java.lang.Class, int)}.
	* ERASE means change every reference to {@code Object}.
	* WRAP means convert primitives (including {@code void} to their
	* corresponding wrapper types.  UNWRAP means the reverse of WRAP.
	* INTS means convert all non-void primitive types to int or long,
	* according to size.  LONGS means convert all non-void primitives
	* to long, regardless of size.  RAW_RETURN means convert a type
	* (assumed to be a return type) to int if it is smaller than an int,
	* or if it is void.
	*/
	@:public @:static @:final public static var NO_CHANGE(default, null) : Int;
	
	/** Canonicalize the types in the given method type.
	* If any types change, intern the new type, and return it.
	* Otherwise return null.
	*/
	@:overload @:public @:static public static function canonicalize(mt : java.lang.invoke.MethodType, howRet : Int, howArgs : Int) : java.lang.invoke.MethodType;
	
	@:overload @:public public function toString() : String;
	
	
}
