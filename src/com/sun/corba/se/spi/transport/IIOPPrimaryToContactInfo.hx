package com.sun.corba.se.spi.transport;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface IIOPPrimaryToContactInfo
{
	/**
	* @param primary - clear any state relating to primary.
	*/
	@:overload @:public public function reset(primary : com.sun.corba.se.pept.transport.ContactInfo) : Void;
	
	/**
	* @param primary - the key.
	* @param previous - if null return true.  Otherwise, find previous in
	* <code>contactInfos</code> and if another <code>ContactInfo</code>
	* follows it in the list then return true.  Otherwise false.
	* @param contactInfos - the list of replicas associated with the
	* primary.
	*/
	@:overload @:public public function hasNext(primary : com.sun.corba.se.pept.transport.ContactInfo, previous : com.sun.corba.se.pept.transport.ContactInfo, contactInfos : java.util.List<Dynamic>) : Bool;
	
	/**
	* @param primary - the key.
	* @param previous - if null then map primary to failover.  If failover is
	* empty then map primary to primary and return primary.  If failover is
	* non-empty then return failover.  If previous is non-null that
	* indicates that the previous failed.  Therefore, find previous in
	* contactInfos.  Map the <code>ContactInfo</code> following
	* previous to primary and return that <code>ContactInfo</code>.
	*/
	@:overload @:public public function next(primary : com.sun.corba.se.pept.transport.ContactInfo, previous : com.sun.corba.se.pept.transport.ContactInfo, contactInfos : java.util.List<Dynamic>) : com.sun.corba.se.pept.transport.ContactInfo;
	
	
}
