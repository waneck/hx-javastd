package org.omg.PortableServer.portable;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface Delegate
{
	/**
	* Convenience method that returns the instance of the ORB
	* currently associated with the Servant.
	* @param Self the servant.
	* @return ORB associated with the Servant.
	*/
	@:overload public function orb(Self : org.omg.PortableServer.Servant) : org.omg.CORBA.ORB;
	
	/**
	* This allows the servant to obtain the object reference for
	* the target CORBA Object it is incarnating for that request.
	* @param Self the servant.
	* @return Object reference associated with the request.
	*/
	@:overload public function this_object(Self : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	/**
	* The method _poa() is equivalent to
	* calling PortableServer::Current:get_POA.
	* @param Self the servant.
	* @return POA associated with the servant.
	*/
	@:overload public function poa(Self : org.omg.PortableServer.Servant) : org.omg.PortableServer.POA;
	
	/**
	* The method _object_id() is equivalent
	* to calling PortableServer::Current::get_object_id.
	* @param Self the servant.
	* @return ObjectId associated with this servant.
	*/
	@:overload public function object_id(Self : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The default behavior of this function is to return the
	* root POA from the ORB instance associated with the servant.
	* @param Self the servant.
	* @return POA associated with the servant class.
	*/
	@:overload public function default_POA(Self : org.omg.PortableServer.Servant) : org.omg.PortableServer.POA;
	
	/**
	* This method checks to see if the specified repid is present
	* on the list returned by _all_interfaces() or is the
	* repository id for the generic CORBA Object.
	* @param Self the servant.
	* @param Repository_Id the repository_id to be checked in the
	*            repository list or against the id of generic CORBA
	*            object.
	* @return boolean indicating whether the specified repid is
	*         in the list or is same as that got generic CORBA
	*         object.
	*/
	@:overload public function is_a(Self : org.omg.PortableServer.Servant, Repository_Id : String) : Bool;
	
	/**
	* This operation is used to check for the existence of the
	* Object.
	* @param Self the servant.
	* @return boolean true to indicate that object does not exist,
	*                 and false otherwise.
	*/
	@:overload public function non_existent(Self : org.omg.PortableServer.Servant) : Bool;
	
	/**
	* This operation returns an object in the Interface Repository
	* which provides type information that may be useful to a program.
	* @param self the servant.
	* @return type information corresponding to the object.
	*/
	@:overload public function get_interface_def(self : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	
}
