package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class Type implements sun.rmi.rmic.iiop.Constants implements sun.rmi.rmic.iiop.ContextElement implements java.lang.Cloneable
{
	@:protected private var env : sun.rmi.rmic.iiop.BatchEnvironment;
	
	@:protected private var stack : sun.rmi.rmic.iiop.ContextStack;
	
	@:protected private var destroyed : Bool;
	
	/**
	* Return the unqualified name for this type (e.g. com.acme.Dynamite would
	* return "Dynamite").
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the package of this type (e.g. com.acme.Dynamite would
	* return "com.acme"). Will return null if default package or
	* if this type is a primitive.
	*/
	@:overload @:public public function getPackageName() : String;
	
	/**
	* Return the fully qualified name of this type  (e.g. com.acme.Dynamite
	* would return "com.acme.Dynamite")
	*/
	@:overload @:public public function getQualifiedName() : String;
	
	/**
	* Return signature for this type  (e.g. com.acme.Dynamite
	* would return "com.acme.Dynamite", byte = "B")
	*/
	@:overload @:public @:abstract public function getSignature() : String;
	
	/**
	* IDL_Naming
	* Return the unqualified IDL name of this type (e.g. com.acme.Dynamite would
	* return "Dynamite").
	*/
	@:overload @:public public function getIDLName() : String;
	
	/**
	* IDL_Naming
	* Return the IDL module name for this type (e.g. com.acme.Dynamite would return
	* a three element array of {"com","acme"). May be a zero length array if
	* there is no module name.
	*/
	@:overload @:public public function getIDLModuleNames() : java.NativeArray<String>;
	
	/**
	* IDL_Naming
	* Return the fully qualified IDL name for this type (e.g. com.acme.Dynamite would
	* return "com::acme::Dynamite").
	* @param global If true, prepends "::".
	*/
	@:overload @:public public function getQualifiedIDLName(global : Bool) : String;
	
	/**
	* Return the identifier for this type. May be qualified.
	*/
	@:overload @:public public function getIdentifier() : sun.tools.java.Identifier;
	
	/**
	* Return the repository ID for this type.
	*/
	@:overload @:public public function getRepositoryID() : String;
	
	/**
	* Return the repository ID for this "boxed" type.
	*/
	@:overload @:public public function getBoxedRepositoryID() : String;
	
	/**
	* Return the Class for this type.
	*/
	@:overload @:public public function getClassInstance() : Class<Dynamic>;
	
	/**
	* Return the status of this type.
	*/
	@:overload @:public public function getStatus() : Int;
	
	/**
	* Set the status of this type.
	*/
	@:overload @:public public function setStatus(status : Int) : Void;
	
	/**
	* Return the compiler environment for this type.
	*/
	@:overload @:public public function getEnv() : sun.rmi.rmic.iiop.BatchEnvironment;
	
	/**
	* Get type code, without modifiers. Type codes are defined in sun.rmi.rmic.iiop.Constants.
	*/
	@:overload @:public public function getTypeCode() : Int;
	
	/**
	* Get type code, with modifiers. Type codes are defined in sun.rmi.rmic.iiop.Constants.
	*/
	@:overload @:public public function getFullTypeCode() : Int;
	
	/**
	* Get type code modifiers. Type codes are defined in sun.rmi.rmic.iiop.Constants.
	*/
	@:overload @:public public function getTypeCodeModifiers() : Int;
	
	/**
	* Check for a certain type. Type codes are defined in sun.rmi.rmic.iiop.Constants.
	* Returns true if all of the bits in typeCodeMask are present in the full type code
	* of this object.
	*/
	@:overload @:public public function isType(typeCodeMask : Int) : Bool;
	
	/**
	* Like isType(), but returns true if <em>any</em> of the bits in typeCodeMask are
	* present in the full type code of this object.
	*/
	@:overload @:public public function typeMatches(typeCodeMask : Int) : Bool;
	
	/**
	* Return the fullTypeCode. If an array, returns the
	* type code from the element type.
	*/
	@:overload @:public public function getRootTypeCode() : Int;
	
	/**
	* Return true if this type is-a InterfaceType.
	*/
	@:overload @:public public function isInterface() : Bool;
	
	/**
	* Return true if this type is-a ClassType.
	*/
	@:overload @:public public function isClass() : Bool;
	
	/**
	* Return true if this type is-a inner class or interface.
	*/
	@:overload @:public public function isInner() : Bool;
	
	/**
	* Return true if this type is-a SpecialInterfaceType.
	*/
	@:overload @:public public function isSpecialInterface() : Bool;
	
	/**
	* Return true if this type is-a SpecialClassType.
	*/
	@:overload @:public public function isSpecialClass() : Bool;
	
	/**
	* Return true if this type is-a CompoundType.
	*/
	@:overload @:public public function isCompound() : Bool;
	
	/**
	* Return true if this type is-a PrimitiveType.
	*/
	@:overload @:public public function isPrimitive() : Bool;
	
	/**
	* Return true if this type is-a ArrayType.
	*/
	@:overload @:public public function isArray() : Bool;
	
	/**
	* Return true if this type is a conforming type.
	*/
	@:overload @:public public function isConforming() : Bool;
	
	/**
	* Return a string representation of this type.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Get element type. Returns null if not an array.
	*/
	@:overload @:public public function getElementType() : sun.rmi.rmic.iiop.Type;
	
	/**
	* Get array dimension. Returns zero if not an array.
	*/
	@:overload @:public public function getArrayDimension() : Int;
	
	/**
	* Get brackets string. Returns "" if not an array.
	*/
	@:overload @:public public function getArrayBrackets() : String;
	
	/**
	* Equality check based on the string representation.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Collect all the matching types referenced directly or indirectly
	* by this type, including itself.
	* @param typeCodeFilter The typeCode to use as a filter.
	*/
	@:overload @:public public function collectMatching(typeCodeFilter : Int) : java.NativeArray<sun.rmi.rmic.iiop.Type>;
	
	/**
	* Collect all the matching types referenced directly or indirectly
	* by this type, including itself.
	* @param typeCodeFilter The typeCode to use as a filter.
	* @param alreadyChecked Contains types which have previously been checked
	* and will be ignored. Updated during collection.
	*/
	@:overload @:public public function collectMatching(typeCodeFilter : Int, alreadyChecked : java.util.HashSet<Dynamic>) : java.NativeArray<sun.rmi.rmic.iiop.Type>;
	
	/**
	* Return a string describing this type.
	*/
	@:overload @:public @:abstract public function getTypeDescription() : String;
	
	/**
	* Return the name of this type. For arrays, will include "[]" if useIDLNames == false.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload @:public public function getTypeName(useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : String;
	
	/**
	* Print all types referenced directly or indirectly by this type which
	* match the filter.
	* @param writer The stream to print to.
	* @param typeCodeFilter The type codes to print.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload @:public public function print(writer : sun.rmi.rmic.IndentingWriter, typeCodeFilter : Int, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Print an array of types.
	* @param writer The stream to print to.
	* @param theTypes The types to print.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:native('print') @:overload @:public @:static public static function _print(writer : sun.rmi.rmic.IndentingWriter, theTypes : java.NativeArray<sun.rmi.rmic.iiop.Type>, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Print this type.
	* @param writer The stream to print to.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload @:public public function print(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Print this type, followed by a newline.
	* @param writer The stream to print to.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload @:public public function println(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Print the name of this type.
	* @param writer The stream to print to.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload @:public public function printTypeName(writer : sun.rmi.rmic.IndentingWriter, useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : Void;
	
	/**
	* Return context element name.
	*/
	@:overload @:public public function getElementName() : String;
	
	/**
	* Print the "opening" of the package or module of this type.
	* @param writer The stream to print to.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	*/
	@:overload @:protected private function printPackageOpen(writer : sun.rmi.rmic.IndentingWriter, useIDLNames : Bool) : Void;
	
	/**
	* Get a type out of the table.
	*/
	@:overload @:protected @:static private static function getType(key : sun.tools.java.Type, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.Type;
	
	/**
	* Get a type out of the table.
	*/
	@:overload @:protected @:static private static function getType(key : String, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.Type;
	
	/**
	* Remove a type from the table.
	*/
	@:overload @:protected @:static private static function removeType(key : String, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Remove a type from the table.
	*/
	@:overload @:protected @:static private static function removeType(key : sun.tools.java.Type, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Put a type into the table.
	*/
	@:overload @:protected @:static private static function putType(key : sun.tools.java.Type, value : sun.rmi.rmic.iiop.Type, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Put a type into the table.
	*/
	@:overload @:protected @:static private static function putType(key : String, value : sun.rmi.rmic.iiop.Type, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Put an invalid type into the.
	*/
	@:overload @:protected @:static private static function putInvalidType(key : sun.rmi.rmic.iiop.Type, value : String, stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Remove all invalid types...
	*/
	@:overload @:public public function removeInvalidTypes() : Void;
	
	/**
	* Walk all types and tell them to update invalid types...
	*/
	@:overload @:protected @:static private static function updateAllInvalidTypes(stack : sun.rmi.rmic.iiop.ContextStack) : Void;
	
	/**
	* Return count of previously parsed types.
	*/
	@:overload @:protected private function countTypes() : Int;
	
	/**
	* Release all resources.
	*/
	@:overload @:protected private function destroy() : Void;
	
	/**
	* Convert all invalid types to valid ones.
	*/
	@:overload @:protected private function swapInvalidTypes() : Void;
	
	/**
	* Convert an invalid type to a valid one.
	*/
	@:overload @:protected private function getValidType(invalidType : sun.rmi.rmic.iiop.Type) : sun.rmi.rmic.iiop.Type;
	
	/**
	* Print the "closing" of the package or module of this type.
	* @param writer The stream to print to.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	*/
	@:overload @:protected private function printPackageClose(writer : sun.rmi.rmic.IndentingWriter, useIDLNames : Bool) : Void;
	
	/**
	* Create a Type instance for the given type. Requires that
	* setName(Identifier) be called afterward.
	*/
	@:overload @:protected private function new(stack : sun.rmi.rmic.iiop.ContextStack, fullTypeCode : Int) : Void;
	
	/**
	* Set type codes. May only be called during initialization.
	*/
	@:overload @:protected private function setTypeCode(fullTypeCode : Int) : Void;
	
	/**
	* Set name and package. May only be called during initialization.
	*/
	@:overload @:protected private function setNames(id : sun.tools.java.Identifier, idlModuleNames : java.NativeArray<String>, idlName : String) : Void;
	
	/**
	* Set IDL name. May only be called during initialization.
	*/
	@:overload @:protected private function setIDLNames(idlModuleNames : java.NativeArray<String>, idlName : String) : Void;
	
	/**
	* Report a ClassNotFoundException thru the compiler environment.
	*/
	@:overload @:protected @:static private static function classNotFound(stack : sun.rmi.rmic.iiop.ContextStack, e : sun.tools.java.ClassNotFound) : Void;
	
	/**
	* Report a ClassNotFoundException thru the compiler environment.
	*/
	@:overload @:protected @:static private static function classNotFound(quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack, e : sun.tools.java.ClassNotFound) : Void;
	
	/**
	* Report a constraint failure thru the compiler environment.
	* @param constraintNum Used to generate a key of the form
	"rmic.iiop.constraint.N", which must identify a message
	in the "rmic.properties" file.
	* @param quiet True if should not cause failure or message.
	* @param stack The context stack.
	* @param arg0 An object to substitute for {0} in the message.
	* @param arg1 An object to substitute for {1} in the message.
	* @param arg2 An object to substitute for {2} in the message.
	* @return false.
	*/
	@:overload @:protected @:static private static function failedConstraint(constraintNum : Int, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : Bool;
	
	/**
	* Report a constraint failure thru the compiler environment.
	* @param constraintNum Used to generate a key of the form
	"rmic.iiop.constraint.N", which must identify a message
	in the "rmic.properties" file.
	* @param quiet True if should not cause failure or message.
	* @param stack The context stack.
	* @param arg0 An object to substitute for {0} in the message.
	* @param arg1 An object to substitute for {1} in the message.
	* @return false.
	*/
	@:overload @:protected @:static private static function failedConstraint(constraintNum : Int, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack, arg0 : Dynamic, arg1 : Dynamic) : Bool;
	
	/**
	* Report a constraint failure thru the compiler environment.
	* @param constraintNum Used to generate a key of the form
	"rmic.iiop.constraint.N", which must identify a message
	in the "rmic.properties" file.
	* @param quiet True if should not cause failure or message.
	* @param stack The context stack.
	* @param arg0 An object to substitute for {0} in the message.
	* @return false.
	*/
	@:overload @:protected @:static private static function failedConstraint(constraintNum : Int, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack, arg0 : Dynamic) : Bool;
	
	/**
	* Report a constraint failure thru the compiler environment.
	* @param quiet True if should not cause failure or message.
	* @param stack The context stack.
	* @param constraintNum Used to generate a key of the form
	"rmic.iiop.constraint.N", which must identify a message
	in the "rmic.properties" file.
	* @return false.
	*/
	@:overload @:protected @:static private static function failedConstraint(constraintNum : Int, quiet : Bool, stack : sun.rmi.rmic.iiop.ContextStack) : Bool;
	
	/**
	* Cloning is supported by returning a shallow copy of this object.
	*/
	@:overload @:protected private function clone() : Dynamic;
	
	/*
	* Add matching types to list. Return true if this type has not
	* been previously checked, false otherwise.
	*/
	@:overload @:protected private function addTypes(typeCodeFilter : Int, checked : java.util.HashSet<Dynamic>, matching : java.util.Vector<Dynamic>) : Bool;
	
	/*
	* Load a Class instance. Return null if fail.
	*/
	@:overload @:protected @:abstract private function loadClass() : Class<Dynamic>;
	
	/*
	* Set the clz and repositoryID fields. Reports error
	* and returns false if fails, returns true if succeeds.
	*/
	@:overload @:protected private function setRepositoryID() : Bool;
	
	
}
