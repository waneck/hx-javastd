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
extern class PrimitiveType extends sun.rmi.rmic.iiop.Type
{
	/**
	* Create a PrimitiveType object for the given type.
	*
	* If the type is not a properly formed or if some other error occurs, the
	* return value will be null, and errors will have been reported to the
	* supplied BatchEnvironment.
	*/
	@:overload @:public @:static public static function forPrimitive(type : sun.tools.java.Type, stack : sun.rmi.rmic.iiop.ContextStack) : sun.rmi.rmic.iiop.PrimitiveType;
	
	/**
	* Return signature for this type  (e.g. com.acme.Dynamite
	* would return "com.acme.Dynamite", byte = "B")
	*/
	@:overload @:public override public function getSignature() : String;
	
	/**
	* Return a string describing this type.
	*/
	@:overload @:public override public function getTypeDescription() : String;
	
	/**
	* IDL_Naming
	* Return the fully qualified IDL name for this type (e.g. com.acme.Dynamite would
	* return "com::acme::Dynamite").
	* @param global If true, prepends "::".
	*/
	@:overload @:public override public function getQualifiedIDLName(global : Bool) : String;
	
	/*
	* Load a Class instance. Return null if fail.
	*/
	@:overload @:protected override private function loadClass() : Class<Dynamic>;
	
	
}
@:internal extern class Null
{
	
}
