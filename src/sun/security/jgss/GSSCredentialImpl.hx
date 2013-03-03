package sun.security.jgss;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GSSCredentialImpl implements org.ietf.jgss.GSSCredential
{
	@:overload @:public public function new(gssManager : sun.security.jgss.GSSManagerImpl, mechElement : sun.security.jgss.spi.GSSCredentialSpi) : Void;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function getName() : org.ietf.jgss.GSSName;
	
	@:overload @:public public function getName(mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	/**
	* Returns the remaining lifetime of this credential. The remaining
	* lifetime is defined as the minimum lifetime, either for initiate or
	* for accept, across all elements contained in it. Not terribly
	* useful, but required by GSS-API.
	*/
	@:overload @:public public function getRemainingLifetime() : Int;
	
	@:overload @:public public function getRemainingInitLifetime(mech : org.ietf.jgss.Oid) : Int;
	
	@:overload @:public public function getRemainingAcceptLifetime(mech : org.ietf.jgss.Oid) : Int;
	
	/**
	* Returns the usage mode for this credential. Returns
	* INITIATE_AND_ACCEPT if any one element contained in it supports
	* INITIATE_AND_ACCEPT or if two different elements exist where one
	* support INITIATE_ONLY and the other supports ACCEPT_ONLY.
	*/
	@:overload @:public public function getUsage() : Int;
	
	@:overload @:public public function getUsage(mech : org.ietf.jgss.Oid) : Int;
	
	@:overload @:public public function getMechs() : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload @:public public function add(name : org.ietf.jgss.GSSName, initLifetime : Int, acceptLifetime : Int, mech : org.ietf.jgss.Oid, usage : Int) : Void;
	
	@:overload @:public public function equals(another : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this GSSCredential.
	*
	* @return a hashCode value
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the specified mechanism's credential-element.
	*
	* @param mechOid - the oid for mechanism to retrieve
	* @param throwExcep - boolean indicating if the function is
	*    to throw exception or return null when element is not
	*    found.
	* @return mechanism credential object
	* @exception GSSException of invalid mechanism
	*/
	@:overload @:public public function getElement(mechOid : org.ietf.jgss.Oid, initiate : Bool) : sun.security.jgss.spi.GSSCredentialSpi;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$security$jgss$GSSCredentialImpl$SearchKey') @:internal extern class GSSCredentialImpl_SearchKey
{
	@:overload @:public public function new(mechOid : org.ietf.jgss.Oid, usage : Int) : Void;
	
	@:overload @:public public function getMech() : org.ietf.jgss.Oid;
	
	@:overload @:public public function getUsage() : Int;
	
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
