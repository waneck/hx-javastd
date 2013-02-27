package javax.rmi.CORBA;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface UtilDelegate
{
	/**
	* Delegation call for {@link Util#mapSystemException}.
	*/
	@:overload public function mapSystemException(ex : org.omg.CORBA.SystemException) : java.rmi.RemoteException;
	
	/**
	* Delegation call for {@link Util#writeAny}.
	*/
	@:overload public function writeAny(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Delegation call for {@link Util#readAny}.
	*/
	@:overload public function readAny(_in : org.omg.CORBA.portable.InputStream) : Dynamic;
	
	/**
	* Delegation call for {@link Util#writeRemoteObject}.
	*/
	@:overload public function writeRemoteObject(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Delegation call for {@link Util#writeAbstractObject}.
	*/
	@:overload public function writeAbstractObject(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Delegation call for {@link Util#registerTarget}.
	*/
	@:overload public function registerTarget(tie : javax.rmi.CORBA.Tie, target : java.rmi.Remote) : Void;
	
	/**
	* Delegation call for {@link Util#unexportObject}.
	*/
	@:overload public function unexportObject(target : java.rmi.Remote) : Void;
	
	/**
	* Delegation call for {@link Util#getTie}.
	*/
	@:overload public function getTie(target : java.rmi.Remote) : javax.rmi.CORBA.Tie;
	
	/**
	* Delegation call for {@link Util#createValueHandler}.
	*/
	@:overload public function createValueHandler() : javax.rmi.CORBA.ValueHandler;
	
	/**
	* Delegation call for {@link Util#getCodebase}.
	*/
	@:overload public function getCodebase(clz : Class<Dynamic>) : String;
	
	/**
	* Delegation call for {@link Util#loadClass}.
	*/
	@:overload public function loadClass(className : String, remoteCodebase : String, loader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Delegation call for {@link Util#isLocal}.
	*/
	@:overload public function isLocal(stub : javax.rmi.CORBA.Stub) : Bool;
	
	/**
	* Delegation call for {@link Util#wrapException}.
	*/
	@:overload public function wrapException(obj : java.lang.Throwable) : java.rmi.RemoteException;
	
	/**
	* Delegation call for {@link Util#copyObject}.
	*/
	@:overload public function copyObject(obj : Dynamic, orb : org.omg.CORBA.ORB) : Dynamic;
	
	/**
	* Delegation call for {@link Util#copyObjects}.
	*/
	@:overload public function copyObjects(obj : java.NativeArray<Dynamic>, orb : org.omg.CORBA.ORB) : java.NativeArray<Dynamic>;
	
	
}
