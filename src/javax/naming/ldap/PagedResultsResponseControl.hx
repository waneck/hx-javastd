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
extern class PagedResultsResponseControl extends javax.naming.ldap.BasicControl
{
	/**
	* The paged-results response control's assigned object identifier
	* is 1.2.840.113556.1.4.319.
	*/
	public static var OID(default, null) : String;
	
	/**
	* Constructs a paged-results response control.
	*
	* @param   id              The control's object identifier string.
	* @param   criticality     The control's criticality.
	* @param   value           The control's ASN.1 BER encoded value.
	*                          It is not cloned - any changes to value
	*                          will affect the contents of the control.
	* @exception IOException   If an error was encountered while decoding
	*                          the control's value.
	*/
	@:overload public function new(id : String, criticality : Bool, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Retrieves (an estimate of) the number of entries in the search result.
	*
	* @return The number of entries in the search result, or zero if unknown.
	*/
	@:overload public function getResultSize() : Int;
	
	/**
	* Retrieves the server-generated cookie. Null is returned when there are
	* no more entries for the server to return.
	*
	* @return A possibly null server-generated cookie. It is not cloned - any
	*         changes to the cookie will update the control's state and thus
	*         are not recommended.
	*/
	@:overload public function getCookie() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
