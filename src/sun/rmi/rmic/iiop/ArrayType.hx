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
extern class ArrayType extends sun.rmi.rmic.iiop.Type
{
	/**
	* Create an ArrayType object for the given type.
	*
	* If the class is not a properly formed or if some other error occurs, the
	* return value will be null, and errors will have been reported to the
	* supplied BatchEnvironment.
	*/
	@:overload public static function forArray(theType : sun.tools.java.Type, stack : sun.rmi.rmic.iiop.ContextStack) : ArrayType;
	
	/**
	* Return signature for this type  (e.g. com.acme.Dynamite
	* would return "com.acme.Dynamite", byte = "B")
	*/
	@:overload override public function getSignature() : String;
	
	/**
	* Get element type. Returns null if not an array.
	*/
	@:overload override public function getElementType() : sun.rmi.rmic.iiop.Type;
	
	/**
	* Get array dimension. Returns zero if not an array.
	*/
	@:overload override public function getArrayDimension() : Int;
	
	/**
	* Get brackets string. Returns "" if not an array.
	*/
	@:overload override public function getArrayBrackets() : String;
	
	/**
	* Return a string representation of this type.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Return a string describing this type.
	*/
	@:overload override public function getTypeDescription() : String;
	
	/**
	* Return the name of this type. For arrays, will include "[]" if useIDLNames == false.
	* @param useQualifiedNames If true, print qualified names; otherwise, print unqualified names.
	* @param useIDLNames If true, print IDL names; otherwise, print java names.
	* @param globalIDLNames If true and useIDLNames true, prepends "::".
	*/
	@:overload override public function getTypeName(useQualifiedNames : Bool, useIDLNames : Bool, globalIDLNames : Bool) : String;
	
	/**
	* Convert all invalid types to valid ones.
	*/
	@:overload override private function swapInvalidTypes() : Void;
	
	/*
	* Add matching types to list. Return true if this type has not
	* been previously checked, false otherwise.
	*/
	@:overload override private function addTypes(typeCodeFilter : Int, checked : java.util.HashSet<Dynamic>, matching : java.util.Vector<Dynamic>) : Bool;
	
	/*
	* Load a Class instance. Return null if fail.
	*/
	@:overload override private function loadClass() : Class<Dynamic>;
	
	/**
	* Release all resources
	*/
	@:overload override private function destroy() : Void;
	
	
}
