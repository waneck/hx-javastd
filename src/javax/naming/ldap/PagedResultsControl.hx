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
extern class PagedResultsControl extends javax.naming.ldap.BasicControl
{
	/**
	* The paged-results control's assigned object identifier
	* is 1.2.840.113556.1.4.319.
	*/
	public static var OID(default, null) : String;
	
	/**
	* Constructs a control to set the number of entries to be returned per
	* page of results.
	*
	* @param   pageSize        The number of entries to return in a page.
	* @param   criticality     If true then the server must honor the control
	*                          and return search results as indicated by
	*                          pageSize or refuse to perform the search.
	*                          If false, then the server need not honor the
	*                          control.
	* @exception IOException   If an error was encountered while encoding the
	*                          supplied arguments into a control.
	*/
	@:overload public function new(pageSize : Int, criticality : Bool) : Void;
	
	/**
	* Constructs a control to set the number of entries to be returned per
	* page of results. The cookie is provided by the server and may be
	* obtained from the paged-results response control.
	* <p>
	* A sequence of paged-results can be abandoned by setting the pageSize
	* to zero and setting the cookie to the last cookie received from the
	* server.
	*
	* @param   pageSize        The number of entries to return in a page.
	* @param   cookie          A possibly null server-generated cookie.
	* @param   criticality     If true then the server must honor the control
	*                          and return search results as indicated by
	*                          pageSize or refuse to perform the search.
	*                          If false, then the server need not honor the
	*                          control.
	* @exception IOException   If an error was encountered while encoding the
	*                          supplied arguments into a control.
	*/
	@:overload public function new(pageSize : Int, cookie : java.NativeArray<java.StdTypes.Int8>, criticality : Bool) : Void;
	
	
}
