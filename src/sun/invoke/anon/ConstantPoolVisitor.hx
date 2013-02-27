package sun.invoke.anon;
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
* A visitor called by {@link ConstantPoolParser#parse(ConstantPoolVisitor)}
* when a constant pool entry is parsed.
* <p>
* A visit* method is called when a constant pool entry is parsed.
* The first argument is always the constant pool index.
* The second argument is always the constant pool tag,
* even for methods like {@link #visitUTF8(int, byte, String)} which only apply to one tag.
* String arguments refer to Utf8 or NameAndType entries declared elsewhere,
* and are always accompanied by the indexes of those entries.
* <p>
* The order of the calls to the visit* methods is not necessarily related
* to the order of the entries in the constant pool.
* If one entry has a reference to another entry, the latter (lower-level)
* entry will be visited first.
* <p>
* The following table shows the relation between constant pool entry
* types and the corresponding visit* methods:
*
* <table border=1 cellpadding=5 summary="constant pool visitor methods">
* <tr><th>Tag(s)</th><th>Method</th></tr>
* <tr>
*   <td>{@link #CONSTANT_Utf8}</td>
*   <td>{@link #visitUTF8(int, byte, String)}</td>
* </tr><tr>
*   <td>{@link #CONSTANT_Integer}, {@link #CONSTANT_Float},
*       {@link #CONSTANT_Long}, {@link #CONSTANT_Double}</td>
*   <td>{@link #visitConstantValue(int, byte, Object)}</td>
* </tr><tr>
*   <td>{@link #CONSTANT_String}, {@link #CONSTANT_Class}</td>
*   <td>{@link #visitConstantString(int, byte, String, int)}</td>
* </tr><tr>
*   <td>{@link #CONSTANT_NameAndType}</td>
*   <td>{@link #visitDescriptor(int, byte, String, String, int, int)}</td>
* </tr><tr>
*   <td>{@link #CONSTANT_Fieldref},
*       {@link #CONSTANT_Methodref},
*       {@link #CONSTANT_InterfaceMethodref}</td>
*   <td>{@link #visitMemberRef(int, byte, String, String, String, int, int)}</td>
* </tr>
* </table>
*
* @see ConstantPoolPatch
* @author Remi Forax
* @author jrose
*/
extern class ConstantPoolVisitor
{
	/** Called each time an UTF8 constant pool entry is found.
	* @param index the constant pool index
	* @param tag always {@link #CONSTANT_Utf8}
	* @param utf8 string encoded in modified UTF-8 format passed as a {@code String}
	*
	* @see ConstantPoolPatch#putUTF8(int, String)
	*/
	@:overload public function visitUTF8(index : Int, tag : java.StdTypes.Int8, utf8 : String) : Void;
	
	/** Called for each constant pool entry that encodes an integer,
	*  a float, a long, or a double.
	*  Constant strings and classes are not managed by this method but
	*  by {@link #visitConstantString(int, byte, String, int)}.
	*
	* @param index the constant pool index
	* @param tag one of {@link #CONSTANT_Integer},
	*            {@link #CONSTANT_Float},
	*            {@link #CONSTANT_Long},
	*            or {@link #CONSTANT_Double}
	* @param value encoded value
	*
	* @see ConstantPoolPatch#putConstantValue(int, Object)
	*/
	@:overload public function visitConstantValue(index : Int, tag : java.StdTypes.Int8, value : Dynamic) : Void;
	
	/** Called for each constant pool entry that encodes a string or a class.
	* @param index the constant pool index
	* @param tag one of {@link #CONSTANT_String},
	*            {@link #CONSTANT_Class},
	* @param name string body or class name (using dot separator)
	* @param nameIndex the index of the Utf8 string for the name
	*
	* @see ConstantPoolPatch#putConstantValue(int, byte, Object)
	*/
	@:overload public function visitConstantString(index : Int, tag : java.StdTypes.Int8, name : String, nameIndex : Int) : Void;
	
	/** Called for each constant pool entry that encodes a name and type.
	* @param index the constant pool index
	* @param tag always {@link #CONSTANT_NameAndType}
	* @param memberName a field or method name
	* @param signature the member signature
	* @param memberNameIndex index of the Utf8 string for the member name
	* @param signatureIndex index of the Utf8 string for the signature
	*
	* @see ConstantPoolPatch#putDescriptor(int, String, String)
	*/
	@:overload public function visitDescriptor(index : Int, tag : java.StdTypes.Int8, memberName : String, signature : String, memberNameIndex : Int, signatureIndex : Int) : Void;
	
	/** Called for each constant pool entry that encodes a field or method.
	* @param index the constant pool index
	* @param tag one of {@link #CONSTANT_Fieldref},
	*            or {@link #CONSTANT_Methodref},
	*            or {@link #CONSTANT_InterfaceMethodref}
	* @param className the class name (using dot separator)
	* @param memberName name of the field or method
	* @param signature the field or method signature
	* @param classNameIndex index of the Utf8 string for the class name
	* @param descriptorIndex index of the NameAndType descriptor constant
	*
	* @see ConstantPoolPatch#putMemberRef(int, byte, String, String, String)
	*/
	@:overload public function visitMemberRef(index : Int, tag : java.StdTypes.Int8, className : String, memberName : String, signature : String, classNameIndex : Int, descriptorIndex : Int) : Void;
	
	public static var CONSTANT_None(default, null) : java.StdTypes.Int8;
	
	@:overload public static function tagName(tag : java.StdTypes.Int8) : String;
	
	
}