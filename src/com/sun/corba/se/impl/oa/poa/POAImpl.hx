package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class POAImpl extends com.sun.corba.se.spi.oa.ObjectAdapterBase implements org.omg.PortableServer.POA
{
	private var isDestroying : java.lang.ThreadLocal<Dynamic>;
	
	@:overload public function toString() : String;
	
	/**
	* <code>create_POA</code>
	* <b>Section 3.3.8.2</b>
	*/
	@:overload public function create_POA(name : String, theManager : org.omg.PortableServer.POAManager, policies : java.NativeArray<org.omg.CORBA.Policy>) : org.omg.PortableServer.POA;
	
	/**
	* <code>find_POA</code>
	* <b>Section 3.3.8.3</b>
	*/
	@:overload public function find_POA(name : String, activate : Bool) : org.omg.PortableServer.POA;
	
	/**
	* <code>destroy</code>
	* <b>Section 3.3.8.4</b>
	*/
	@:overload public function destroy(etherealize : Bool, wait_for_completion : Bool) : Void;
	
	/**
	* <code>create_thread_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_thread_policy(value : org.omg.PortableServer.ThreadPolicyValue) : org.omg.PortableServer.ThreadPolicy;
	
	/**
	* <code>create_lifespan_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_lifespan_policy(value : org.omg.PortableServer.LifespanPolicyValue) : org.omg.PortableServer.LifespanPolicy;
	
	/**
	* <code>create_id_uniqueness_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_id_uniqueness_policy(value : org.omg.PortableServer.IdUniquenessPolicyValue) : org.omg.PortableServer.IdUniquenessPolicy;
	
	/**
	* <code>create_id_assignment_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_id_assignment_policy(value : org.omg.PortableServer.IdAssignmentPolicyValue) : org.omg.PortableServer.IdAssignmentPolicy;
	
	/**
	* <code>create_implicit_activation_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_implicit_activation_policy(value : org.omg.PortableServer.ImplicitActivationPolicyValue) : org.omg.PortableServer.ImplicitActivationPolicy;
	
	/**
	* <code>create_servant_retention_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_servant_retention_policy(value : org.omg.PortableServer.ServantRetentionPolicyValue) : org.omg.PortableServer.ServantRetentionPolicy;
	
	/**
	* <code>create_request_processing_policy</code>
	* <b>Section 3.3.8.5</b>
	*/
	@:overload public function create_request_processing_policy(value : org.omg.PortableServer.RequestProcessingPolicyValue) : org.omg.PortableServer.RequestProcessingPolicy;
	
	/**
	* <code>the_name</code>
	* <b>Section 3.3.8.6</b>
	*/
	@:overload public function the_name() : String;
	
	/**
	* <code>the_parent</code>
	* <b>Section 3.3.8.7</b>
	*/
	@:overload public function the_parent() : org.omg.PortableServer.POA;
	
	/**
	* <code>the_children</code>
	*/
	@:overload public function the_children() : java.NativeArray<org.omg.PortableServer.POA>;
	
	/**
	* <code>the_POAManager</code>
	* <b>Section 3.3.8.8</b>
	*/
	@:overload public function the_POAManager() : org.omg.PortableServer.POAManager;
	
	/**
	* <code>the_activator</code>
	* <b>Section 3.3.8.9</b>
	*/
	@:overload public function the_activator() : org.omg.PortableServer.AdapterActivator;
	
	/**
	* <code>the_activator</code>
	* <b>Section 3.3.8.9</b>
	*/
	@:overload public function the_activator(activator : org.omg.PortableServer.AdapterActivator) : Void;
	
	/**
	* <code>get_servant_manager</code>
	* <b>Section 3.3.8.10</b>
	*/
	@:overload public function get_servant_manager() : org.omg.PortableServer.ServantManager;
	
	/**
	* <code>set_servant_manager</code>
	* <b>Section 3.3.8.10</b>
	*/
	@:overload public function set_servant_manager(servantManager : org.omg.PortableServer.ServantManager) : Void;
	
	/**
	* <code>get_servant</code>
	* <b>Section 3.3.8.12</b>
	*/
	@:overload public function get_servant() : org.omg.PortableServer.Servant;
	
	/**
	* <code>set_servant</code>
	* <b>Section 3.3.8.13</b>
	*/
	@:overload public function set_servant(defaultServant : org.omg.PortableServer.Servant) : Void;
	
	/**
	* <code>activate_object</code>
	* <b>Section 3.3.8.14</b>
	*/
	@:overload public function activate_object(servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <code>activate_object_with_id</code>
	* <b>Section 3.3.8.15</b>
	*/
	@:overload public function activate_object_with_id(id : java.NativeArray<java.StdTypes.Int8>, servant : org.omg.PortableServer.Servant) : Void;
	
	/**
	* <code>deactivate_object</code>
	* <b>3.3.8.16</b>
	*/
	@:overload public function deactivate_object(id : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* <code>create_reference</code>
	* <b>3.3.8.17</b>
	*/
	@:overload public function create_reference(repId : String) : org.omg.CORBA.Object;
	
	/**
	* <code>create_reference_with_id</code>
	* <b>3.3.8.18</b>
	*/
	@:overload public function create_reference_with_id(oid : java.NativeArray<java.StdTypes.Int8>, repId : String) : org.omg.CORBA.Object;
	
	/**
	* <code>servant_to_id</code>
	* <b>3.3.8.19</b>
	*/
	@:overload public function servant_to_id(servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <code>servant_to_reference</code>
	* <b>3.3.8.20</b>
	*/
	@:overload public function servant_to_reference(servant : org.omg.PortableServer.Servant) : org.omg.CORBA.Object;
	
	/**
	* <code>reference_to_servant</code>
	* <b>3.3.8.21</b>
	*/
	@:overload public function reference_to_servant(reference : org.omg.CORBA.Object) : org.omg.PortableServer.Servant;
	
	/**
	* <code>reference_to_id</code>
	* <b>3.3.8.22</b>
	*/
	@:overload public function reference_to_id(reference : org.omg.CORBA.Object) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* <code>id_to_servant</code>
	* <b>3.3.8.23</b>
	*/
	@:overload public function id_to_servant(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	/**
	* <code>id_to_reference</code>
	* <b>3.3.8.24</b>
	*/
	@:overload public function id_to_reference(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	/**
	* <code>id</code>
	* <b>11.3.8.26 in ptc/00-08-06</b>
	*/
	@:overload public function id() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function getEffectivePolicy(type : Int) : org.omg.CORBA.Policy;
	
	@:overload override public function getManagerId() : Int;
	
	@:overload override public function getState() : java.StdTypes.Int16;
	
	@:overload override public function getInterfaces(servant : Dynamic, objectId : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	@:overload override private function getObjectCopierFactory() : com.sun.corba.se.spi.copyobject.ObjectCopierFactory;
	
	@:overload override public function enter() : Void;
	
	@:overload override public function exit() : Void;
	
	@:overload override public function getInvocationServant(info : com.sun.corba.se.spi.oa.OAInvocationInfo) : Void;
	
	@:overload override public function getLocalServant(objectId : java.NativeArray<java.StdTypes.Int8>) : org.omg.CORBA.Object;
	
	/** Called from the subcontract to let this POA cleanup after an
	*  invocation. Note: If getServant was called, then returnServant
	*  MUST be called, even in the case of exceptions.  This may be
	*  called multiple times for a single request.
	*/
	@:overload override public function returnServant() : Void;
	
	
}
@:native('com$sun$corba$se$impl$oa$poa$POAImpl$DestroyThread') @:internal extern class POAImpl_DestroyThread extends java.lang.Thread
{
	@:overload public function new(etherealize : Bool, debug : Bool) : Void;
	
	@:overload public function doIt(thePoa : POAImpl, wait : Bool) : Void;
	
	@:overload override public function run() : Void;
	
	@:overload public function performDestroy(poa : POAImpl, destroyedPOATemplates : java.util.Set<Dynamic>) : Void;
	
	
}
