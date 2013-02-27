package sun.rmi.rmic.iiop;
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
extern class IDLNames implements sun.rmi.rmic.iiop.Constants
{
	/**
	* Used to convert ascii to hex.
	*/
	public static var ASCII_HEX(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Convert a name. The nameContext argument MUST be pre-filled with
	* all names from the appropriate context (e.g. all the method names
	* in a given class). The names must not have had any IDL conversions
	* applied.
	* <p>
	* Section 28.3.2.2
	* Section 28.3.2.3
	* Section 28.3.2.4
	* Section 28.3.2.7 (member and method names only)
	*/
	@:overload public static function getMemberOrMethodName(nameContext : sun.rmi.rmic.iiop.NameContext, name : String, env : sun.rmi.rmic.iiop.BatchEnvironment) : String;
	
	/**
	* Convert names with illegal IDL identifier characters.
	* <p>
	* Section 28.3.2.4
	*/
	@:overload public static function convertToISOLatin1(name : String) : String;
	
	/**
	* Convert names which collide with IDL keywords.
	* <p>
	* Section 28.3.2.5
	*/
	@:overload public static function convertIDLKeywords(name : String) : String;
	
	/**
	* Convert names which have leading underscores
	* <p>
	* Section 28.3.2.3
	*/
	@:overload public static function convertLeadingUnderscores(name : String) : String;
	
	/**
	* Convert a type name.
	* <p>
	* Section 28.3.2.5
	* Section 28.3.2.7 (class or interface names only)
	* Throws exception if fails 28.3.2.7.
	*/
	@:overload public static function getClassOrInterfaceName(id : sun.tools.java.Identifier, env : sun.rmi.rmic.iiop.BatchEnvironment) : String;
	
	/**
	* Convert an Exception name.
	* <p>
	* Section 28.3.7.2    (see ValueType)
	*/
	@:overload public static function getExceptionName(idlName : String) : String;
	
	/**
	* Convert a qualified Identifier into an array of IDL names.
	* <p>
	* Section 28.3.2.1    (see CompoundType)
	* Throws exception if fails 28.3.2.7.
	*/
	@:overload public static function getModuleNames(theID : sun.tools.java.Identifier, boxIt : Bool, env : sun.rmi.rmic.iiop.BatchEnvironment) : java.NativeArray<String>;
	
	/**
	* Get an array name with the specified dimensions.
	* <p>
	* Section 28.3.6  (see ArrayType)
	*/
	@:overload public static function getArrayName(theType : sun.rmi.rmic.iiop.Type, arrayDimension : Int) : String;
	
	/**
	* Get an array module names.
	*/
	@:overload public static function getArrayModuleNames(theType : sun.rmi.rmic.iiop.Type) : java.NativeArray<String>;
	
	/**
	* Set all the method names in a given class.
	* <p>
	* Section 28.3.2.7    (see CompoundType)
	* Section 28.3.2.7
	* Section 28.3.4.3 (RemoteType/AbstractType only).
	*/
	@:overload public static function setMethodNames(container : sun.rmi.rmic.iiop.CompoundType, allMethods : java.NativeArray<sun.rmi.rmic.iiop.CompoundType.CompoundType_Method>, env : sun.rmi.rmic.iiop.BatchEnvironment) : Void;
	
	/**
	* Set all the member names in a given class.
	* <p>
	* Section 28.3.2.7    (see CompoundType)
	* Section 28.3.2.7
	*/
	@:overload public static function setMemberNames(container : sun.rmi.rmic.iiop.CompoundType, allMembers : java.NativeArray<sun.rmi.rmic.iiop.CompoundType.CompoundType_Member>, allMethods : java.NativeArray<sun.rmi.rmic.iiop.CompoundType.CompoundType_Method>, env : sun.rmi.rmic.iiop.BatchEnvironment) : Void;
	
	/**
	* Get the name for the specified type code.
	* <p>
	* Section 28.3..3     (see PrimitiveType)
	* Section 28.3.5.10   (see SpecialClassType)
	* Section 28.3.4.1    (see SpecialInterfaceType)
	* Section 28.3.10.1   (see SpecialInterfaceType)
	* Section 28.3.10.2   (see SpecialClassType)
	*/
	@:overload public static function getTypeName(typeCode : Int, isConstant : Bool) : String;
	
	/**
	* Create a qualified name.
	*/
	@:overload public static function getQualifiedName(idlModuleNames : java.NativeArray<String>, idlName : String) : String;
	
	/**
	* Replace substrings
	* @param source The source string.
	* @param match The string to search for within the source string.
	* @param replace The replacement for any matching components.
	* @return
	*/
	@:overload public static function replace(source : String, match : String, replace : String) : String;
	
	/**
	* Get an IDL style repository id for
	*/
	@:overload public static function getIDLRepositoryID(idlName : String) : String;
	
	
}
