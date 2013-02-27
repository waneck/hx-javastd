package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface POAPolicyMediator
{
	/** Return the policies object that was used to create this
	* POAPolicyMediator.
	*/
	@:overload public function getPolicies() : com.sun.corba.se.impl.oa.poa.Policies;
	
	/** Return the subcontract ID to use in the IIOP profile in IORs
	* created by this POAPolicyMediator's POA.  This is initialized
	* according to the policies and the POA used to construct this
	* POAPolicyMediator in the POAPolicyMediatorFactory.
	*/
	@:overload public function getScid() : Int;
	
	/** Return the server ID to use in the IIOP profile in IORs
	* created by this POAPolicyMediator's POA.  This is initialized
	* according to the policies and the POA used to construct this
	* POAPolicyMediator in the POAPolicyMediatorFactory.
	*/
	@:overload public function getServerId() : Int;
	
	/** Get the servant to use for an invocation with the
	* given id and operation.
	* @param id the object ID for which we are requesting a servant
	* @param operation the name of the operation to be performed on
	* the servant
	* @return the resulting Servant.
	*/
	@:overload public function getInvocationServant(id : java.NativeArray<java.StdTypes.Int8>, operation : String) : Dynamic;
	
	/** Release a servant that was obtained from getInvocationServant.
	*/
	@:overload public function returnServant() : Void;
	
	/** Etherealize all servants associated with this POAPolicyMediator.
	* Does nothing if the retention policy is non-retain.
	*/
	@:overload public function etherealizeAll() : Void;
	
	/** Delete everything in the active object map.
	*/
	@:overload public function clearAOM() : Void;
	
	/** Return the servant manager.  Will throw WrongPolicy
	* if the request processing policy is not USE_SERVANT_MANAGER.
	*/
	@:overload public function getServantManager() : org.omg.PortableServer.ServantManager;
	
	/** Set the servant manager.  Will throw WrongPolicy
	* if the request processing policy is not USE_SERVANT_MANAGER.
	*/
	@:overload public function setServantManager(servantManager : org.omg.PortableServer.ServantManager) : Void;
	
	/** Return the default servant.   Will throw WrongPolicy
	* if the request processing policy is not USE_DEFAULT_SERVANT.
	*/
	@:overload public function getDefaultServant() : org.omg.PortableServer.Servant;
	
	/** Set the default servant.   Will throw WrongPolicy
	* if the request processing policy is not USE_DEFAULT_SERVANT.
	*/
	@:overload public function setDefaultServant(servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload public function activateObject(id : java.NativeArray<java.StdTypes.Int8>, servant : org.omg.PortableServer.Servant) : Void;
	
	/** Deactivate the object that is associated with the given id.
	* Returns the servant for id.
	*/
	@:overload public function deactivateObject(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	/** Allocate a new, unique system ID.  Requires the ID assignment policy
	* to be SYSTEM.
	*/
	@:overload public function newSystemId() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function servantToId(servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function idToServant(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	
}
