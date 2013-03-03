package sun.tools.java;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Type implements sun.tools.java.Constants
{
	/**
	* The TypeCode of this type. The value of this field is one
	* of the TC_* contant values defined in Constants.
	* @see Constants
	*/
	@:protected private var typeCode : Int;
	
	/**
	* The TypeSignature of this type. This type signature is
	* equivalent to the runtime type signatures used by the
	* interpreter.
	*/
	@:protected private var typeSig : String;
	
	/*
	* Predefined types.
	*/
	@:public @:static @:final public static var noArgs(default, null) : java.NativeArray<sun.tools.java.Type>;
	
	@:public @:static @:final public static var tError(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tPackage(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tNull(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tVoid(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tBoolean(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tByte(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tChar(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tShort(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tInt(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tFloat(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tLong(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tDouble(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tObject(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tClassDesc(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tString(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tCloneable(default, null) : sun.tools.java.Type;
	
	@:public @:static @:final public static var tSerializable(default, null) : sun.tools.java.Type;
	
	/**
	* Create a type given a typecode and a type signature.
	*/
	@:overload @:protected private function new(typeCode : Int, typeSig : String) : Void;
	
	/**
	* Return the Java type signature.
	*/
	@:overload @:public @:final public function getTypeSignature() : String;
	
	/**
	* Return the type code.
	*/
	@:overload @:public @:final public function getTypeCode() : Int;
	
	/**
	* Return the type mask. The bits in this mask correspond
	* to the TM_* constants defined in Constants. Only one bit
	* is set at a type.
	* @see Constants
	*/
	@:overload @:public @:final public function getTypeMask() : Int;
	
	/**
	* Check for a certain type.
	*/
	@:overload @:public @:final public function isType(tc : Int) : Bool;
	
	/**
	* Check to see if this is the bogus type "array of void"
	*
	* Although this highly degenerate "type" is not constructable from
	* the grammar, the Parser accepts it.  Rather than monkey with the
	* Parser, we check for the bogus type at specific points and give
	* a nice error.
	*/
	@:overload @:public public function isVoidArray() : Bool;
	
	/**
	* Check for a certain set of types.
	*/
	@:overload @:public @:final public function inMask(tm : Int) : Bool;
	
	/**
	* Create an array type.
	*/
	@:overload @:public @:static @:synchronized public static function tArray(elem : sun.tools.java.Type) : sun.tools.java.Type;
	
	/**
	* Return the element type of an array type. Only works
	* for array types.
	*/
	@:overload @:public public function getElementType() : sun.tools.java.Type;
	
	/**
	* Return the array dimension. Only works for
	* array types.
	*/
	@:overload @:public public function getArrayDimension() : Int;
	
	/**
	* Create a class type.
	* @arg className the fully qualified class name
	*/
	@:overload @:public @:static @:synchronized public static function tClass(className : sun.tools.java.Identifier) : sun.tools.java.Type;
	
	/**
	* Return the ClassName. Only works on class types.
	*/
	@:overload @:public public function getClassName() : sun.tools.java.Identifier;
	
	/**
	* Given an inner identifier, return the non-inner, mangled
	* representation used to manage signatures.
	*
	* Note: It is changed to 'public' for Jcov file generation.
	* (see Assembler.java)
	*/
	@:overload @:public @:static public static function mangleInnerType(className : sun.tools.java.Identifier) : sun.tools.java.Identifier;
	
	/**
	* Create a method type with no arguments.
	*/
	@:overload @:public @:static @:synchronized public static function tMethod(ret : sun.tools.java.Type) : sun.tools.java.Type;
	
	/**
	* Create a method type with arguments.
	*/
	@:overload @:public @:static @:synchronized public static function tMethod(returnType : sun.tools.java.Type, argTypes : java.NativeArray<sun.tools.java.Type>) : sun.tools.java.Type;
	
	/**
	* Return the return type. Only works for method types.
	*/
	@:overload @:public public function getReturnType() : sun.tools.java.Type;
	
	/**
	* Return the argument types. Only works for method types.
	*/
	@:overload @:public public function getArgumentTypes() : java.NativeArray<sun.tools.java.Type>;
	
	/**
	* Create a Type from an Java type signature.
	* @exception CompilerError invalid type signature.
	*/
	@:overload @:public @:static @:synchronized public static function tType(sig : String) : sun.tools.java.Type;
	
	/**
	* Check if the type arguments are the same.
	* @return true if both types are method types and the
	* argument types are identical.
	*/
	@:overload @:public public function equalArguments(t : sun.tools.java.Type) : Bool;
	
	/**
	* Return the amount of space this type takes up on the
	* Java operand stack. For a method this is equal to the
	* total space taken up by the arguments.
	*/
	@:overload @:public public function stackSize() : Int;
	
	/**
	* Return the type code offset. This offset can be added to
	* an opcode to get the right opcode type. Most opcodes
	* are ordered: int, long, float, double, array. For
	* example: iload, lload fload, dload, aload. So the
	* appropriate opcode is iadd + type.getTypeCodeOffset().
	*/
	@:overload @:public public function getTypeCodeOffset() : Int;
	
	/**
	* Convert a Type to a string, if abbrev is true class names are
	* not fully qualified, if ret is true the return type is included.
	*/
	@:overload @:public public function typeString(id : String, abbrev : Bool, ret : Bool) : String;
	
	/**
	* Create a type string, given an identifier.
	*/
	@:overload @:public public function typeString(id : String) : String;
	
	/**
	* Convert to a String
	*/
	@:overload @:public public function toString() : String;
	
	
}
