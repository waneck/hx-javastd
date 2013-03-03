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
extern class SortControl extends javax.naming.ldap.BasicControl
{
	/**
	* The server-side sort control's assigned object identifier
	* is 1.2.840.113556.1.4.473.
	*/
	@:public @:static @:final public static var OID(default, null) : String;
	
	/**
	* Constructs a control to sort on a single attribute in ascending order.
	* Sorting will be performed using the ordering matching rule defined
	* for use with the specified attribute.
	*
	* @param   sortBy  An attribute ID to sort by.
	* @param   criticality     If true then the server must honor the control
	*                          and return the search results sorted as
	*                          requested or refuse to perform the search.
	*                          If false, then the server need not honor the
	*                          control.
	* @exception IOException If an error was encountered while encoding the
	*                        supplied arguments into a control.
	*/
	@:overload @:public public function new(sortBy : String, criticality : Bool) : Void;
	
	/**
	* Constructs a control to sort on a list of attributes in ascending order.
	* Sorting will be performed using the ordering matching rule defined
	* for use with each of the specified attributes.
	*
	* @param   sortBy  A non-null list of attribute IDs to sort by.
	*                  The list is in order of highest to lowest sort key
	*                  precedence.
	* @param   criticality     If true then the server must honor the control
	*                          and return the search results sorted as
	*                          requested or refuse to perform the search.
	*                          If false, then the server need not honor the
	*                          control.
	* @exception IOException If an error was encountered while encoding the
	*                        supplied arguments into a control.
	*/
	@:overload @:public public function new(sortBy : java.NativeArray<String>, criticality : Bool) : Void;
	
	/**
	* Constructs a control to sort on a list of sort keys.
	* Each sort key specifies the sort order and ordering matching rule to use.
	*
	* @param   sortBy      A non-null list of keys to sort by.
	*                      The list is in order of highest to lowest sort key
	*                      precedence.
	* @param   criticality     If true then the server must honor the control
	*                          and return the search results sorted as
	*                          requested or refuse to perform the search.
	*                          If false, then the server need not honor the
	*                          control.
	* @exception IOException If an error was encountered while encoding the
	*                        supplied arguments into a control.
	*/
	@:overload @:public public function new(sortBy : java.NativeArray<javax.naming.ldap.SortKey>, criticality : Bool) : Void;
	
	
}
