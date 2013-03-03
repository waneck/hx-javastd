package com.sun.corba.se.impl.util;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class RepositoryId
{
	@:public @:static @:final public static var kInitialValueTag(default, null) : Int;
	
	@:public @:static @:final public static var kNoTypeInfo(default, null) : Int;
	
	@:public @:static @:final public static var kSingleRepTypeInfo(default, null) : Int;
	
	@:public @:static @:final public static var kPartialListTypeInfo(default, null) : Int;
	
	@:public @:static @:final public static var kChunkedMask(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_StandardRMIUnchunked(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_CodeBaseRMIUnchunked(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_StandardRMIChunked(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_CodeBaseRMIChunked(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_StandardRMIUnchunked_NoRep(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_CodeBaseRMIUnchunked_NoRep(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_StandardRMIChunked_NoRep(default, null) : Int;
	
	@:public @:static @:final public static var kPreComputed_CodeBaseRMIChunked_NoRep(default, null) : Int;
	
	@:public @:static @:final public static var kWStringValueVersion(default, null) : String;
	
	@:public @:static @:final public static var kWStringValueHash(default, null) : String;
	
	@:public @:static @:final public static var kWStringStubValue(default, null) : String;
	
	@:public @:static @:final public static var kWStringTypeStr(default, null) : String;
	
	@:public @:static @:final public static var kWStringValueRepID(default, null) : String;
	
	@:public @:static @:final public static var kAnyRepID(default, null) : String;
	
	@:public @:static @:final public static var kClassDescValueHash(default, null) : String;
	
	@:public @:static @:final public static var kClassDescStubValue(default, null) : String;
	
	@:public @:static @:final public static var kClassDescTypeStr(default, null) : String;
	
	@:public @:static @:final public static var kClassDescValueRepID(default, null) : String;
	
	@:public @:static @:final public static var kObjectValueHash(default, null) : String;
	
	@:public @:static @:final public static var kObjectStubValue(default, null) : String;
	
	@:public @:static @:final public static var kSequenceValueHash(default, null) : String;
	
	@:public @:static @:final public static var kPrimitiveSequenceValueHash(default, null) : String;
	
	@:public @:static @:final public static var kSerializableValueHash(default, null) : String;
	
	@:public @:static @:final public static var kSerializableStubValue(default, null) : String;
	
	@:public @:static @:final public static var kExternalizableValueHash(default, null) : String;
	
	@:public @:static @:final public static var kExternalizableStubValue(default, null) : String;
	
	@:public @:static @:final public static var kRemoteValueHash(default, null) : String;
	
	@:public @:static @:final public static var kRemoteStubValue(default, null) : String;
	
	@:public @:static @:final public static var kRemoteTypeStr(default, null) : String;
	
	@:public @:static @:final public static var kRemoteValueRepID(default, null) : String;
	
	@:public @:static @:final public static var cache(default, null) : RepositoryIdCache;
	
	@:public @:static @:final public static var kjava_rmi_Remote(default, null) : String;
	
	@:public @:static @:final public static var korg_omg_CORBA_Object(default, null) : String;
	
	@:public @:static @:final public static var kNoParamTypes(default, null) : java.NativeArray<Class<Dynamic>>;
	
	@:public @:static @:final public static var kNoArgs(default, null) : java.NativeArray<Dynamic>;
	
	@:overload @:public @:final public function getUnqualifiedName() : String;
	
	@:overload @:public @:final public function getDefinedInId() : String;
	
	@:overload @:public @:final public function getTypeString() : String;
	
	@:overload @:public @:final public function getVersionString() : String;
	
	@:overload @:public @:final public function getSerialVersionUID() : String;
	
	@:overload @:public @:final public function getActualSerialVersionUID() : String;
	
	@:overload @:public @:final public function getSerialVersionUIDAsLong() : haxe.Int64;
	
	@:overload @:public @:final public function getActualSerialVersionUIDAsLong() : haxe.Int64;
	
	@:overload @:public @:final public function isRMIValueType() : Bool;
	
	@:overload @:public @:final public function isIDLType() : Bool;
	
	@:overload @:public @:final public function getRepositoryId() : String;
	
	@:overload @:public @:static public static function getByteArray(repStr : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function setByteArray(repStr : String, repStrBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:final public function isSequence() : Bool;
	
	@:overload @:public @:final public function isSupportedFormat() : Bool;
	
	@:overload @:public @:final public function getClassName() : String;
	
	@:overload @:public @:final public function getAnyClassFromType() : Class<Dynamic>;
	
	@:overload @:public @:final public function getClassFromType() : Class<Dynamic>;
	
	@:overload @:public @:final public function getClassFromType(expectedType : Class<Dynamic>, codebase : String) : Class<Dynamic>;
	
	@:overload @:public @:final public function getClassFromType(url : String) : Class<Dynamic>;
	
	@:overload @:public @:final public function toString() : String;
	
	/**
	* Checks to see if the FullValueDescription should be retrieved.
	* @exception Throws IOException if suids do not match or if the repositoryID
	* is not an RMIValueType
	*/
	@:overload @:public @:static public static function useFullValueDescription(clazz : Class<Dynamic>, repositoryID : String) : Bool;
	
	/**
	* Creates a repository ID for a sequence.  This is for expert users only as
	* this method assumes the object passed is an array.  If passed an object
	* that is not an array, it will produce a rep id for a sequence of zero
	* length.  This would be an error.
	* @param ser The Java object to create a repository ID for
	**/
	@:overload @:public @:static public static function createSequenceRepID(ser : Dynamic) : String;
	
	/**
	* Creates a repository ID for a sequence.  This is for expert users only as
	* this method assumes the object passed is an array.  If passed an object
	* that is not an array, it will produce a malformed rep id.
	* @param clazz The Java class to create a repository ID for
	**/
	@:overload @:public @:static public static function createSequenceRepID(clazz : Class<Dynamic>) : String;
	
	@:overload @:public @:static public static function createForSpecialCase(clazz : Class<Dynamic>) : String;
	
	@:overload @:public @:static public static function createForSpecialCase(ser : java.io.Serializable) : String;
	
	/**
	* Creates a repository ID for a normal Java Type.
	* @param ser The Java object to create a repository ID for
	* @exception com.sun.corba.se.impl.io.TypeMismatchException if ser implements the
	* org.omg.CORBA.portable.IDLEntity interface which indicates it is an IDL Value type.
	**/
	@:overload @:public @:static public static function createForJavaType(ser : java.io.Serializable) : String;
	
	/**
	* Creates a repository ID for a normal Java Type.
	* @param clz The Java class to create a repository ID for
	* @exception com.sun.corba.se.impl.io.TypeMismatchException if ser implements the
	* org.omg.CORBA.portable.IDLEntity interface which indicates it is an IDL Value type.
	**/
	@:overload @:public @:static public static function createForJavaType(clz : Class<Dynamic>) : String;
	
	/**
	* Creates a repository ID for an IDL Java Type.
	* @param ser The IDL Value object to create a repository ID for
	* @param major The major version number
	* @param minor The minor version number
	* @exception com.sun.corba.se.impl.io.TypeMismatchException if ser does not implement the
	* org.omg.CORBA.portable.IDLEntity interface which indicates it is an IDL Value type.
	**/
	@:overload @:public @:static public static function createForIDLType(ser : Class<Dynamic>, major : Int, minor : Int) : String;
	
	/**
	* Createa a repository ID for the type if it is either a java type
	* or an IDL type.
	* @param type The type to create rep. id for
	* @return The rep. id.
	**/
	@:overload @:public @:static public static function createForAnyType(type : Class<Dynamic>) : String;
	
	@:overload @:public @:static public static function isAbstractBase(clazz : Class<Dynamic>) : Bool;
	
	@:overload @:public @:static public static function isAnyRequired(clazz : Class<Dynamic>) : Bool;
	
	@:overload @:public @:static public static function fromHex(hexNumber : String) : haxe.Int64;
	
	/**
	* Convert strings with illegal IDL identifier characters.
	* <p>
	* Section 5.5.7 of OBV spec.
	*/
	@:overload @:public @:static public static function convertToISOLatin1(name : String) : String;
	
	@:overload @:public @:static public static function computeValueTag(codeBasePresent : Bool, typeInfo : Int, chunkedEncoding : Bool) : Int;
	
	@:overload @:public @:static public static function isCodeBasePresent(value_tag : Int) : Bool;
	
	@:overload @:public @:static public static function getTypeInfo(value_tag : Int) : Int;
	
	@:overload @:public @:static public static function isChunkedEncoding(value_tag : Int) : Bool;
	
	@:overload @:public @:static public static function getServerURL() : String;
	
	
}
