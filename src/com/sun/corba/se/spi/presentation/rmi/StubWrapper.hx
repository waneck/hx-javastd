package com.sun.corba.se.spi.presentation.rmi;
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
extern class StubWrapper implements com.sun.corba.se.spi.presentation.rmi.DynamicStub
{
	@:overload public function new(object : org.omg.CORBA.Object) : Void;
	
	@:overload public function setDelegate(delegate : org.omg.CORBA.portable.Delegate) : Void;
	
	@:overload public function getDelegate() : org.omg.CORBA.portable.Delegate;
	
	@:overload public function getORB() : org.omg.CORBA.ORB;
	
	@:overload public function getTypeIds() : java.NativeArray<String>;
	
	@:overload public function connect(orb : org.omg.CORBA.ORB) : Void;
	
	@:overload public function isLocal() : Bool;
	
	@:overload public function request(operation : String, responseExpected : Bool) : org.omg.CORBA.portable.OutputStream;
	
	@:overload public function _is_a(repositoryIdentifier : String) : Bool;
	
	@:overload public function _is_equivalent(other : org.omg.CORBA.Object) : Bool;
	
	@:overload public function _non_existent() : Bool;
	
	@:overload public function _hash(maximum : Int) : Int;
	
	@:overload public function _duplicate() : org.omg.CORBA.Object;
	
	@:overload public function _release() : Void;
	
	@:overload public function _get_interface_def() : org.omg.CORBA.Object;
	
	@:overload public function _request(operation : String) : org.omg.CORBA.Request;
	
	@:overload public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	@:overload public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	@:overload public function _get_policy(policy_type : Int) : org.omg.CORBA.Policy;
	
	@:overload public function _get_domain_managers() : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	@:overload public function _set_policy_override(policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : org.omg.CORBA.Object;
	
	
}
