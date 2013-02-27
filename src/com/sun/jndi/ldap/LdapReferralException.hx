package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapReferralException extends javax.naming.ldap.LdapReferralException
{
	/**
	* Gets a context at which to continue processing.
	* The current environment properties are re-used.
	*/
	@:overload override public function getReferralContext() : javax.naming.Context;
	
	/**
	* Gets a context at which to continue processing.
	* The supplied environment properties are used.
	*/
	@:overload override public function getReferralContext(newProps : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.Context;
	
	/**
	* Gets a context at which to continue processing.
	* The supplied environment properties and connection controls are used.
	*/
	@:overload override public function getReferralContext(newProps : java.util.Hashtable<Dynamic, Dynamic>, connCtls : java.NativeArray<javax.naming.ldap.Control>) : javax.naming.Context;
	
	/**
	* Gets referral information.
	*/
	@:overload override public function getReferralInfo() : Dynamic;
	
	/**
	* Marks the current referral as one to be retried.
	*/
	@:overload override public function retryReferral() : Void;
	
	/**
	* Marks the current referral as one to be ignored.
	* Returns false when there are no referrals remaining to be processed.
	*/
	@:overload override public function skipReferral() : Bool;
	
	
}
