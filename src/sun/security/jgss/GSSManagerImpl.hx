package sun.security.jgss;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GSSManagerImpl extends org.ietf.jgss.GSSManager
{
	@:overload public function new(caller : sun.security.jgss.GSSCaller, useNative : Bool) : Void;
	
	@:overload public function new(caller : sun.security.jgss.GSSCaller) : Void;
	
	@:overload public function new() : Void;
	
	@:overload override public function getMechs() : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload override public function getNamesForMech(mech : org.ietf.jgss.Oid) : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload override public function getMechsForName(nameType : org.ietf.jgss.Oid) : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload override public function createName(nameStr : String, nameType : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	@:overload override public function createName(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	@:overload override public function createName(nameStr : String, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	@:overload override public function createName(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : org.ietf.jgss.GSSName;
	
	@:overload override public function createCredential(usage : Int) : org.ietf.jgss.GSSCredential;
	
	@:overload override public function createCredential(aName : org.ietf.jgss.GSSName, lifetime : Int, mech : org.ietf.jgss.Oid, usage : Int) : org.ietf.jgss.GSSCredential;
	
	@:overload override public function createCredential(aName : org.ietf.jgss.GSSName, lifetime : Int, mechs : java.NativeArray<org.ietf.jgss.Oid>, usage : Int) : org.ietf.jgss.GSSCredential;
	
	@:overload override public function createContext(peer : org.ietf.jgss.GSSName, mech : org.ietf.jgss.Oid, myCred : org.ietf.jgss.GSSCredential, lifetime : Int) : org.ietf.jgss.GSSContext;
	
	@:overload override public function createContext(myCred : org.ietf.jgss.GSSCredential) : org.ietf.jgss.GSSContext;
	
	@:overload override public function createContext(interProcessToken : java.NativeArray<java.StdTypes.Int8>) : org.ietf.jgss.GSSContext;
	
	@:overload override public function addProviderAtFront(p : java.security.Provider, mech : org.ietf.jgss.Oid) : Void;
	
	@:overload override public function addProviderAtEnd(p : java.security.Provider, mech : org.ietf.jgss.Oid) : Void;
	
	@:overload public function getCredentialElement(name : sun.security.jgss.spi.GSSNameSpi, initLifetime : Int, acceptLifetime : Int, mech : org.ietf.jgss.Oid, usage : Int) : sun.security.jgss.spi.GSSCredentialSpi;
	
	@:overload public function getNameElement(name : String, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload public function getNameElement(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid, mech : org.ietf.jgss.Oid) : sun.security.jgss.spi.GSSNameSpi;
	
	
}
