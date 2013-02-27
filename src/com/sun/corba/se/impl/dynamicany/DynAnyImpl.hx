package com.sun.corba.se.impl.dynamicany;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DynAnyImpl extends org.omg.CORBA.LocalObject implements org.omg.DynamicAny.DynAny
{
	private static var NO_INDEX(default, null) : Int;
	
	private static var STATUS_DESTROYABLE(default, null) : java.StdTypes.Int8;
	
	private static var STATUS_UNDESTROYABLE(default, null) : java.StdTypes.Int8;
	
	private static var STATUS_DESTROYED(default, null) : java.StdTypes.Int8;
	
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	private var any : org.omg.CORBA.Any;
	
	private var status : java.StdTypes.Int8;
	
	private var index : Int;
	
	@:overload private function new() : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, any : org.omg.CORBA.Any, copyValue : Bool) : Void;
	
	@:overload private function new(orb : com.sun.corba.se.spi.orb.ORB, typeCode : org.omg.CORBA.TypeCode) : Void;
	
	@:overload private function factory() : org.omg.DynamicAny.DynAnyFactory;
	
	@:overload private function getAny() : org.omg.CORBA.Any;
	
	@:overload private function getAny(dynAny : org.omg.DynamicAny.DynAny) : org.omg.CORBA.Any;
	
	@:overload private function writeAny(out : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload private function setStatus(newStatus : java.StdTypes.Int8) : Void;
	
	@:overload private function clearData() : Void;
	
	@:overload public function type() : org.omg.CORBA.TypeCode;
	
	@:overload public function assign(dyn_any : org.omg.DynamicAny.DynAny) : Void;
	
	@:overload public function from_any(value : org.omg.CORBA.Any) : Void;
	
	@:overload @:abstract public function to_any() : org.omg.CORBA.Any;
	
	@:overload @:abstract public function equal(dyn_any : org.omg.DynamicAny.DynAny) : Bool;
	
	@:overload @:abstract public function destroy() : Void;
	
	@:overload @:abstract public function copy() : org.omg.DynamicAny.DynAny;
	
	@:overload public function _ids() : java.NativeArray<String>;
	
	/**
	* Inserts a double value into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_double(value : Float) : Void;
	
	/**
	* Inserts a TypeCode object into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_typecode(value : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Extracts the integer value from this DynAny. The IDL long data type is mapped to the Java int data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_long() : Int;
	
	/**
	* Inserts the Any value contained in the parameter DynAny into the Any represented by this DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_dyn_any(value : org.omg.DynamicAny.DynAny) : Void;
	
	/**
	* Inserts a byte value into the DynAny. The IDL octet data type is mapped to the Java byte data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_octet(value : java.StdTypes.Int8) : Void;
	
	/**
	* Creates a <code>Request</code> instance for use in the
	* Dynamic Invocation Interface.
	*
	* @param operation  the name of the method to be invoked using the
	*                        <code>Request</code> instance
	* @return the newly-created <code>Request</code> instance
	*/
	@:overload override public function _request(operation : String) : org.omg.CORBA.Request;
	
	/**
	* Inserts an integer value into the DynAny. The IDL ulong data type is mapped to the Java int data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_ulong(value : Int) : Void;
	
	/**
	* Inserts a string value into the DynAny.
	* Both bounded and unbounded strings are inserted using this method.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception InvalidValue if the string inserted is longer than the bound of a bounded string
	*/
	@:overload override public function insert_wstring(value : String) : Void;
	
	/**
	* Returns the number of components of a DynAny.
	* For a DynAny without components, it returns zero.
	* The operation only counts the components at the top level.
	* For example, if component_count is invoked on a DynStruct with a single member,
	* the return value is 1, irrespective of the type of the member.
	* <UL>
	* <LI>For sequences, the operation returns the current number of elements.
	* <LI>For structures, exceptions, and value types, the operation returns the number of members.
	* <LI>For arrays, the operation returns the number of elements.
	* <LI>For unions, the operation returns 2 if the discriminator indicates that a named member is active,
	* otherwise, it returns 1.
	* <LI>For DynFixed and DynEnum, the operation returns zero.
	* </UL>
	*/
	@:overload override public function component_count() : Int;
	
	/**
	* Inserts a long value into the DynAny.
	* The IDL unsigned long long data type is mapped to the Java long data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_ulonglong(value : haxe.Int64) : Void;
	
	/**
	* Extracts the boolean value from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_boolean() : Bool;
	
	/**
	* Extracts a Serializable object from this DynAny.
	* The IDL ValueBase type is mapped to the Java Serializable type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_val() : java.io.Serializable;
	
	/**
	* Inserts a short value into the DynAny. The IDL ushort data type is mapped to the Java short data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_ushort(value : java.StdTypes.Int16) : Void;
	
	/**
	* Returns the DynAny for the component at the current position.
	* It does not advance the current position, so repeated calls to current_component
	* without an intervening call to rewind, next, or seek return the same component.
	* The returned DynAny object reference can be used to get/set the value of the current component.
	* If the current component represents a complex type, the returned reference can be narrowed
	* based on the TypeCode to get the interface corresponding to the to the complex type.
	* Calling current_component on a DynAny that cannot have components,
	* such as a DynEnum or an empty exception, raises TypeMismatch.
	* Calling current_component on a DynAny whose current position is -1 returns a nil reference.
	* The iteration operations, together with current_component, can be used
	* to dynamically compose an any value. After creating a dynamic any, such as a DynStruct,
	* current_component and next can be used to initialize all the components of the value.
	* Once the dynamic value is completely initialized, to_any creates the corresponding any value.
	*
	* @exception TypeMismatch If called on a DynAny that cannot have components,
	* such as a DynEnum or an empty exception
	*/
	@:overload override public function current_component() : org.omg.DynamicAny.DynAny;
	
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
	@:overload override public function _get_policy(policy_type : Int) : org.omg.CORBA.Policy;
	
	/**
	* Inserts a short value into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_short(value : java.StdTypes.Int16) : Void;
	
	/**
	* Signals that the caller is done using this object reference, so
	* internal ORB resources associated with this object reference can be
	* released. Note that the object implementation is not involved in
	* this operation, and other references to the same object are not affected.
	*/
	@:overload override public function _release() : Void;
	
	/**
	* Extracts the string value from this DynAny.
	* Both bounded and unbounded strings are extracted using this method.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_string() : String;
	
	/**
	* Extracts the float value from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_float() : Single;
	
	/**
	* Is equivalent to seek(0).
	*/
	@:overload override public function rewind() : Void;
	
	/**
	* Sets the current position to index. The current position is indexed 0 to n-1, that is,
	* index zero corresponds to the first component. The operation returns true if the resulting
	* current position indicates a component of the DynAny and false if index indicates
	* a position that does not correspond to a component.
	* Calling seek with a negative index is legal. It sets the current position to -1 to indicate
	* no component and returns false. Passing a non-negative index value for a DynAny that does not
	* have a component at the corresponding position sets the current position to -1 and returns false.
	*/
	@:overload override public function seek(index : Int) : Bool;
	
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
	@:overload override public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue, exclist : org.omg.CORBA.ExceptionList, ctxlist : org.omg.CORBA.ContextList) : org.omg.CORBA.Request;
	
	/**
	* Extracts the char value from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_char() : java.StdTypes.Char16;
	
	/**
	* Extracts the string value from this DynAny.
	* Both bounded and unbounded strings are extracted using this method.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function get_wstring() : String;
	
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
	@:overload override public function _create_request(ctx : org.omg.CORBA.Context, operation : String, arg_list : org.omg.CORBA.NVList, result : org.omg.CORBA.NamedValue) : org.omg.CORBA.Request;
	
	/**
	* Inserts a reference to a Serializable object into this DynAny.
	* The IDL ValueBase type is mapped to the Java Serializable type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_val(value : java.io.Serializable) : Void;
	
	/**
	* Extracts the reference to a CORBA Object from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_reference() : org.omg.CORBA.Object;
	
	/**
	* Extracts the integer value from this DynAny. The IDL ulong data type is mapped to the Java int data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_ulong() : Int;
	
	/**
	* Inserts an integer value into the DynAny. The IDL long data type is mapped to the Java int data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_long(value : Int) : Void;
	
	/**
	* Extracts the byte value from this DynAny. The IDL octet data type is mapped to the Java byte data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_octet() : java.StdTypes.Int8;
	
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
	@:overload override public function _set_policy_override(policies : java.NativeArray<org.omg.CORBA.Policy>, set_add : org.omg.CORBA.SetOverrideType) : Object;
	
	/**
	* Extracts the long value from this DynAny. The IDL wchar data type is mapped to the Java char data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_wchar() : java.StdTypes.Char16;
	
	/**
	* Advances the current position to the next component.
	* The operation returns true while the resulting current position indicates a component, false otherwise.
	* A false return value leaves the current position at -1.
	* Invoking next on a DynAny without components leaves the current position at -1 and returns false.
	*/
	@:overload override public function next() : Bool;
	
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
	@:overload override public function _get_interface_def() : Object;
	
	/**
	* Inserts a float value into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_float(value : Single) : Void;
	
	/**
	* Inserts an Any value into the Any represented by this DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_any(value : org.omg.CORBA.Any) : Void;
	
	/**
	* Extracts the TypeCode object from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_typecode() : org.omg.CORBA.TypeCode;
	
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
	@:overload override public function _hash(maximum : Int) : Int;
	
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
	@:overload override public function _get_domain_managers() : java.NativeArray<org.omg.CORBA.DomainManager>;
	
	/**
	* Inserts a long value into the DynAny. The IDL long long data type is mapped to the Java long data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_longlong(value : haxe.Int64) : Void;
	
	/**
	* Checks whether this object is an instance of a class that
	* implements the given interface.
	*
	* @param repositoryIdentifier the interface to check against
	* @return <code>true</code> if this object reference is an instance
	*         of a class that implements the interface;
	*         <code>false</code> otherwise
	*/
	@:overload override public function _is_a(repositoryIdentifier : String) : Bool;
	
	/**
	* Determines whether the server object for this object reference has been
	* destroyed.
	* @return <code>true</code> if the ORB knows authoritatively that the
	*         server object does not exist; <code>false</code> otherwise
	*/
	@:overload override public function _non_existent() : Bool;
	
	/**
	* Inserts a reference to a CORBA object into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_reference(value : org.omg.CORBA.Object) : Void;
	
	/**
	* Extracts the long value from this DynAny.
	* The IDL unsigned long long data type is mapped to the Java long data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_ulonglong() : haxe.Int64;
	
	/**
	* Extracts the short value from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_short() : java.StdTypes.Int16;
	
	/**
	* Inserts a boolean value into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_boolean(value : Bool) : Void;
	
	/**
	* Inserts a string value into the DynAny.
	* Both bounded and unbounded strings are inserted using this method.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception InvalidValue if the string inserted is longer than the bound of a bounded string
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_string(value : String) : Void;
	
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
	@:overload override public function _duplicate() : Object;
	
	/**
	* Inserts a char value into the DynAny. The IDL wchar data type is mapped to the Java char data type.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_wchar(value : java.StdTypes.Char16) : Void;
	
	/**
	* Extracts the Any value contained in the Any represented by this DynAny and returns it wrapped
	* into a new DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_dyn_any() : org.omg.DynamicAny.DynAny;
	
	/**
	* Extracts an Any value contained in the Any represented by this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_any() : org.omg.CORBA.Any;
	
	/**
	* Inserts a char value into the DynAny.
	*
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	*/
	@:overload override public function insert_char(value : java.StdTypes.Char16) : Void;
	
	/**
	* Extracts the short value from this DynAny. The IDL ushort data type is mapped to the Java short data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_ushort() : java.StdTypes.Int16;
	
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
	@:overload override public function _is_equivalent(other : Object) : Bool;
	
	/**
	* Extracts the long value from this DynAny. The IDL long long data type is mapped to the Java long data type.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_longlong() : haxe.Int64;
	
	/**
	* Extracts the double value from this DynAny.
	*
	* @exception TypeMismatch if the accessed component in the DynAny is of a type
	* that is not equivalent to the requested type.
	* @exception TypeMismatch if called on a DynAny whose current component itself has components
	* @exception InvalidValue if this DynAny has components but has a current position of -1
	*/
	@:overload override public function get_double() : Float;
	
	
}
