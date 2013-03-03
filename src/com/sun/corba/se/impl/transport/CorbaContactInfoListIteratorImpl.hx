package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaContactInfoListIteratorImpl implements com.sun.corba.se.spi.transport.CorbaContactInfoListIterator
{
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:protected private var contactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList;
	
	@:protected private var successContactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	@:protected private var failureContactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	@:protected private var failureException : java.lang.RuntimeException;
	
	@:protected private var effectiveTargetIORIterator : java.util.Iterator<Dynamic>;
	
	@:protected private var previousContactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	@:protected private var isAddrDispositionRetry : Bool;
	
	@:protected private var primaryToContactInfo : com.sun.corba.se.spi.transport.IIOPPrimaryToContactInfo;
	
	@:protected private var primaryContactInfo : com.sun.corba.se.pept.transport.ContactInfo;
	
	@:protected private var listOfContactInfos : java.util.List<Dynamic>;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, corbaContactInfoList : com.sun.corba.se.spi.transport.CorbaContactInfoList, primaryContactInfo : com.sun.corba.se.pept.transport.ContactInfo, listOfContactInfos : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function getContactInfoList() : com.sun.corba.se.pept.transport.ContactInfoList;
	
	@:overload @:public public function reportSuccess(contactInfo : com.sun.corba.se.pept.transport.ContactInfo) : Void;
	
	@:overload @:public public function reportException(contactInfo : com.sun.corba.se.pept.transport.ContactInfo, ex : java.lang.RuntimeException) : Bool;
	
	@:overload @:public public function getFailureException() : java.lang.RuntimeException;
	
	@:overload @:public public function reportAddrDispositionRetry(contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo, disposition : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function reportRedirect(contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo, forwardedIOR : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload @:public public function updateEffectiveTargetIOR(newIOR : com.sun.corba.se.spi.ior.IOR) : Void;
	
	
}
