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
@:internal extern class LdapNamingEnumeration implements javax.naming.NamingEnumeration<Dynamic> implements com.sun.jndi.ldap.ReferralEnumeration
{
	/**
	* Basic enumeration for NameClassPair, Binding, and SearchResults.
	*/
	private var listArg : javax.naming.Name;
	
	private var homeCtx : com.sun.jndi.ldap.LdapCtx;
	
	@:overload public function nextElement() : Dynamic;
	
	@:overload public function hasMoreElements() : Bool;
	
	/*
	* Test if unprocessed entries or referrals exist.
	*/
	@:overload public function hasMore() : Bool;
	
	/*
	* Retrieve the next entry.
	*/
	@:overload public function next() : Dynamic;
	
	@:overload private function getAtom(dn : String) : String;
	
	@:overload private function createItem(dn : String, attrs : javax.naming.directory.Attributes, respCtls : java.util.Vector<Dynamic>) : javax.naming.NameClassPair;
	
	/*
	* Append the supplied (chain of) referrals onto the
	* end of the current (chain of) referrals.
	*/
	@:overload public function appendUnprocessedReferrals(ex : com.sun.jndi.ldap.LdapReferralException) : Void;
	
	@:overload private function getReferredResults(refCtx : com.sun.jndi.ldap.LdapReferralContext) : com.sun.jndi.ldap.LdapNamingEnumeration;
	
	/*
	* Iterate through the URLs of a referral. If successful then perform
	* a search operation and merge the received results with the current
	* results.
	*/
	@:overload private function hasMoreReferrals() : Bool;
	
	/*
	* Merge the entries and/or referrals from the supplied enumeration
	* with those of the current enumeration.
	*/
	@:overload private function update(ne : com.sun.jndi.ldap.LdapNamingEnumeration) : Void;
	
	@:overload private function finalize() : Void;
	
	@:overload private function cleanup() : Void;
	
	@:overload public function close() : Void;
	
	
}
