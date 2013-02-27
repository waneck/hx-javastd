package sun.reflect;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AccessorGenerator implements sun.reflect.ClassFileConstants
{
	private static var S0(default, null) : java.StdTypes.Int16;
	
	private static var S1(default, null) : java.StdTypes.Int16;
	
	private static var S2(default, null) : java.StdTypes.Int16;
	
	private static var S3(default, null) : java.StdTypes.Int16;
	
	private static var S4(default, null) : java.StdTypes.Int16;
	
	private static var S5(default, null) : java.StdTypes.Int16;
	
	private static var S6(default, null) : java.StdTypes.Int16;
	
	private var asm : sun.reflect.ClassFileAssembler;
	
	private var modifiers : Int;
	
	private var thisClass : java.StdTypes.Int16;
	
	private var superClass : java.StdTypes.Int16;
	
	private var targetClass : java.StdTypes.Int16;
	
	private var throwableClass : java.StdTypes.Int16;
	
	private var classCastClass : java.StdTypes.Int16;
	
	private var nullPointerClass : java.StdTypes.Int16;
	
	private var illegalArgumentClass : java.StdTypes.Int16;
	
	private var invocationTargetClass : java.StdTypes.Int16;
	
	private var initIdx : java.StdTypes.Int16;
	
	private var initNameAndTypeIdx : java.StdTypes.Int16;
	
	private var initStringNameAndTypeIdx : java.StdTypes.Int16;
	
	private var nullPointerCtorIdx : java.StdTypes.Int16;
	
	private var illegalArgumentCtorIdx : java.StdTypes.Int16;
	
	private var illegalArgumentStringCtorIdx : java.StdTypes.Int16;
	
	private var invocationTargetCtorIdx : java.StdTypes.Int16;
	
	private var superCtorIdx : java.StdTypes.Int16;
	
	private var objectClass : java.StdTypes.Int16;
	
	private var toStringIdx : java.StdTypes.Int16;
	
	private var codeIdx : java.StdTypes.Int16;
	
	private var exceptionsIdx : java.StdTypes.Int16;
	
	private var booleanIdx : java.StdTypes.Int16;
	
	private var booleanCtorIdx : java.StdTypes.Int16;
	
	private var booleanUnboxIdx : java.StdTypes.Int16;
	
	private var byteIdx : java.StdTypes.Int16;
	
	private var byteCtorIdx : java.StdTypes.Int16;
	
	private var byteUnboxIdx : java.StdTypes.Int16;
	
	private var characterIdx : java.StdTypes.Int16;
	
	private var characterCtorIdx : java.StdTypes.Int16;
	
	private var characterUnboxIdx : java.StdTypes.Int16;
	
	private var doubleIdx : java.StdTypes.Int16;
	
	private var doubleCtorIdx : java.StdTypes.Int16;
	
	private var doubleUnboxIdx : java.StdTypes.Int16;
	
	private var floatIdx : java.StdTypes.Int16;
	
	private var floatCtorIdx : java.StdTypes.Int16;
	
	private var floatUnboxIdx : java.StdTypes.Int16;
	
	private var integerIdx : java.StdTypes.Int16;
	
	private var integerCtorIdx : java.StdTypes.Int16;
	
	private var integerUnboxIdx : java.StdTypes.Int16;
	
	private var longIdx : java.StdTypes.Int16;
	
	private var longCtorIdx : java.StdTypes.Int16;
	
	private var longUnboxIdx : java.StdTypes.Int16;
	
	private var shortIdx : java.StdTypes.Int16;
	
	private var shortCtorIdx : java.StdTypes.Int16;
	
	private var shortUnboxIdx : java.StdTypes.Int16;
	
	private var NUM_COMMON_CPOOL_ENTRIES(default, null) : java.StdTypes.Int16;
	
	private var NUM_BOXING_CPOOL_ENTRIES(default, null) : java.StdTypes.Int16;
	
	@:overload private function emitCommonConstantPoolEntries() : Void;
	
	/** Constant pool entries required to be able to box/unbox primitive
	types. Note that we don't emit these if we don't need them. */
	@:overload private function emitBoxingContantPoolEntries() : Void;
	
	@:overload private static function add(s1 : java.StdTypes.Int16, s2 : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload private static function sub(s1 : java.StdTypes.Int16, s2 : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload private function isStatic() : Bool;
	
	/** Returns class name in "internal" form (i.e., '/' separators
	instead of '.') */
	@:overload private static function getClassName(c : Class<Dynamic>, addPrefixAndSuffixForNonPrimitiveTypes : Bool) : String;
	
	@:overload private function emitConstructor() : Void;
	
	@:overload private function emitMethod(nameIdx : java.StdTypes.Int16, numArgs : Int, code : sun.reflect.ClassFileAssembler, exceptionTable : sun.reflect.ClassFileAssembler, checkedExceptionIndices : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	@:overload private function indexForPrimitiveType(type : Class<Dynamic>) : java.StdTypes.Int16;
	
	@:overload private function ctorIndexForPrimitiveType(type : Class<Dynamic>) : java.StdTypes.Int16;
	
	/** Returns true for widening or identity conversions for primitive
	types only */
	@:overload private static function canWidenTo(type : Class<Dynamic>, otherType : Class<Dynamic>) : Bool;
	
	/** Emits the widening bytecode for the given primitive conversion
	(or none if the identity conversion). Requires that a primitive
	conversion exists; i.e., canWidenTo must have already been
	called and returned true. */
	@:overload private static function emitWideningBytecodeForPrimitiveConversion(cb : sun.reflect.ClassFileAssembler, fromType : Class<Dynamic>, toType : Class<Dynamic>) : Void;
	
	@:overload private function unboxingMethodForPrimitiveType(primType : Class<Dynamic>) : java.StdTypes.Int16;
	
	private static var primitiveTypes(default, null) : java.NativeArray<Class<Dynamic>>;
	
	/** We don't consider "Void" to be a primitive type */
	@:overload private static function isPrimitive(c : Class<Dynamic>) : Bool;
	
	@:overload private function typeSizeInStackSlots(c : Class<Dynamic>) : Int;
	
	@:overload private function illegalArgumentCodeBuffer() : sun.reflect.ClassFileAssembler;
	
	
}
