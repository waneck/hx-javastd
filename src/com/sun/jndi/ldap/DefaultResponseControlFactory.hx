package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class represents a factory for creating LDAPv3 response controls.
* The following response controls are supported:
* <ul>
* <li>
* Paged results, as defined in
* <a href="http://www.ietf.org/rfc/rfc2696.txt">RFC 2696</a>.
* <li>
* Server-side sorting, as defined in
* <a href="http://www.ietf.org/rfc/rfc2891.txt">RFC 2891</a>.
* <li>
* Entry change response control, as defined in
* <a href="http://www.ietf.org/internet-drafts/draft-ietf-ldapext-psearch-02.txt">draft-ietf-ldapext-psearch-02.txt</a>.
* </ul>
*
* @see javax.naming.ldap.SortResponseControl
* @see javax.naming.ldap.PagedResultsResponseControl
* @see PersistentSearchControl
* @see EntryChangeResponseControl
* @author Vincent Ryan
*/
extern class DefaultResponseControlFactory extends javax.naming.ldap.ControlFactory
{
	/**
	* Constructs a new instance of the response control factory.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates an instance of a response control class from a more
	* generic control class (BasicControl).
	*
	* @param ctl A non-null control.
	* @return    The LDAP control created or null if it cannot be created.
	*            Null indicates that another factory should be attempted.
	* @exception NamingException if this control factory encountered an
	*            error condition while attempting to create the LDAP control,
	*            and no other control factories are to be tried.
	*/
	@:overload @:public override public function getControlInstance(ctl : javax.naming.ldap.Control) : javax.naming.ldap.Control;
	
	
}
