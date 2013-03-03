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
/** A class and its patched constant pool.
*
*  This class allow to modify (patch) a constant pool
*  by changing the value of its entry.
*  Entry are referenced using index that can be get
*  by parsing the constant pool using
*  {@link ConstantPoolParser#parse(ConstantPoolVisitor)}.
*
* @see ConstantPoolVisitor
* @see ConstantPoolParser#createPatch()
*/
extern class ConstantPoolPatch
{
	/** Create a {@link ConstantPoolParser} and
	*  a {@link ConstantPoolPatch} in one step.
	*  Equivalent to {@code new ConstantPoolParser(classFile).createPatch()}.
	*
	* @param classFile an array of bytes containing a class.
	* @see #ConstantPoolParser(Class)
	*/
	@:overload @:public public function new(classFile : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** Create a {@link ConstantPoolParser} and
	*  a {@link ConstantPoolPatch} in one step.
	*  Equivalent to {@code new ConstantPoolParser(templateClass).createPatch()}.
	*
	* @param templateClass the class to parse.
	* @see #ConstantPoolParser(Class)
	*/
	@:overload @:public public function new(templateClass : Class<Dynamic>) : Void;
	
	/** Creates a patch from an existing patch.
	*  All changes are copied from that patch.
	* @param patch a patch
	*
	* @see ConstantPoolParser#createPatch()
	*/
	@:overload @:public public function new(patch : sun.invoke.anon.ConstantPoolPatch) : Void;
	
	/** Which parser built this patch? */
	@:overload @:public public function getParser() : sun.invoke.anon.ConstantPoolParser;
	
	/** Report the tag at the given index in the constant pool. */
	@:overload @:public public function getTag(index : Int) : java.StdTypes.Int8;
	
	/** Report the current patch at the given index of the constant pool.
	*  Null means no patch will be made.
	*  To observe the unpatched entry at the given index, use
	*  {@link #getParser()}{@code .}@link ConstantPoolParser#parse(ConstantPoolVisitor)}
	*/
	@:overload @:public public function getPatch(index : Int) : Dynamic;
	
	/** Clear all patches. */
	@:overload @:public public function clear() : Void;
	
	/** Clear one patch. */
	@:overload @:public public function clear(index : Int) : Void;
	
	/** Produce the patches as an array. */
	@:overload @:public public function getPatches() : java.NativeArray<Dynamic>;
	
	/** Produce the original constant pool as an array. */
	@:overload @:public public function getOriginalCP() : java.NativeArray<Dynamic>;
	
	/** Walk the constant pool, applying patches using the given map.
	*
	* @param utf8Map Utf8 strings to modify, if encountered
	* @param classMap Classes (or their names) to modify, if encountered
	* @param valueMap Constant values to modify, if encountered
	* @param deleteUsedEntries if true, delete map entries that are used
	*/
	@:overload @:public public function putPatches(utf8Map : java.util.Map<String, String>, classMap : java.util.Map<String, Dynamic>, valueMap : java.util.Map<Dynamic, Dynamic>, deleteUsedEntries : Bool) : Void;
	
	/** Set the entry of the constant pool indexed by index to
	*  a new string.
	*
	* @param index an index to a constant pool entry containing a
	*        {@link ConstantPoolVisitor#CONSTANT_Utf8} value.
	* @param utf8 a string
	*
	* @see ConstantPoolVisitor#visitUTF8(int, byte, String)
	*/
	@:overload @:public public function putUTF8(index : Int, utf8 : String) : Void;
	
	/** Set the entry of the constant pool indexed by index to
	*  a new value, depending on its dynamic type.
	*
	* @param index an index to a constant pool entry containing a
	*        one of the following structures:
	*        {@link ConstantPoolVisitor#CONSTANT_Integer},
	*        {@link ConstantPoolVisitor#CONSTANT_Float},
	*        {@link ConstantPoolVisitor#CONSTANT_Long},
	*        {@link ConstantPoolVisitor#CONSTANT_Double},
	*        {@link ConstantPoolVisitor#CONSTANT_String}, or
	*        {@link ConstantPoolVisitor#CONSTANT_Class}
	* @param value a boxed int, float, long or double; or a string or class object
	* @throws IllegalArgumentException if the type of the constant does not
	*         match the constant pool entry type,
	*         as reported by {@link #getTag(int)}
	*
	* @see #putConstantValue(int, byte, Object)
	* @see ConstantPoolVisitor#visitConstantValue(int, byte, Object)
	* @see ConstantPoolVisitor#visitConstantString(int, byte, String, int)
	*/
	@:overload @:public public function putConstantValue(index : Int, value : Dynamic) : Void;
	
	/** Set the entry of the constant pool indexed by index to
	*  a new value.
	*
	* @param index an index to a constant pool entry matching the given tag
	* @param tag one of the following values:
	*        {@link ConstantPoolVisitor#CONSTANT_Integer},
	*        {@link ConstantPoolVisitor#CONSTANT_Float},
	*        {@link ConstantPoolVisitor#CONSTANT_Long},
	*        {@link ConstantPoolVisitor#CONSTANT_Double},
	*        {@link ConstantPoolVisitor#CONSTANT_String}, or
	*        {@link ConstantPoolVisitor#CONSTANT_Class}
	* @param value a boxed number, string, or class object
	* @throws IllegalArgumentException if the type of the constant does not
	*         match the constant pool entry type, or if a class name contains
	*         '/' or ';'
	*
	* @see #putConstantValue(int, Object)
	* @see ConstantPoolVisitor#visitConstantValue(int, byte, Object)
	* @see ConstantPoolVisitor#visitConstantString(int, byte, String, int)
	*/
	@:overload @:public public function putConstantValue(index : Int, tag : java.StdTypes.Int8, value : Dynamic) : Void;
	
	/** Set the entry of the constant pool indexed by index to
	*  a new {@link ConstantPoolVisitor#CONSTANT_NameAndType} value.
	*
	* @param index an index to a constant pool entry containing a
	*        {@link ConstantPoolVisitor#CONSTANT_NameAndType} value.
	* @param memberName a memberName
	* @param signature a signature
	* @throws IllegalArgumentException if memberName contains the character ';'
	*
	* @see ConstantPoolVisitor#visitDescriptor(int, byte, String, String, int, int)
	*/
	@:overload @:public public function putDescriptor(index : Int, memberName : String, signature : String) : Void;
	
	/** Set the entry of the constant pool indexed by index to
	*  a new {@link ConstantPoolVisitor#CONSTANT_Fieldref},
	*  {@link ConstantPoolVisitor#CONSTANT_Methodref}, or
	*  {@link ConstantPoolVisitor#CONSTANT_InterfaceMethodref} value.
	*
	* @param index an index to a constant pool entry containing a member reference
	* @param className a class name
	* @param memberName a field or method name
	* @param signature a field or method signature
	* @throws IllegalArgumentException if memberName contains the character ';'
	*             or signature is not a correct signature
	*
	* @see ConstantPoolVisitor#visitMemberRef(int, byte, String, String, String, int, int)
	*/
	@:overload @:public public function putMemberRef(index : Int, tag : java.StdTypes.Int8, className : String, memberName : String, signature : String) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
