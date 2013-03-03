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
	@:protected @:static @:final private static var S0(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S1(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S2(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S3(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S4(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S5(default, null) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var S6(default, null) : java.StdTypes.Int16;
	
	@:protected private var asm : sun.reflect.ClassFileAssembler;
	
	@:protected private var modifiers : Int;
	
	@:protected private var thisClass : java.StdTypes.Int16;
	
	@:protected private var superClass : java.StdTypes.Int16;
	
	@:protected private var targetClass : java.StdTypes.Int16;
	
	@:protected private var throwableClass : java.StdTypes.Int16;
	
	@:protected private var classCastClass : java.StdTypes.Int16;
	
	@:protected private var nullPointerClass : java.StdTypes.Int16;
	
	@:protected private var illegalArgumentClass : java.StdTypes.Int16;
	
	@:protected private var invocationTargetClass : java.StdTypes.Int16;
	
	@:protected private var initIdx : java.StdTypes.Int16;
	
	@:protected private var initNameAndTypeIdx : java.StdTypes.Int16;
	
	@:protected private var initStringNameAndTypeIdx : java.StdTypes.Int16;
	
	@:protected private var nullPointerCtorIdx : java.StdTypes.Int16;
	
	@:protected private var illegalArgumentCtorIdx : java.StdTypes.Int16;
	
	@:protected private var illegalArgumentStringCtorIdx : java.StdTypes.Int16;
	
	@:protected private var invocationTargetCtorIdx : java.StdTypes.Int16;
	
	@:protected private var superCtorIdx : java.StdTypes.Int16;
	
	@:protected private var objectClass : java.StdTypes.Int16;
	
	@:protected private var toStringIdx : java.StdTypes.Int16;
	
	@:protected private var codeIdx : java.StdTypes.Int16;
	
	@:protected private var exceptionsIdx : java.StdTypes.Int16;
	
	@:protected private var booleanIdx : java.StdTypes.Int16;
	
	@:protected private var booleanCtorIdx : java.StdTypes.Int16;
	
	@:protected private var booleanUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var byteIdx : java.StdTypes.Int16;
	
	@:protected private var byteCtorIdx : java.StdTypes.Int16;
	
	@:protected private var byteUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var characterIdx : java.StdTypes.Int16;
	
	@:protected private var characterCtorIdx : java.StdTypes.Int16;
	
	@:protected private var characterUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var doubleIdx : java.StdTypes.Int16;
	
	@:protected private var doubleCtorIdx : java.StdTypes.Int16;
	
	@:protected private var doubleUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var floatIdx : java.StdTypes.Int16;
	
	@:protected private var floatCtorIdx : java.StdTypes.Int16;
	
	@:protected private var floatUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var integerIdx : java.StdTypes.Int16;
	
	@:protected private var integerCtorIdx : java.StdTypes.Int16;
	
	@:protected private var integerUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var longIdx : java.StdTypes.Int16;
	
	@:protected private var longCtorIdx : java.StdTypes.Int16;
	
	@:protected private var longUnboxIdx : java.StdTypes.Int16;
	
	@:protected private var shortIdx : java.StdTypes.Int16;
	
	@:protected private var shortCtorIdx : java.StdTypes.Int16;
	
	@:protected private var shortUnboxIdx : java.StdTypes.Int16;
	
	@:protected @:final private var NUM_COMMON_CPOOL_ENTRIES(default, null) : java.StdTypes.Int16;
	
	@:protected @:final private var NUM_BOXING_CPOOL_ENTRIES(default, null) : java.StdTypes.Int16;
	
	@:overload @:protected private function emitCommonConstantPoolEntries() : Void;
	
	/** Constant pool entries required to be able to box/unbox primitive
	types. Note that we don't emit these if we don't need them. */
	@:overload @:protected private function emitBoxingContantPoolEntries() : Void;
	
	@:overload @:protected @:static private static function add(s1 : java.StdTypes.Int16, s2 : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload @:protected @:static private static function sub(s1 : java.StdTypes.Int16, s2 : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload @:protected private function isStatic() : Bool;
	
	/** Returns class name in "internal" form (i.e., '/' separators
	instead of '.') */
	@:overload @:protected @:static private static function getClassName(c : Class<Dynamic>, addPrefixAndSuffixForNonPrimitiveTypes : Bool) : String;
	
	@:overload @:protected private function emitConstructor() : Void;
	
	@:overload @:protected private function emitMethod(nameIdx : java.StdTypes.Int16, numArgs : Int, code : sun.reflect.ClassFileAssembler, exceptionTable : sun.reflect.ClassFileAssembler, checkedExceptionIndices : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	@:overload @:protected private function indexForPrimitiveType(type : Class<Dynamic>) : java.StdTypes.Int16;
	
	@:overload @:protected private function ctorIndexForPrimitiveType(type : Class<Dynamic>) : java.StdTypes.Int16;
	
	/** Returns true for widening or identity conversions for primitive
	types only */
	@:overload @:protected @:static private static function canWidenTo(type : Class<Dynamic>, otherType : Class<Dynamic>) : Bool;
	
	/** Emits the widening bytecode for the given primitive conversion
	(or none if the identity conversion). Requires that a primitive
	conversion exists; i.e., canWidenTo must have already been
	called and returned true. */
	@:overload @:protected @:static private static function emitWideningBytecodeForPrimitiveConversion(cb : sun.reflect.ClassFileAssembler, fromType : Class<Dynamic>, toType : Class<Dynamic>) : Void;
	
	@:overload @:protected private function unboxingMethodForPrimitiveType(primType : Class<Dynamic>) : java.StdTypes.Int16;
	
	@:protected @:static @:final private static var primitiveTypes(default, null) : java.NativeArray<Class<Dynamic>>;
	
	/** We don't consider "Void" to be a primitive type */
	@:overload @:protected @:static private static function isPrimitive(c : Class<Dynamic>) : Bool;
	
	@:overload @:protected private function typeSizeInStackSlots(c : Class<Dynamic>) : Int;
	
	@:overload @:protected private function illegalArgumentCodeBuffer() : sun.reflect.ClassFileAssembler;
	
	
}
