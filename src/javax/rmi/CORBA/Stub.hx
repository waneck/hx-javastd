package javax.rmi.CORBA;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Stub extends org.omg.CORBA.portable.ObjectImpl implements java.io.Serializable
{
	/**
	* Returns a hash code value for the object which is the same for all stubs
	* that represent the same remote object.
	* @return the hash code value.
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Compares two stubs for equality. Returns <code>true</code> when used to compare stubs
	* that represent the same remote object, and <code>false</code> otherwise.
	* @param obj the reference object with which to compare.
	* @return <code>true</code> if this object is the same as the <code>obj</code>
	*          argument; <code>false</code> otherwise.
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this stub. Returns the same string
	* for all stubs that represent the same remote object.
	* @return a string representation of this stub.
	*/
	@:overload override public function toString() : String;
	
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
	@:overload public function connect(orb : org.omg.CORBA.ORB) : Void;
	
	
}
