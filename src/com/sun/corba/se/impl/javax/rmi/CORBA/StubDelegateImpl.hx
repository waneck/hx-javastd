package com.sun.corba.se.impl.javax.rmi.CORBA;
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class StubDelegateImpl implements javax.rmi.CORBA.StubDelegate
{
	@:overload @:public public function getIOR() : com.sun.corba.se.impl.ior.StubIORImpl;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Returns a hash code value for the object which is the same for all stubs
	* that represent the same remote object.
	* @return the hash code value.
	*/
	@:overload @:public public function hashCode(self : javax.rmi.CORBA.Stub) : Int;
	
	/**
	* Compares two stubs for equality. Returns <code>true</code> when used to compare stubs
	* that represent the same remote object, and <code>false</code> otherwise.
	* @param obj the reference object with which to compare.
	* @return <code>true</code> if this object is the same as the <code>obj</code>
	*          argument; <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(self : javax.rmi.CORBA.Stub, obj : Dynamic) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this stub. Returns the same string
	* for all stubs that represent the same remote object.
	* @return a string representation of this stub.
	*/
	@:overload @:public public function toString(self : javax.rmi.CORBA.Stub) : String;
	
	/**
	* Connects this stub to an ORB. Required after the stub is deserialized
	* but not after it is demarshalled by an ORB stream. If an unconnected
	* stub is passed to an ORB stream for marshalling, it is implicitly
	* connected to that ORB. Application code should not call this method
	* directly, but should call the portable wrapper method
	* {@link javax.rmi.PortableRemoteObject#connect}.
	* @param orb the ORB to connect to.
	* @exception RemoteException if the stub is already connected to a different
	* ORB, or if the stub does not represent an exported remote or local object.
	*/
	@:overload @:public public function connect(self : javax.rmi.CORBA.Stub, orb : org.omg.CORBA.ORB) : Void;
	
	/**
	* Serialization method to restore the IOR state.
	*/
	@:overload @:public public function readObject(self : javax.rmi.CORBA.Stub, stream : java.io.ObjectInputStream) : Void;
	
	/**
	* Serialization method to save the IOR state.
	* @serialData The length of the IOR type ID (int), followed by the IOR type ID
	* (byte array encoded using ISO8859-1), followed by the number of IOR profiles
	* (int), followed by the IOR profiles.  Each IOR profile is written as a
	* profile tag (int), followed by the length of the profile data (int), followed
	* by the profile data (byte array).
	*/
	@:overload @:public public function writeObject(self : javax.rmi.CORBA.Stub, stream : java.io.ObjectOutputStream) : Void;
	
	
}
