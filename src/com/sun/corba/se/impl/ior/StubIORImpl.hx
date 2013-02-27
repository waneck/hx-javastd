package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class StubIORImpl
{
	@:overload public function new() : Void;
	
	@:overload public function getRepositoryId() : String;
	
	@:overload public function new(obj : org.omg.CORBA.Object) : Void;
	
	@:overload public function getDelegate(orb : org.omg.CORBA.ORB) : org.omg.CORBA.portable.Delegate;
	
	@:overload public function doRead(stream : java.io.ObjectInputStream) : Void;
	
	@:overload public function doWrite(stream : java.io.ObjectOutputStream) : Void;
	
	/**
	* Returns a hash code value for the object which is the same for all stubs
	* that represent the same remote object.
	* @return the hash code value.
	*/
	@:overload @:synchronized public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this stub. Returns the same string
	* for all stubs that represent the same remote object.
	* "SimpleIORImpl[<typeName>,[<profileID>]data, ...]"
	* @return a string representation of this stub.
	*/
	@:overload public function toString() : String;
	
	
}
