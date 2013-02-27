package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaContactInfoListImpl implements com.sun.corba.se.spi.transport.CorbaContactInfoList
{
	/**
	* @author Harold Carr
	*/
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var LocalClientRequestDispatcher : com.sun.corba.se.spi.protocol.LocalClientRequestDispatcher;
	
	private var targetIOR : com.sun.corba.se.spi.ior.IOR;
	
	private var effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR;
	
	private var effectiveTargetIORContactInfoList : java.util.List<Dynamic>;
	
	private var primaryContactInfo : com.sun.corba.se.pept.transport.ContactInfo;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, targetIOR : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload @:synchronized public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload @:synchronized public function setTargetIOR(targetIOR : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload @:synchronized public function getTargetIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:synchronized public function setEffectiveTargetIOR(effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload @:synchronized public function getEffectiveTargetIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:synchronized public function getLocalClientRequestDispatcher() : com.sun.corba.se.spi.protocol.LocalClientRequestDispatcher;
	
	@:overload @:synchronized public function hashCode() : Int;
	
	@:overload private function createContactInfoList() : Void;
	
	@:overload private function addRemoteContactInfos(effectiveTargetIOR : com.sun.corba.se.spi.ior.IOR, effectiveTargetIORContactInfoList : java.util.List<Dynamic>) : Void;
	
	@:overload private function createContactInfo(type : String, hostname : String, port : Int) : com.sun.corba.se.pept.transport.ContactInfo;
	
	/**
	* setLocalSubcontract sets cached information that is set whenever
	* the effectiveTargetIOR changes.
	*
	* Note: this must be maintained accurately whether or not the ORB
	* allows local optimization, because ServantManagers in the POA
	* ALWAYS use local optimization ONLY (they do not have a remote case).
	*/
	@:overload private function setLocalSubcontract() : Void;
	
	
}
