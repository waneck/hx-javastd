package com.sun.security.auth;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
* <p> This class extends <code>NTSid</code>
* and represents a Windows NT user's primary group SID.
*
* <p> Principals such as this <code>NTSidPrimaryGroupPrincipal</code>
* may be associated with a particular <code>Subject</code>
* to augment that <code>Subject</code> with an additional
* identity.  Refer to the <code>Subject</code> class for more information
* on how to achieve this.  Authorization decisions can then be based upon
* the Principals associated with a <code>Subject</code>.
*
* @see java.security.Principal
* @see javax.security.auth.Subject
*/
extern class NTSidPrimaryGroupPrincipal extends com.sun.security.auth.NTSid
{
	/**
	* Create an <code>NTSidPrimaryGroupPrincipal</code> with a Windows NT
	* group SID.
	*
	* <p>
	*
	* @param name the primary Windows NT group SID for this user. <p>
	*
	* @exception NullPointerException if the <code>name</code>
	*            is <code>null</code>.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Return a string representation of this
	* <code>NTSidPrimaryGroupPrincipal</code>.
	*
	* <p>
	*
	* @return a string representation of this
	*          <code>NTSidPrimaryGroupPrincipal</code>.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Compares the specified Object with this
	* <code>NTSidPrimaryGroupPrincipal</code>
	* for equality.  Returns true if the given object is also a
	* <code>NTSidPrimaryGroupPrincipal</code> and the two
	* NTSidPrimaryGroupPrincipals have the same SID.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	*          <code>NTSidPrimaryGroupPrincipal</code>.
	*
	* @return true if the specified Object is equal equal to this
	*          <code>NTSidPrimaryGroupPrincipal</code>.
	*/
	@:overload @:public override public function equals(o : Dynamic) : Bool;
	
	
}
