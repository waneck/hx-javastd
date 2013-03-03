package javax.naming.ldap;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SortResponseControl extends javax.naming.ldap.BasicControl
{
	/**
	* The server-side sort response control's assigned object identifier
	* is 1.2.840.113556.1.4.474.
	*/
	@:public @:static @:final public static var OID(default, null) : String;
	
	/**
	* Constructs a control to indicate the outcome of a sort request.
	*
	* @param   id              The control's object identifier string.
	* @param   criticality     The control's criticality.
	* @param   value           The control's ASN.1 BER encoded value.
	*                          It is not cloned - any changes to value
	*                          will affect the contents of the control.
	* @exception               IOException if an error is encountered
	*                          while decoding the control's value.
	*/
	@:overload @:public public function new(id : String, criticality : Bool, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Determines if the search results have been successfully sorted.
	* If an error occurred during sorting a NamingException is thrown.
	*
	* @return    true if the search results have been sorted.
	*/
	@:overload @:public public function isSorted() : Bool;
	
	/**
	* Retrieves the LDAP result code of the sort operation.
	*
	* @return    The result code. A zero value indicates success.
	*/
	@:overload @:public public function getResultCode() : Int;
	
	/**
	* Retrieves the ID of the attribute that caused the sort to fail.
	* Returns null if no ID was returned by the server.
	*
	* @return The possibly null ID of the bad attribute.
	*/
	@:overload @:public public function getAttributeID() : String;
	
	/**
	* Retrieves the NamingException appropriate for the result code.
	*
	* @return A NamingException or null if the result code indicates
	*         success.
	*/
	@:overload @:public public function getException() : javax.naming.NamingException;
	
	
}
