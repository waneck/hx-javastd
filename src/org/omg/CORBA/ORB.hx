package org.omg.CORBA;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ORB
{
	/**
	* Returns the <code>ORB</code> singleton object. This method always returns the
	* same ORB instance, which is an instance of the class described by the
	* <code>org.omg.CORBA.ORBSingletonClass</code> system property.
	* <P>
	* This no-argument version of the method <code>init</code> is used primarily
	* as a factory for <code>TypeCode</code> objects, which are used by
	* <code>Helper</code> classes to implement the method <code>type</code>.
	* It is also used to create <code>Any</code> objects that are used to
	* describe <code>union</code> labels (as part of creating a <code>
	* TypeCode</code> object for a <code>union</code>).
	* <P>
	* This method is not intended to be used by applets, and in the event
	* that it is called in an applet environment, the ORB it returns
	* is restricted so that it can be used only as a factory for
	* <code>TypeCode</code> objects.  Any <code>TypeCode</code> objects
	* it produces can be safely shared among untrusted applets.
	* <P>
	* If an ORB is created using this method from an applet,
	* a system exception will be thrown if
	* methods other than those for
	* creating <code>TypeCode</code> objects are invoked.
	*
	* @return the singleton ORB
	*/
	@:overload @:synchronized public static function init() : ORB;
	
	/**
	* Creates a new <code>ORB</code> instance for a standalone
	* application.  This method may be called from applications
	* only and returns a new fully functional <code>ORB</code> object
	* each time it is called.
	* @param args command-line arguments for the application's <code>main</code>
	*             method; may be <code>null</code>
	* @param props application-specific properties; may be <code>null</code>
	* @return the newly-created ORB instance
	*/
	@:overload public static function init(args : java.NativeArray<String>, props : java.util.Properties) : ORB;
	
	/**
	* Creates a new <code>ORB</code> instance for an applet.  This
	* method may be called from applets only and returns a new
	* fully-functional <code>ORB</code> object each time it is called.
	* @param app the applet; may be <code>null</code>
	* @param props applet-specific properties; may be <code>null</code>
	* @return the newly-created ORB instance
	*/
	@:overload public static function init(app : java.applet.Applet, props : java.util.Properties) : ORB;
	
	/**
	* Allows the ORB implementation to be initialized with the given
	* parameters and properties. This method, used in applications only,
	* is implemented by subclass ORB implementations and called
	* by the appropriate <code>init</code> method to pass in its parameters.
	*
	* @param args command-line arguments for the application's <code>main</code>
	*             method; may be <code>null</code>
	* @param props application-specific properties; may be <code>null</code>
	*/
	@:overload @:abstract private function set_parameters(args : java.NativeArray<String>, props : java.util.Properties) : Void;
	
	/**
	* Allows the ORB implementation to be initialized with the given
	* applet and parameters. This method, used in applets only,
	* is implemented by subclass ORB implementations and called
	* by the appropriate <code>init</code> method to pass in its parameters.
	*
	* @param app the applet; may be <code>null</code>
	* @param props applet-specific properties; may be <code>null</code>
	*/
	@:overload @:abstract private function set_parameters(app : java.applet.Applet, props : java.util.Properties) : Void;
	
	/**
	* Connects the given servant object (a Java object that is
	* an instance of the server implementation class)
	* to the ORB. The servant class must
	* extend the <code>ImplBase</code> class corresponding to the interface that is
	* supported by the server. The servant must thus be a CORBA object
	* reference, and inherit from <code>org.omg.CORBA.Object</code>.
	* Servants created by the user can start receiving remote invocations
	* after the method <code>connect</code> has been called. A servant may also be
	* automatically and implicitly connected to the ORB if it is passed as
	* an IDL parameter in an IDL method invocation on a non-local object,
	* that is, if the servant object has to be marshalled and sent outside of the
	* process address space.
	* <P>
	* Calling the method <code>connect</code> has no effect
	* when the servant object is already connected to the ORB.
	* <P>
	* Deprecated by the OMG in favor of the Portable Object Adapter APIs.
	*
	* @param obj The servant object reference
	*/
	@:overload public function connect(obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Destroys the ORB so that its resources can be reclaimed.
	* Any operation invoked on a destroyed ORB reference will throw the
	* <code>OBJECT_NOT_EXIST</code> exception.
	* Once an ORB has been destroyed, another call to <code>init</code>
	* with the same ORBid will return a reference to a newly constructed ORB.<p>
	* If <code>destroy</code> is called on an ORB that has not been shut down,
	* it will start the shut down process and block until the ORB has shut down
	* before it destroys the ORB.<br>
	* If an application calls <code>destroy</code> in a thread that is currently servicing
	* an invocation, the <code>BAD_INV_ORDER</code> system exception will be thrown
	* with the OMG minor code 3, since blocking would result in a deadlock.<p>
	* For maximum portability and to avoid resource leaks, an application should
	* always call <code>shutdown</code> and <code>destroy</code>
	* on all ORB instances before exiting.
	*
	* @throws org.omg.CORBA.BAD_INV_ORDER if the current thread is servicing an invocation
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Disconnects the given servant object from the ORB. After this method returns,
	* the ORB will reject incoming remote requests for the disconnected
	* servant and will send the exception
	* <code>org.omg.CORBA.OBJECT_NOT_EXIST</code> back to the
	* remote client. Thus the object appears to be destroyed from the
	* point of view of remote clients. Note, however, that local requests issued
	* using the servant  directly do not
	* pass through the ORB; hence, they will continue to be processed by the
	* servant.
	* <P>
	* Calling the method <code>disconnect</code> has no effect
	* if the servant is not connected to the ORB.
	* <P>
	* Deprecated by the OMG in favor of the Portable Object Adapter APIs.
	*
	* @param obj The servant object to be disconnected from the ORB
	*/
	@:overload public function disconnect(obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Returns a list of the initially available CORBA object references,
	* such as "NameService" and "InterfaceRepository".
	*
	* @return an array of <code>String</code> objects that represent
	*         the object references for CORBA services
	*         that are initially available with this ORB
	*/
	@:overload @:abstract public function list_initial_services() : java.NativeArray<String>;
	
	/**
	* Resolves a specific object reference from the set of available
	* initial service names.
	*
	* @param object_name the name of the initial service as a string
	* @return  the object reference associated with the given name
	* @exception InvalidName if the given name is not associated with a
	*                         known service
	*/
	@:overload @:abstract public function resolve_initial_references(object_name : String) : org.omg.CORBA.Object;
	
	/**
	* Converts the given CORBA object reference to a string.
	* Note that the format of this string is predefined by IIOP, allowing
	* strings generated by a different ORB to be converted back into an object
	* reference.
	* <P>
	* The resulting <code>String</code> object may be stored or communicated
	* in any way that a <code>String</code> object can be manipulated.
	*
	* @param obj the object reference to stringify
	* @return the string representing the object reference
	*/
	@:overload @:abstract public function object_to_string(obj : org.omg.CORBA.Object) : String;
	
	/**
	* Converts a string produced by the method <code>object_to_string</code>
	* back to a CORBA object reference.
	*
	* @param str the string to be converted back to an object reference.  It must
	* be the result of converting an object reference to a string using the
	* method <code>object_to_string</code>.
	* @return the object reference
	*/
	@:overload @:abstract public function string_to_object(str : String) : org.omg.CORBA.Object;
	
	/**
	* Allocates an <code>NVList</code> with (probably) enough
	* space for the specified number of <code>NamedValue</code> objects.
	* Note that the specified size is only a hint to help with
	* storage allocation and does not imply the maximum size of the list.
	*
	* @param count  suggested number of <code>NamedValue</code> objects for
	*               which to allocate space
	* @return the newly-created <code>NVList</code>
	*
	* @see NVList
	*/
	@:overload @:abstract public function create_list(count : Int) : org.omg.CORBA.NVList;
	
	/**
	* Creates an <code>NVList</code> initialized with argument
	* descriptions for the operation described in the given
	* <code>OperationDef</code> object.  This <code>OperationDef</code> object
	* is obtained from an Interface Repository. The arguments in the
	* returned <code>NVList</code> object are in the same order as in the
	* original IDL operation definition, which makes it possible for the list
	* to be used in dynamic invocation requests.
	*
	* @param oper      the <code>OperationDef</code> object to use to create the list
	* @return          a newly-created <code>NVList</code> object containing
	* descriptions of the arguments to the method described in the given
	* <code>OperationDef</code> object
	*
	* @see NVList
	*/
	@:overload public function create_operation_list(oper : org.omg.CORBA.Object) : org.omg.CORBA.NVList;
	
	/**
	* Creates a <code>NamedValue</code> object
	* using the given name, value, and argument mode flags.
	* <P>
	* A <code>NamedValue</code> object serves as (1) a parameter or return
	* value or (2) a context property.
	* It may be used by itself or
	* as an element in an <code>NVList</code> object.
	*
	* @param s  the name of the <code>NamedValue</code> object
	* @param any  the <code>Any</code> value to be inserted into the
	*             <code>NamedValue</code> object
	* @param flags  the argument mode flags for the <code>NamedValue</code>: one of
	* <code>ARG_IN.value</code>, <code>ARG_OUT.value</code>,
	* or <code>ARG_INOUT.value</code>.
	*
	* @return  the newly-created <code>NamedValue</code> object
	* @see NamedValue
	*/
	@:overload @:abstract public function create_named_value(s : String, any : org.omg.CORBA.Any, flags : Int) : org.omg.CORBA.NamedValue;
	
	/**
	* Creates an empty <code>ExceptionList</code> object.
	*
	* @return  the newly-created <code>ExceptionList</code> object
	*/
	@:overload @:abstract public function create_exception_list() : org.omg.CORBA.ExceptionList;
	
	/**
	* Creates an empty <code>ContextList</code> object.
	*
	* @return  the newly-created <code>ContextList</code> object
	* @see ContextList
	* @see Context
	*/
	@:overload @:abstract public function create_context_list() : org.omg.CORBA.ContextList;
	
	/**
	* Gets the default <code>Context</code> object.
	*
	* @return the default <code>Context</code> object
	* @see Context
	*/
	@:overload @:abstract public function get_default_context() : org.omg.CORBA.Context;
	
	/**
	* Creates an <code>Environment</code> object.
	*
	* @return  the newly-created <code>Environment</code> object
	* @see Environment
	*/
	@:overload @:abstract public function create_environment() : org.omg.CORBA.Environment;
	
	/**
	* Creates a new <code>org.omg.CORBA.portable.OutputStream</code> into which
	* IDL method parameters can be marshalled during method invocation.
	* @return          the newly-created
	*              <code>org.omg.CORBA.portable.OutputStream</code> object
	*/
	@:overload @:abstract public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	/**
	* Sends multiple dynamic (DII) requests asynchronously without expecting
	* any responses. Note that oneway invocations are not guaranteed to
	* reach the server.
	*
	* @param req               an array of request objects
	*/
	@:overload @:abstract public function send_multiple_requests_oneway(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	/**
	* Sends multiple dynamic (DII) requests asynchronously.
	*
	* @param req               an array of <code>Request</code> objects
	*/
	@:overload @:abstract public function send_multiple_requests_deferred(req : java.NativeArray<org.omg.CORBA.Request>) : Void;
	
	/**
	* Finds out if any of the deferred (asynchronous) invocations have
	* a response yet.
	* @return <code>true</code> if there is a response available;
	*         <code> false</code> otherwise
	*/
	@:overload @:abstract public function poll_next_response() : Bool;
	
	/**
	* Gets the next <code>Request</code> instance for which a response
	* has been received.
	*
	* @return          the next <code>Request</code> object ready with a response
	* @exception WrongTransaction if the method <code>get_next_response</code>
	* is called from a transaction scope different
	* from the one from which the original request was sent. See the
	* OMG Transaction Service specification for details.
	*/
	@:overload @:abstract public function get_next_response() : org.omg.CORBA.Request;
	
	/**
	* Retrieves the <code>TypeCode</code> object that represents
	* the given primitive IDL type.
	*
	* @param tcKind    the <code>TCKind</code> instance corresponding to the
	*                  desired primitive type
	* @return          the requested <code>TypeCode</code> object
	*/
	@:overload @:abstract public function get_primitive_tc(tcKind : org.omg.CORBA.TCKind) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>struct</code>.
	* The <code>TypeCode</code> object is initialized with the given id,
	* name, and members.
	*
	* @param id        the repository id for the <code>struct</code>
	* @param name      the name of the <code>struct</code>
	* @param members   an array describing the members of the <code>struct</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>struct</code>
	*/
	@:overload @:abstract public function create_struct_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>union</code>.
	* The <code>TypeCode</code> object is initialized with the given id,
	* name, discriminator type, and members.
	*
	* @param id        the repository id of the <code>union</code>
	* @param name      the name of the <code>union</code>
	* @param discriminator_type        the type of the <code>union</code> discriminator
	* @param members   an array describing the members of the <code>union</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>union</code>
	*/
	@:overload @:abstract public function create_union_tc(id : String, name : String, discriminator_type : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.UnionMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>enum</code>.
	* The <code>TypeCode</code> object is initialized with the given id,
	* name, and members.
	*
	* @param id        the repository id for the <code>enum</code>
	* @param name      the name for the <code>enum</code>
	* @param members   an array describing the members of the <code>enum</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>enum</code>
	*/
	@:overload @:abstract public function create_enum_tc(id : String, name : String, members : java.NativeArray<String>) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>alias</code>
	* (<code>typedef</code>).
	* The <code>TypeCode</code> object is initialized with the given id,
	* name, and original type.
	*
	* @param id        the repository id for the alias
	* @param name      the name for the alias
	* @param original_type
	*                  the <code>TypeCode</code> object describing the original type
	*          for which this is an alias
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>alias</code>
	*/
	@:overload @:abstract public function create_alias_tc(id : String, name : String, original_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>exception</code>.
	* The <code>TypeCode</code> object is initialized with the given id,
	* name, and members.
	*
	* @param id        the repository id for the <code>exception</code>
	* @param name      the name for the <code>exception</code>
	* @param members   an array describing the members of the <code>exception</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>exception</code>
	*/
	@:overload @:abstract public function create_exception_tc(id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>interface</code>.
	* The <code>TypeCode</code> object is initialized with the given id
	* and name.
	*
	* @param id        the repository id for the interface
	* @param name      the name for the interface
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>interface</code>
	*/
	@:overload @:abstract public function create_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing a bounded IDL
	* <code>string</code>.
	* The <code>TypeCode</code> object is initialized with the given bound,
	* which represents the maximum length of the string. Zero indicates
	* that the string described by this type code is unbounded.
	*
	* @param bound     the bound for the <code>string</code>; cannot be negative
	* @return          a newly-created <code>TypeCode</code> object describing
	*              a bounded IDL <code>string</code>
	* @exception BAD_PARAM if bound is a negative value
	*/
	@:overload @:abstract public function create_string_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing a bounded IDL
	* <code>wstring</code> (wide string).
	* The <code>TypeCode</code> object is initialized with the given bound,
	* which represents the maximum length of the wide string. Zero indicates
	* that the string described by this type code is unbounded.
	*
	* @param bound     the bound for the <code>wstring</code>; cannot be negative
	* @return          a newly-created <code>TypeCode</code> object describing
	*              a bounded IDL <code>wstring</code>
	* @exception BAD_PARAM if bound is a negative value
	*/
	@:overload @:abstract public function create_wstring_tc(bound : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>sequence</code>.
	* The <code>TypeCode</code> object is initialized with the given bound and
	* element type.
	*
	* @param bound     the bound for the <code>sequence</code>, 0 if unbounded
	* @param element_type
	*                  the <code>TypeCode</code> object describing the elements
	*          contained in the <code>sequence</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>sequence</code>
	*/
	@:overload @:abstract public function create_sequence_tc(bound : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing a
	* a recursive IDL <code>sequence</code>.
	* <P>
	* For the IDL <code>struct</code> Node in following code fragment,
	* the offset parameter for creating its sequence would be 1:
	* <PRE>
	*    Struct Node {
	*        long value;
	*        Sequence &lt;Node&gt; subnodes;
	*    };
	* </PRE>
	*
	* @param bound     the bound for the sequence, 0 if unbounded
	* @param offset    the index to the enclosing <code>TypeCode</code> object
	*                  that describes the elements of this sequence
	* @return          a newly-created <code>TypeCode</code> object describing
	*                   a recursive sequence
	* @deprecated Use a combination of create_recursive_tc and create_sequence_tc instead
	* @see #create_recursive_tc(String) create_recursive_tc
	* @see #create_sequence_tc(int, TypeCode) create_sequence_tc
	*/
	@:overload @:abstract public function create_recursive_sequence_tc(bound : Int, offset : Int) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object representing an IDL <code>array</code>.
	* The <code>TypeCode</code> object is initialized with the given length and
	* element type.
	*
	* @param length    the length of the <code>array</code>
	* @param element_type  a <code>TypeCode</code> object describing the type
	*                      of element contained in the <code>array</code>
	* @return          a newly-created <code>TypeCode</code> object describing
	*              an IDL <code>array</code>
	*/
	@:overload @:abstract public function create_array_tc(length : Int, element_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a <code>TypeCode</code> object for an IDL native type.
	*
	* @param id        the logical id for the native type.
	* @param name      the name of the native type.
	* @return          the requested TypeCode.
	*/
	@:overload public function create_native_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a <code>TypeCode</code> object for an IDL abstract interface.
	*
	* @param id        the logical id for the abstract interface type.
	* @param name      the name of the abstract interface type.
	* @return          the requested TypeCode.
	*/
	@:overload public function create_abstract_interface_tc(id : String, name : String) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a <code>TypeCode</code> object for an IDL fixed type.
	*
	* @param digits    specifies the total number of decimal digits in the number
	*                  and must be from 1 to 31 inclusive.
	* @param scale     specifies the position of the decimal point.
	* @return          the requested TypeCode.
	*/
	@:overload public function create_fixed_tc(digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a <code>TypeCode</code> object for an IDL value type.
	* The concrete_base parameter is the TypeCode for the immediate
	* concrete valuetype base of the valuetype for which the TypeCode
	* is being created.
	* It may be null if the valuetype does not have a concrete base.
	*
	* @param id                 the logical id for the value type.
	* @param name               the name of the value type.
	* @param type_modifier      one of the value type modifier constants:
	*                           VM_NONE, VM_CUSTOM, VM_ABSTRACT or VM_TRUNCATABLE
	* @param concrete_base      a <code>TypeCode</code> object
	*                           describing the concrete valuetype base
	* @param members            an array containing the members of the value type
	* @return                   the requested TypeCode
	*/
	@:overload public function create_value_tc(id : String, name : String, type_modifier : java.StdTypes.Int16, concrete_base : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.ValueMember>) : org.omg.CORBA.TypeCode;
	
	/**
	* Create a recursive <code>TypeCode</code> object which
	* serves as a placeholder for a concrete TypeCode during the process of creating
	* TypeCodes which contain recursion. The id parameter specifies the repository id of
	* the type for which the recursive TypeCode is serving as a placeholder. Once the
	* recursive TypeCode has been properly embedded in the enclosing TypeCode which
	* corresponds to the specified repository id, it will function as a normal TypeCode.
	* Invoking operations on the recursive TypeCode before it has been embedded in the
	* enclosing TypeCode will result in a <code>BAD_TYPECODE</code> exception.
	* <P>
	* For example, the following IDL type declaration contains recursion:
	* <PRE>
	*    Struct Node {
	*        Sequence&lt;Node&gt; subnodes;
	*    };
	* </PRE>
	* <P>
	* To create a TypeCode for struct Node, you would invoke the TypeCode creation
	* operations as shown below:
	* <PRE>
	* String nodeID = "IDL:Node:1.0";
	* TypeCode recursiveSeqTC = orb.create_sequence_tc(0, orb.create_recursive_tc(nodeID));
	* StructMember[] members = { new StructMember("subnodes", recursiveSeqTC, null) };
	* TypeCode structNodeTC = orb.create_struct_tc(nodeID, "Node", members);
	* </PRE>
	* <P>
	* Also note that the following is an illegal IDL type declaration:
	* <PRE>
	*    Struct Node {
	*        Node next;
	*    };
	* </PRE>
	* <P>
	* Recursive types can only appear within sequences which can be empty.
	* That way marshaling problems, when transmitting the struct in an Any, are avoided.
	* <P>
	* @param id                 the logical id of the referenced type
	* @return                   the requested TypeCode
	*/
	@:overload public function create_recursive_tc(id : String) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates a <code>TypeCode</code> object for an IDL value box.
	*
	* @param id                 the logical id for the value type
	* @param name               the name of the value type
	* @param boxed_type         the TypeCode for the type
	* @return                   the requested TypeCode
	*/
	@:overload public function create_value_box_tc(id : String, name : String, boxed_type : org.omg.CORBA.TypeCode) : org.omg.CORBA.TypeCode;
	
	/**
	* Creates an IDL <code>Any</code> object initialized to
	* contain a <code>Typecode</code> object whose <code>kind</code> field
	* is set to <code>TCKind.tc_null</code>.
	*
	* @return          a newly-created <code>Any</code> object
	*/
	@:overload @:abstract public function create_any() : org.omg.CORBA.Any;
	
	/**
	* Retrieves a <code>Current</code> object.
	* The <code>Current</code> interface is used to manage thread-specific
	* information for use by services such as transactions and security.
	*
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*
	* @return          a newly-created <code>Current</code> object
	* @deprecated      use <code>resolve_initial_references</code>.
	*/
	@:overload public function get_current() : org.omg.CORBA.Current;
	
	/**
	* This operation blocks the current thread until the ORB has
	* completed the shutdown process, initiated when some thread calls
	* <code>shutdown</code>. It may be used by multiple threads which
	* get all notified when the ORB shuts down.
	*
	*/
	@:overload public function run() : Void;
	
	/**
	* Instructs the ORB to shut down, which causes all
	* object adapters to shut down, in preparation for destruction.<br>
	* If the <code>wait_for_completion</code> parameter
	* is true, this operation blocks until all ORB processing (including
	* processing of currently executing requests, object deactivation,
	* and other object adapter operations) has completed.
	* If an application does this in a thread that is currently servicing
	* an invocation, the <code>BAD_INV_ORDER</code> system exception
	* will be thrown with the OMG minor code 3,
	* since blocking would result in a deadlock.<br>
	* If the <code>wait_for_completion</code> parameter is <code>FALSE</code>,
	* then shutdown may not have completed upon return.<p>
	* While the ORB is in the process of shutting down, the ORB operates as normal,
	* servicing incoming and outgoing requests until all requests have been completed.
	* Once an ORB has shutdown, only object reference management operations
	* may be invoked on the ORB or any object reference obtained from it.
	* An application may also invoke the <code>destroy</code> operation on the ORB itself.
	* Invoking any other operation will throw the <code>BAD_INV_ORDER</code>
	* system exception with the OMG minor code 4.<p>
	* The <code>ORB.run</code> method will return after
	* <code>shutdown</code> has been called.
	*
	* @param wait_for_completion <code>true</code> if the call
	*        should block until the shutdown is complete;
	*        <code>false</code> if it should return immediately
	* @throws org.omg.CORBA.BAD_INV_ORDER if the current thread is servicing
	*         an invocation
	*/
	@:overload public function shutdown(wait_for_completion : Bool) : Void;
	
	/**
	* Returns <code>true</code> if the ORB needs the main thread to
	* perform some work, and <code>false</code> if the ORB does not
	* need the main thread.
	*
	* @return <code>true</code> if there is work pending, meaning that the ORB
	*         needs the main thread to perform some work; <code>false</code>
	*         if there is no work pending and thus the ORB does not need the
	*         main thread
	*
	*/
	@:overload public function work_pending() : Bool;
	
	/**
	* Performs an implementation-dependent unit of work if called
	* by the main thread. Otherwise it does nothing.
	* The methods <code>work_pending</code> and <code>perform_work</code>
	* can be used in
	* conjunction to implement a simple polling loop that multiplexes
	* the main thread among the ORB and other activities.
	*
	*/
	@:overload public function perform_work() : Void;
	
	/**
	* Used to obtain information about CORBA facilities and services
	* that are supported by this ORB. The service type for which
	* information is being requested is passed in as the in
	* parameter <tt>service_type</tt>, the values defined by
	* constants in the CORBA module. If service information is
	* available for that type, that is returned in the out parameter
	* <tt>service_info</tt>, and the operation returns the
	* value <tt>true</tt>. If no information for the requested
	* services type is available, the operation returns <tt>false</tt>
	*  (i.e., the service is not supported by this ORB).
	* <P>
	* @param service_type a <code>short</code> indicating the
	*        service type for which information is being requested
	* @param service_info a <code>ServiceInformationHolder</code> object
	*        that will hold the <code>ServiceInformation</code> object
	*        produced by this method
	* @return <code>true</code> if service information is available
	*        for the <tt>service_type</tt>;
	*         <tt>false</tt> if no information for the
	*         requested services type is available
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload public function get_service_information(service_type : java.StdTypes.Int16, service_info : org.omg.CORBA.ServiceInformationHolder) : Bool;
	
	/**
	* Creates a new <code>DynAny</code> object from the given
	* <code>Any</code> object.
	* <P>
	* @param value the <code>Any</code> object from which to create a new
	*        <code>DynAny</code> object
	* @return the new <code>DynAny</code> object created from the given
	*         <code>Any</code> object
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_any(value : org.omg.CORBA.Any) : org.omg.CORBA.DynAny;
	
	/**
	* Creates a basic <code>DynAny</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynAny</code> object
	* @return the new <code>DynAny</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_basic_dyn_any(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynAny;
	
	/**
	* Creates a new <code>DynStruct</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynStruct</code> object
	* @return the new <code>DynStruct</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_struct(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynStruct;
	
	/**
	* Creates a new <code>DynSequence</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynSequence</code> object
	* @return the new <code>DynSequence</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_sequence(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynSequence;
	
	/**
	* Creates a new <code>DynArray</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynArray</code> object
	* @return the new <code>DynArray</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_array(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynArray;
	
	/**
	* Creates a new <code>DynUnion</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynUnion</code> object
	* @return the new <code>DynUnion</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_union(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynUnion;
	
	/**
	* Creates a new <code>DynEnum</code> object from the given
	* <code>TypeCode</code> object.
	* <P>
	* @param type the <code>TypeCode</code> object from which to create a new
	*        <code>DynEnum</code> object
	* @return the new <code>DynEnum</code> object created from the given
	*         <code>TypeCode</code> object
	* @throws org.omg.CORBA.ORBPackage.InconsistentTypeCode if the given
	*         <code>TypeCode</code> object is not consistent with the operation.
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Use the new <a href="../DynamicAny/DynAnyFactory.html">DynAnyFactory</a> API instead
	*/
	@:overload public function create_dyn_enum(type : org.omg.CORBA.TypeCode) : org.omg.CORBA.DynEnum;
	
	/**
	* Can be invoked to create new instances of policy objects
	* of a specific type with specified initial state. If
	* <tt>create_policy</tt> fails to instantiate a new Policy
	* object due to its inability to interpret the requested type
	* and content of the policy, it raises the <tt>PolicyError</tt>
	* exception with the appropriate reason.
	* @param type the <tt>PolicyType</tt> of the policy object to
	*        be created
	* @param val the value that will be used to set the initial
	*        state of the <tt>Policy</tt> object that is created
	* @return Reference to a newly created <tt>Policy</tt> object
	*        of type specified by the <tt>type</tt> parameter and
	*        initialized to a state specified by the <tt>val</tt>
	*        parameter
	* @throws <tt>org.omg.CORBA.PolicyError</tt> when the requested
	*        policy is not supported or a requested initial state
	*        for the policy is not supported.
	*/
	@:overload public function create_policy(type : Int, val : org.omg.CORBA.Any) : org.omg.CORBA.Policy;
	
	
}
