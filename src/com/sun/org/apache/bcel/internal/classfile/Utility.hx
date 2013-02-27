package com.sun.org.apache.bcel.internal.classfile;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
/**
* Utility functions that do not really belong to any class in particular.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class Utility
{
	/**
	* Convert bit field of flags into string such as `static final'.
	*
	* @param  access_flags Access flags
	* @return String representation of flags
	*/
	@:overload @:final public static function accessToString(access_flags : Int) : String;
	
	/**
	* Convert bit field of flags into string such as `static final'.
	*
	* Special case: Classes compiled with new compilers and with the
	* `ACC_SUPER' flag would be said to be "synchronized". This is
	* because SUN used the same value for the flags `ACC_SUPER' and
	* `ACC_SYNCHRONIZED'.
	*
	* @param  access_flags Access flags
	* @param  for_class access flags are for class qualifiers ?
	* @return String representation of flags
	*/
	@:overload @:final public static function accessToString(access_flags : Int, for_class : Bool) : String;
	
	/**
	* @return "class" or "interface", depending on the ACC_INTERFACE flag
	*/
	@:overload @:final public static function classOrInterface(access_flags : Int) : String;
	
	/**
	* Disassemble a byte array of JVM byte codes starting from code line
	* `index' and return the disassembled string representation. Decode only
	* `num' opcodes (including their operands), use -1 if you want to
	* decompile everything.
	*
	* @param  code byte code array
	* @param  constant_pool Array of constants
	* @param  index offset in `code' array
	* <EM>(number of opcodes, not bytes!)</EM>
	* @param  length number of opcodes to decompile, -1 for all
	* @param  verbose be verbose, e.g. print constant pool index
	* @return String representation of byte codes
	*/
	@:overload @:final public static function codeToString(code : java.NativeArray<java.StdTypes.Int8>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool, index : Int, length : Int, verbose : Bool) : String;
	
	@:overload @:final public static function codeToString(code : java.NativeArray<java.StdTypes.Int8>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool, index : Int, length : Int) : String;
	
	/**
	* Disassemble a stream of byte codes and return the
	* string representation.
	*
	* @param  bytes stream of bytes
	* @param  constant_pool Array of constants
	* @param  verbose be verbose, e.g. print constant pool index
	* @return String representation of byte code
	*/
	@:overload @:final public static function codeToString(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool, verbose : Bool) : String;
	
	@:overload @:final public static function codeToString(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* Shorten long class names, <em>java/lang/String</em> becomes
	* <em>String</em>.
	*
	* @param str The long class name
	* @return Compacted class name
	*/
	@:overload @:final public static function compactClassName(str : String) : String;
	
	/**
	* Shorten long class name <em>str</em>, i.e., chop off the <em>prefix</em>,
	* if the
	* class name starts with this string and the flag <em>chopit</em> is true.
	* Slashes <em>/</em> are converted to dots <em>.</em>.
	*
	* @param str The long class name
	* @param prefix The prefix the get rid off
	* @param chopit Flag that determines whether chopping is executed or not
	* @return Compacted class name
	*/
	@:overload @:final public static function compactClassName(str : String, prefix : String, chopit : Bool) : String;
	
	/**
	* Shorten long class names, <em>java/lang/String</em> becomes
	* <em>java.lang.String</em>,
	* e.g.. If <em>chopit</em> is <em>true</em> the prefix <em>java.lang</em>
	* is also removed.
	*
	* @param str The long class name
	* @param chopit Flag that determines whether chopping is executed or not
	* @return Compacted class name
	*/
	@:overload @:final public static function compactClassName(str : String, chopit : Bool) : String;
	
	/**
	* @return `flag' with bit `i' set to 1
	*/
	@:overload @:final public static function setBit(flag : Int, i : Int) : Int;
	
	/**
	* @return `flag' with bit `i' set to 0
	*/
	@:overload @:final public static function clearBit(flag : Int, i : Int) : Int;
	
	/**
	* @return true, if bit `i' in `flag' is set
	*/
	@:overload @:final public static function isSet(flag : Int, i : Int) : Bool;
	
	/**
	* Converts string containing the method return and argument types
	* to a byte code method signature.
	*
	* @param  ret Return type of method
	* @param  argv Types of method arguments
	* @return Byte code representation of method signature
	*/
	@:overload @:final public static function methodTypeToSignature(ret : String, argv : java.NativeArray<String>) : String;
	
	/**
	* @param  signature    Method signature
	* @return Array of argument types
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function methodSignatureArgumentTypes(signature : String) : java.NativeArray<String>;
	
	/**
	* @param  signature    Method signature
	* @param chopit Shorten class names ?
	* @return Array of argument types
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function methodSignatureArgumentTypes(signature : String, chopit : Bool) : java.NativeArray<String>;
	
	/**
	* @param  signature    Method signature
	* @return return type of method
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function methodSignatureReturnType(signature : String) : String;
	
	/**
	* @param  signature    Method signature
	* @param chopit Shorten class names ?
	* @return return type of method
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function methodSignatureReturnType(signature : String, chopit : Bool) : String;
	
	/**
	* Converts method signature to string with all class names compacted.
	*
	* @param signature to convert
	* @param name of method
	* @param access flags of method
	* @return Human readable signature
	*/
	@:overload @:final public static function methodSignatureToString(signature : String, name : String, access : String) : String;
	
	@:overload @:final public static function methodSignatureToString(signature : String, name : String, access : String, chopit : Bool) : String;
	
	/**
	* A return type signature represents the return value from a method.
	* It is a series of bytes in the following grammar:
	*
	* <return_signature> ::= <field_type> | V
	*
	* The character V indicates that the method returns no value. Otherwise, the
	* signature indicates the type of the return value.
	* An argument signature represents an argument passed to a method:
	*
	* <argument_signature> ::= <field_type>
	*
	* A method signature represents the arguments that the method expects, and
	* the value that it returns.
	* <method_signature> ::= (<arguments_signature>) <return_signature>
	* <arguments_signature>::= <argument_signature>*
	*
	* This method converts such a string into a Java type declaration like
	* `void _main(String[])' and throws a `ClassFormatException' when the parsed
	* type is invalid.
	*
	* @param  signature    Method signature
	* @param  name         Method name
	* @param  access       Method access rights
	* @return Java type declaration
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function methodSignatureToString(signature : String, name : String, access : String, chopit : Bool, vars : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable) : String;
	
	/**
	* Replace all occurences of <em>old</em> in <em>str</em> with <em>new</em>.
	*
	* @param str String to permute
	* @param old String to be replaced
	* @param new Replacement string
	* @return new String object
	*/
	@:overload @:final public static function replace(str : String, old : String, new_ : String) : String;
	
	/**
	* Converts signature to string with all class names compacted.
	*
	* @param signature to convert
	* @return Human readable signature
	*/
	@:overload @:final public static function signatureToString(signature : String) : String;
	
	/**
	* The field signature represents the value of an argument to a function or
	* the value of a variable. It is a series of bytes generated by the
	* following grammar:
	*
	* <PRE>
	* <field_signature> ::= <field_type>
	* <field_type>      ::= <base_type>|<object_type>|<array_type>
	* <base_type>       ::= B|C|D|F|I|J|S|Z
	* <object_type>     ::= L<fullclassname>;
	* <array_type>      ::= [<field_type>
	*
	* The meaning of the base types is as follows:
	* B byte signed byte
	* C char character
	* D double double precision IEEE float
	* F float single precision IEEE float
	* I int integer
	* J long long integer
	* L<fullclassname>; ... an object of the given class
	* S short signed short
	* Z boolean true or false
	* [<field sig> ... array
	* </PRE>
	*
	* This method converts this string into a Java type declaration such as
	* `String[]' and throws a `ClassFormatException' when the parsed type is
	* invalid.
	*
	* @param  signature  Class signature
	* @param chopit Flag that determines whether chopping is executed or not
	* @return Java type declaration
	* @throws ClassFormatException
	*/
	@:overload @:final public static function signatureToString(signature : String, chopit : Bool) : String;
	
	/** Parse Java type such as "char", or "java.lang.String[]" and return the
	* signature in byte code format, e.g. "C" or "[Ljava/lang/String;" respectively.
	*
	* @param  type Java type
	* @return byte code signature
	*/
	@:overload public static function getSignature(type : String) : String;
	
	/**
	* Return type of method signature as a byte value as defined in <em>Constants</em>
	*
	* @param  signature in format described above
	* @return type of method signature
	* @see    Constants
	*/
	@:overload @:final public static function typeOfMethodSignature(signature : String) : java.StdTypes.Int8;
	
	/**
	* Return type of signature as a byte value as defined in <em>Constants</em>
	*
	* @param  signature in format described above
	* @return type of signature
	* @see    Constants
	*/
	@:overload @:final public static function typeOfSignature(signature : String) : java.StdTypes.Int8;
	
	/** Map opcode names to opcode numbers. E.g., return Constants.ALOAD for "aload"
	*/
	@:overload public static function searchOpcode(name : String) : java.StdTypes.Int16;
	
	/** Convert bytes into hexidecimal string
	*
	* @return bytes as hexidecimal string, e.g. 00 FA 12 ...
	*/
	@:overload @:final public static function toHexString(bytes : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Return a string for an integer justified left or right and filled up with
	* `fill' characters if necessary.
	*
	* @param i integer to format
	* @param length length of desired string
	* @param left_justify format left or right
	* @param fill fill character
	* @return formatted int
	*/
	@:overload @:final public static function format(i : Int, length : Int, left_justify : Bool, fill : java.StdTypes.Char16) : String;
	
	/**
	* Fillup char with up to length characters with char `fill' and justify it left or right.
	*
	* @param str string to format
	* @param length length of desired string
	* @param left_justify format left or right
	* @param fill fill character
	* @return formatted string
	*/
	@:overload @:final public static function fillup(str : String, length : Int, left_justify : Bool, fill : java.StdTypes.Char16) : String;
	
	@:overload @:final public static function printArray(out : java.io.PrintStream, obj : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:final public static function printArray(out : java.io.PrintWriter, obj : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:final public static function printArray(obj : java.NativeArray<Dynamic>) : String;
	
	@:overload @:final public static function printArray(obj : java.NativeArray<Dynamic>, braces : Bool) : String;
	
	@:overload @:final public static function printArray(obj : java.NativeArray<Dynamic>, braces : Bool, quote : Bool) : String;
	
	/** @return true, if character is one of (a, ... z, A, ... Z, 0, ... 9, _)
	*/
	@:overload public static function isJavaIdentifierPart(ch : java.StdTypes.Char16) : Bool;
	
	/** Encode byte array it into Java identifier string, i.e., a string
	* that only contains the following characters: (a, ... z, A, ... Z,
	* 0, ... 9, _, $).  The encoding algorithm itself is not too
	* clever: if the current byte's ASCII value already is a valid Java
	* identifier part, leave it as it is. Otherwise it writes the
	* escape character($) followed by <p><ul><li> the ASCII value as a
	* hexadecimal string, if the value is not in the range
	* 200..247</li> <li>a Java identifier char not used in a lowercase
	* hexadecimal string, if the value is in the range
	* 200..247</li><ul></p>
	*
	* <p>This operation inflates the original byte array by roughly 40-50%</p>
	*
	* @param bytes the byte array to convert
	* @param compress use gzip to minimize string
	*/
	@:overload public static function encode(bytes : java.NativeArray<java.StdTypes.Int8>, compress : Bool) : String;
	
	/** Decode a string back to a byte array.
	*
	* @param bytes the byte array to convert
	* @param uncompress use gzip to uncompress the stream of bytes
	*/
	@:overload public static function decode(s : String, uncompress : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Escape all occurences of newline chars '\n', quotes \", etc.
	*/
	@:overload @:final public static function convertString(label : String) : String;
	
	
}
/** Decode characters into bytes.
* Used by <a href="Utility.html#decode(java.lang.String, boolean)">decode()</a>
*/
@:native('com$sun$org$apache$bcel$internal$classfile$Utility$JavaReader') @:internal extern class Utility_JavaReader extends java.io.FilterReader
{
	@:overload public function new(_in : java.io.Reader) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	
}
/** Encode bytes into valid java identifier characters.
* Used by <a href="Utility.html#encode(byte[], boolean)">encode()</a>
*/
@:native('com$sun$org$apache$bcel$internal$classfile$Utility$JavaWriter') @:internal extern class Utility_JavaWriter extends java.io.FilterWriter
{
	@:overload public function new(out : java.io.Writer) : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload override public function write(str : String, off : Int, len : Int) : Void;
	
	
}
