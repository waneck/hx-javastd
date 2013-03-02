package sun.misc;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ProxyGenerator
{
	/**
	* Generate a proxy class given a name and a list of proxy interfaces.
	*/
	@:overload public static function generateProxyClass(name : String, interfaces : java.NativeArray<Class<Dynamic>>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* A FieldInfo object contains information about a particular field
* in the class being generated.  The class mirrors the data items of
* the "field_info" structure of the class file format (see JVMS 4.5).
*/
@:native('sun$misc$ProxyGenerator$FieldInfo') @:internal extern class ProxyGenerator_FieldInfo
{
	public var accessFlags : Int;
	
	public var name : String;
	
	public var descriptor : String;
	
	@:overload public function new(name : String, descriptor : String, accessFlags : Int) : Void;
	
	@:overload public function write(out : java.io.DataOutputStream) : Void;
	
	
}
/**
* An ExceptionTableEntry object holds values for the data items of
* an entry in the "exception_table" item of the "Code" attribute of
* "method_info" structures (see JVMS 4.7.3).
*/
@:native('sun$misc$ProxyGenerator$ExceptionTableEntry') @:internal extern class ProxyGenerator_ExceptionTableEntry
{
	public var startPc : java.StdTypes.Int16;
	
	public var endPc : java.StdTypes.Int16;
	
	public var handlerPc : java.StdTypes.Int16;
	
	public var catchType : java.StdTypes.Int16;
	
	@:overload public function new(startPc : java.StdTypes.Int16, endPc : java.StdTypes.Int16, handlerPc : java.StdTypes.Int16, catchType : java.StdTypes.Int16) : Void;
	
	
}
/**
* A MethodInfo object contains information about a particular method
* in the class being generated.  This class mirrors the data items of
* the "method_info" structure of the class file format (see JVMS 4.6).
*/
@:native('sun$misc$ProxyGenerator$MethodInfo') @:internal extern class ProxyGenerator_MethodInfo
{
	public var accessFlags : Int;
	
	public var name : String;
	
	public var descriptor : String;
	
	public var maxStack : java.StdTypes.Int16;
	
	public var maxLocals : java.StdTypes.Int16;
	
	public var code : java.io.ByteArrayOutputStream;
	
	public var exceptionTable : java.util.List<sun.misc.ProxyGenerator.ProxyGenerator_ExceptionTableEntry>;
	
	public var declaredExceptions : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function new(name : String, descriptor : String, accessFlags : Int) : Void;
	
	@:overload public function write(out : java.io.DataOutputStream) : Void;
	
	
}
/**
* A ProxyMethod object represents a proxy method in the proxy class
* being generated: a method whose implementation will encode and
* dispatch invocations to the proxy instance's invocation handler.
*/
@:native('sun$misc$ProxyGenerator$ProxyMethod') @:internal extern class ProxyGenerator_ProxyMethod
{
	public var methodName : String;
	
	public var parameterTypes : java.NativeArray<Class<Dynamic>>;
	
	public var returnType : Class<Dynamic>;
	
	public var exceptionTypes : java.NativeArray<Class<Dynamic>>;
	
	public var fromClass : Class<Dynamic>;
	
	public var methodFieldName : String;
	
	
}
/**
* A PrimitiveTypeInfo object contains assorted information about
* a primitive type in its public fields.  The struct for a particular
* primitive type can be obtained using the static "get" method.
*/
@:native('sun$misc$ProxyGenerator$PrimitiveTypeInfo') @:internal extern class ProxyGenerator_PrimitiveTypeInfo
{
	/** "base type" used in various descriptors (see JVMS section 4.3.2) */
	public var baseTypeString : String;
	
	/** name of corresponding wrapper class */
	public var wrapperClassName : String;
	
	/** method descriptor for wrapper class "valueOf" factory method */
	public var wrapperValueOfDesc : String;
	
	/** name of wrapper class method for retrieving primitive value */
	public var unwrapMethodName : String;
	
	/** descriptor of same method */
	public var unwrapMethodDesc : String;
	
	@:overload public static function get(cl : Class<Dynamic>) : sun.misc.ProxyGenerator.ProxyGenerator_PrimitiveTypeInfo;
	
	
}
/**
* A ConstantPool object represents the constant pool of a class file
* being generated.  This representation of a constant pool is designed
* specifically for use by ProxyGenerator; in particular, it assumes
* that constant pool entries will not need to be resorted (for example,
* by their type, as the Java compiler does), so that the final index
* value can be assigned and used when an entry is first created.
*
* Note that new entries cannot be created after the constant pool has
* been written to a class file.  To prevent such logic errors, a
* ConstantPool instance can be marked "read only", so that further
* attempts to add new entries will fail with a runtime exception.
*
* See JVMS section 4.4 for more information about the constant pool
* of a class file.
*/
@:native('sun$misc$ProxyGenerator$ConstantPool') @:internal extern class ProxyGenerator_ConstantPool
{
	/**
	* Get or assign the index for a CONSTANT_Utf8 entry.
	*/
	@:overload public function getUtf8(s : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_Integer entry.
	*/
	@:overload public function getInteger(i : Int) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_Float entry.
	*/
	@:overload public function getFloat(f : Single) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_Class entry.
	*/
	@:overload public function getClass(name : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_String entry.
	*/
	@:overload public function getString(s : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_FieldRef entry.
	*/
	@:overload public function getFieldRef(className : String, name : String, descriptor : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_MethodRef entry.
	*/
	@:overload public function getMethodRef(className : String, name : String, descriptor : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_InterfaceMethodRef entry.
	*/
	@:overload public function getInterfaceMethodRef(className : String, name : String, descriptor : String) : java.StdTypes.Int16;
	
	/**
	* Get or assign the index for a CONSTANT_NameAndType entry.
	*/
	@:overload public function getNameAndType(name : String, descriptor : String) : java.StdTypes.Int16;
	
	/**
	* Set this ConstantPool instance to be "read only".
	*
	* After this method has been called, further requests to get
	* an index for a non-existent entry will cause an InternalError
	* to be thrown instead of creating of the entry.
	*/
	@:overload public function setReadOnly() : Void;
	
	/**
	* Write this constant pool to a stream as part of
	* the class file format.
	*
	* This consists of writing the "constant_pool_count" and
	* "constant_pool[]" items of the "ClassFile" structure, as
	* described in JVMS section 4.1.
	*/
	@:overload public function write(out : java.io.OutputStream) : Void;
	
	
}
/**
* Entry is the abstact superclass of all constant pool entry types
* that can be stored in the "pool" list; its purpose is to define a
* common method for writing constant pool entries to a class file.
*/
@:native('sun$misc$ProxyGenerator$ConstantPool$Entry') @:internal extern class ProxyGenerator_ConstantPool_Entry
{
	@:overload @:abstract public function write(out : java.io.DataOutputStream) : Void;
	
	
}
/**
* ValueEntry represents a constant pool entry of a type that
* contains a direct value (see the comments for the "getValue"
* method for a list of such types).
*
* ValueEntry objects are not used as keys for their entries in the
* Map "map", so no useful hashCode or equals methods are defined.
*/
@:native('sun$misc$ProxyGenerator$ConstantPool$ValueEntry') @:internal extern class ProxyGenerator_ConstantPool_ValueEntry extends sun.misc.ProxyGenerator.ProxyGenerator_ConstantPool_Entry
{
	@:overload public function new(value : Dynamic) : Void;
	
	@:overload override public function write(out : java.io.DataOutputStream) : Void;
	
	
}
/**
* IndirectEntry represents a constant pool entry of a type that
* references other constant pool entries, i.e., the following types:
*
*      CONSTANT_Class, CONSTANT_String, CONSTANT_Fieldref,
*      CONSTANT_Methodref, CONSTANT_InterfaceMethodref, and
*      CONSTANT_NameAndType.
*
* Each of these entry types contains either one or two indexes of
* other constant pool entries.
*
* IndirectEntry objects are used as the keys for their entries in
* the Map "map", so the hashCode and equals methods are overridden
* to allow matching.
*/
@:native('sun$misc$ProxyGenerator$ConstantPool$IndirectEntry') @:internal extern class ProxyGenerator_ConstantPool_IndirectEntry extends sun.misc.ProxyGenerator.ProxyGenerator_ConstantPool_Entry
{
	/**
	* Construct an IndirectEntry for a constant pool entry type
	* that contains one index of another entry.
	*/
	@:overload public function new(tag : Int, index : java.StdTypes.Int16) : Void;
	
	/**
	* Construct an IndirectEntry for a constant pool entry type
	* that contains two indexes for other entries.
	*/
	@:overload public function new(tag : Int, index0 : java.StdTypes.Int16, index1 : java.StdTypes.Int16) : Void;
	
	@:overload override public function write(out : java.io.DataOutputStream) : Void;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
