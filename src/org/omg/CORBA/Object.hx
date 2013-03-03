package org.omg.CORBA;
/*
* Copyright (c) 1995, 1999, Oracle and/or its affiliates. All rights reserved.
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
/**
* The definition for a CORBA object reference.
* <p>
* A CORBA object reference is a handle for a particular
* CORBA object implemented by a server. A CORBA object reference
* identifies the same CORBA object each time the reference is used to invoke
* a method on the object.
* A CORBA object may have multiple, distinct object references.
* <p>
* The <code>org.omg.CORBA.Object</code> interface is the root of
* the inheritance hierarchy for all CORBA object references in the Java
* programming language, analogous to <code>java.rmi.Remote</code>
* for RMI remote objects.
* <p>
* A CORBA object may be either local or remote.
* If it is a local object (that is, running in the same
* VM as the client), invocations may be directly serviced by
* the object instance, and the object reference could point to the actual
* instance of the object implementation class.
* If a CORBA object is a remote object (that is, running in a different
* VM from the client), the object reference points to a stub (proxy) which uses the
* ORB machinery to make a remote invocation on the server where the object
* implementation resides.
* <p>
* Default implementations of the methods in the interface
* <code>org.omg.CORBA.Object</code>
* are provided in the class <code>org.omg.CORBA.portable.ObjectImpl</code>,
* which is the base class for stubs and object implementations.
* <p>
* @see org.omg.CORBA.portable.ObjectImpl
*/
extern interface Object
{
	/**
	* Checks whether this object is an instance of a class that
	* implements the given interface.
	*
	* @param repositoryIdentifier the interface to check against
	* @return <code>true</code> if this object reference is an instance
	*         of a class that implements the interface;
	*         <code>false</code> otherwise
	*/
	@:overload @:public @:public @:public public function _is_a(repositoryIdentifier : String) : Bool;
	
	/**
	* Determines whether the two object references are equivalent,
	* so far as the ORB can easily determine. Two object references are equivalent
	* if they are identical. Two distinct object references which in fact refer to
	* the same object are also equivalent. However, ORBs are not required
	* to attempt determination of whether two distinct object references
	* refer to the same object, since such determination could be impractically
	* expensive.
	* @param other the other object reference with which to check for equivalence
	* @return <code>true</code> if this object reference is known to be
	*         equivalent to the given object reference.
	*         Note that <code>false</code> indicates only that the two
	*         object references are distinct, not necessarily that
	*         they reference distinct objects.
	*/
	@:overload @:public @:public @:public public function _is_equivalent(other : org.omg.CORBA.Object) : Bool;
	
	/**
	* Determines whether the server object for this object reference has been
	* destroyed.
	* @return <code>true</code> if the ORB knows authoritatively that the
	*         server object does not exist; <code>false</code> otherwise
	*/
	@:overload @:public @:public @:public public function _non_existent() : Bool;
	
	/**
	* Returns an ORB-internal identifier for this object reference.
	* This is a hash identifier, which does
	* not change during the lifetime of the object reference, and so
	* neither will any hash function of that identifier change. The value returned
	* is not guaranteed to be unique; in other words, another object
	* reference may have the same hash value.
	* If two object references hash differently,
	* then they are distinct object references; however, both may still refer
	* to the same CORBA object.
	*
	* @param maximum the upper bound on the hash value returned by the ORB
	* @return the ORB-internal hash identifier for this object reference
	*/
	@:overload @:public @:public @:public public function _hash(maximum : Int) : Int;
	
	/**
	* Returns a duplicate of this CORBA object reference.
	* The server object implementation is not involved in creating
	* the duplicate, and the implementation cannot distinguish whether
	* the original object reference or a duplicate was used to make a request.
	* <P>
	* Note that this method is not very useful in the Java platform,
	* since memory management is handled by the VM.
	* It is included for compliance with the CORBA APIs.
	* <P>
	* The method <code>_duplicate</code> may return this object reference itself.
	*
	* @return a duplicate of this object reference or this object reference
	*         itself
	*/
	@:overload @:public @:public @:public public function _duplicate() : org.omg.CORBA.Object;
	
	/**
	* Signals that the caller is done using this object reference, so
	* internal ORB resources associated with this object reference can be
	* released. Note that the object implementation is not involved in
	* this operation, and other references to the same object are not affected.
	*/
	@:overload @:public @:public @:public public function _release() : Void;
	
	/**
	* Obtains an <code>InterfaceDef</code> for the object implementation
	* referenced by this object reference.
	* The <code>InterfaceDef</code> object
	* may be used to introspect on the methods, attributes, and other
	* type information for the object referred to by this object reference.
	*
	* @return the <code>InterfaceDef</code> object in the Interface Repository
	*         which provides type information about the object referred to by
	*         this object reference
	*/
	@:overload @:public @:public @:public public function _get_interface_def() : org.omg.CORBA.Object;
	
	/**
	* Creates a <code>Request</code> instance for use in the
	* Dynamic Invocation Interface.
	*
	* @param operation  the name of the method to be invoked using the
	*                        <code>Request</code> instance
	* @return the newly-created <code>Request</code> instance
	*/
	@:overload @:public @:public @:public public function _request(operation : String) : org.omg.CORBA.Request;
	
	/**
	* Creates a <code>Request</code> instance initialized with the
	* given context, method name, list of arguments, and container
	* for the method's return value.
	*
	* @param ctx                       a <code>Context</code> object containing
	*                     a list of properties
	* @param operation    the name of the method to be invoked
	* @param arg_list          an <code>NVList</code> containing the actual arguments
	*                     to the method being invoked
	* @param result            a <code>NamedValue</code> object to serve as a
	*                     container for the method's return value
	* @return                  the newly-created <code>Request</code> object
	*
	* @see Request
	* @see NVList
	* @see NamedValue
	*/
	@:overload @:public @:public @:public public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	/**
	* Creates a <code>Request</code> instance initialized with the
	* given context, method name, list of arguments, container
	* for the method's return value, list of possible exceptions,
	* and list of context strings needing to be resolved.
	*
	* @param ctx                       a <code>Context</code> object containing
	*                     a list of properties
	* @param operation    the name of the method to be invoked
	* @param arg_list          an <code>NVList</code> containing the actual arguments
	*                     to the method being invoked
	* @param result            a <code>NamedValue</code> object to serve as a
	*                     container for the method's return value
	* @param exclist           an <code>ExceptionList</code> object containing a
	*                     list of possible exceptions the method can throw
	* @param ctxlist           a <code>ContextList</code> object containing a list of
	*                     context strings that need to be resolved and sent with the
	*                          <code>Request</code> instance
	* @return                  the newly-created <code>Request</code> object
	*
	* @see Request
	* @see NVList
	* @see NamedValue
	* @see ExceptionList
	* @see ContextList
	*/
	@:overload @:public @:public @:public public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	/**
	* Returns the <code>Policy</code> object of the specified type
	* which applies to this object.
	*
	* @param policy_type the type of policy to be obtained
	* @return A <code>Policy</code> object of the type specified by
	*         the policy_type parameter
	* @exception org.omg.CORBA.BAD_PARAM when the value of policy type
	* is not valid either because the specified type is not supported by this
	* ORB or because a policy object of that type is not associated with this
	* Object
	*/
	@:overload @:public @:public @:public public function _get_policy(policy_type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Retrieves the <code>DomainManagers</code> of this object.
	* This allows administration services (and applications) to retrieve the
	* domain managers, and hence the security and other policies applicable
	* to individual objects that are members of the domain.
	*
	* @return the list of immediately enclosing domain managers of this object.
	*  At least one domain manager is always returned in the list since by
	* default each object is associated with at least one domain manager at
	* creation.
	*/
	@:overload @:public @:public @:public public function _get_domain_managers() : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	/**
	* Returns a new <code>Object</code> with the given policies
	* either replacing any existing policies in this
	* <code>Object</code> or with the given policies added
	* to the existing ones, depending on the value of the
	* given <code>SetOverrideType</code> object.
	*
	* @param policies an array of <code>Policy</code> objects containing
	*                 the policies to be added or to be used as replacements
	* @param set_add either <code>SetOverrideType.SET_OVERRIDE</code>, indicating
	*                that the given policies will replace any existing ones, or
	*                <code>SetOverrideType.ADD_OVERRIDE</code>, indicating that
	*                the given policies should be added to any existing ones
	* @return a new <code>Object</code> with the given policies replacing
	*         or added to those in this <code>Object</code>
	*/
	@:overload @:public @:public @:public public function _set_policy_override(policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : org.omg.CORBA.Object;
	
	
}
