package com.sun.corba.se.impl.naming.cosnaming;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
//// Imports for Logging
extern class NamingContextImpl extends org.omg.CosNaming.NamingContextExtPOA implements com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore
{
	/**
	* Class NamingContextImpl implements the org.omg.CosNaming::NamingContext
	* interface, but does not implement the methods associated with
	* maintaining the "table" of current bindings in a NamingContext.
	* Instead, this implementation assumes that the derived implementation
	* implements the NamingContextDataStore interface, which has the necessary
	* methods. This allows multiple
	* NamingContext implementations that differ in storage of the bindings,
	* as well as implementations of interfaces derived from
	* CosNaming::NamingContext that still reuses the implementation.
	* <p>
	* The operations bind(), rebind(), bind_context() and rebind_context()
	* are all really implemented by doBind(). resolve() is really implemented
	* by doResolve(), unbind() by doUnbind(). list(), new_context() and
	* destroy() uses the NamingContextDataStore interface directly. All the
	* doX() methods are public static.
	* They synchronize on the NamingContextDataStore object.
	* <p>
	* An implementation a NamingContext must extend this class and implement
	* the NamingContextDataStore interface with the operations:
	* Bind(), Resolve(),
	* Unbind(), List(), NewContext() and Destroy(). Calls
	* to these methods are synchronized; these methods should
	* therefore not be synchronized.
	*/
	private var nsPOA : org.omg.PortableServer.POA;
	
	/**
	* Create a naming context servant.
	* Runs the super constructor.
	* @param orb an ORB object.
	* @exception java.lang.Exception a Java exception.
	*/
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, poa : org.omg.PortableServer.POA) : Void;
	
	@:overload public function getNSPOA() : org.omg.PortableServer.POA;
	
	/**
	* Bind an object under a name in this NamingContext. If the name
	* contains multiple (n) components, n-1 will be resolved in this
	* NamingContext and the object bound in resulting NamingContext.
	* An exception is thrown if a binding with the supplied name already
	* exists. If the
	* object to be bound is a NamingContext it will not participate in
	* a recursive resolve.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could
	* not proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object
	* is already bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doBind
	*/
	@:overload override public function bind(n : java.NativeArray<org.omg.CosNaming.NameComponent>, obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Bind a NamingContext under a name in this NamingContext. If the name
	* contains multiple (n) components, n-1 will be resolved in this
	* NamingContext and the object bound in resulting NamingContext.
	* An exception is thrown if a binding with the supplied name already
	* exists. The NamingContext will participate in recursive resolving.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the NamingContect object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could
	* not proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object
	* is already bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doBind
	*/
	@:overload override public function bind_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>, nc : org.omg.CosNaming.NamingContext) : Void;
	
	/**
	* Bind an object under a name in this NamingContext. If the name
	* contains multiple (n) components, n-1 will be resolved in this
	* NamingContext and the object bound in resulting NamingContext.
	* If a binding under the supplied name already exists it will be
	* unbound first. If the
	* object to be bound is a NamingContext it will not participate in
	* a recursive resolve.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doBind
	*/
	@:overload override public function rebind(n : java.NativeArray<org.omg.CosNaming.NameComponent>, obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Bind a NamingContext under a name in this NamingContext. If the name
	* contains multiple (n) components, the first n-1 components will be
	* resolved in this NamingContext and the object bound in resulting
	* NamingContext. If a binding under the supplied name already exists it
	* will be unbound first. The NamingContext will participate in recursive
	* resolving.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doBind
	*/
	@:overload override public function rebind_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>, nc : org.omg.CosNaming.NamingContext) : Void;
	
	/**
	* Resolve a name in this NamingContext and return the object reference
	* bound to the name. If the name contains multiple (n) components,
	* the first component will be resolved in this NamingContext and the
	* remaining components resolved in the resulting NamingContext, provided
	* that the NamingContext bound to the first component of the name was
	* bound with bind_context().
	* @param n a sequence of NameComponents which is the name to be resolved.
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doResolve
	*/
	@:overload override public function resolve(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CORBA.Object;
	
	/**
	* Remove a binding from this NamingContext. If the name contains
	* multiple (n) components, the first n-1 components will be resolved
	* from this NamingContext and the final component unbound in
	* the resulting NamingContext.
	* @param n a sequence of NameComponents which is the name to be unbound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see doUnbind
	*/
	@:overload override public function unbind(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
	/**
	* List the contents of this NamingContest. A sequence of bindings
	* is returned (a BindingList) containing up to the number of requested
	* bindings, and a BindingIterator object reference is returned for
	* iterating over the remaining bindings.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @param bi The BindingIterator as an out parameter.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see BindingListHolder
	* @see BindingIteratorImpl
	*/
	@:overload override public function list(how_many : Int, bl : org.omg.CosNaming.BindingListHolder, bi : org.omg.CosNaming.BindingIteratorHolder) : Void;
	
	/**
	* Create a NamingContext object and return its object reference.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload @:synchronized override public function new_context() : org.omg.CosNaming.NamingContext;
	
	/**
	* Create a new NamingContext, bind it in this Naming Context and return
	* its object reference. This is equivalent to using new_context() followed
	* by bind_context() with the supplied name and the object reference for
	* the newly created NamingContext.
	* @param n a sequence of NameComponents which is the name to be unbound.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server, bound to the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object
	* is already bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see new_context
	* @see bind_context
	*/
	@:overload override public function bind_new_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CosNaming.NamingContext;
	
	/**
	* Destroy this NamingContext object. If this NamingContext contains
	* no bindings, the NamingContext is deleted.
	* @exception org.omg.CosNaming.NamingContextPackage.NotEmpty This
	* NamingContext is not empty (i.e., contains bindings).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	*/
	@:overload override public function destroy() : Void;
	
	/**
	* Implements all four flavors of binding. It uses Resolve() to
	* check if a binding already exists (for bind and bind_context), and
	* unbind() to ensure that a binding does not already exist.
	* If the length of the name is 1, then Bind() is called with
	* the name and the object to bind. Otherwise, the first component
	* of the name is resolved in this NamingContext and the appropriate
	* form of bind passed to the resulting NamingContext.
	* This method is static for maximal reuse - even for extended naming
	* context implementations where the recursive semantics still apply.
	* @param impl an implementation of NamingContextDataStore
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @param rebind Replace an existing binding or not.
	* @param bt Type of binding (as object or as context).
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not     * proceed
	* in resolving the first component of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The
	* supplied name is invalid (i.e., has length less than 1).
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object
	* is already bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions.
	* @see resolve
	* @see unbind
	* @see bind
	* @see bind_context
	* @see rebind
	* @see rebind_context
	*/
	@:overload public static function doBind(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>, obj : org.omg.CORBA.Object, rebind : Bool, bt : org.omg.CosNaming.BindingType) : Void;
	
	/**
	* Implements resolving names in this NamingContext. The first component
	* of the supplied name is resolved in this NamingContext by calling
	* Resolve(). If there are no more components in the name, the
	* resulting object reference is returned. Otherwise, the resulting object
	* reference must have been bound as a context and be narrowable to
	* a NamingContext. If this is the case, the remaining
	* components of the name is resolved in the resulting NamingContext.
	* This method is static for maximal reuse - even for extended naming
	* context implementations where the recursive semantics still apply.
	* @param impl an implementation of NamingContextDataStore
	* @param n a sequence of NameComponents which is the name to be resolved.
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with
	* multiple components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not
	* proceed
	* in resolving the first component of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied
	* name is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system
	* exceptions.
	* @see resolve
	*/
	@:overload public static function doResolve(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CORBA.Object;
	
	/**
	* Implements unbinding bound names in this NamingContext. If the
	* name contains only one component, the name is unbound in this
	* NamingContext using Unbind(). Otherwise, the first component
	* of the name is resolved in this NamingContext and
	* unbind passed to the resulting NamingContext.
	* This method is static for maximal reuse - even for extended naming
	* context implementations where the recursive semantics still apply.
	* @param impl an implementation of NamingContextDataStore
	* @param n a sequence of NameComponents which is the name to be unbound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see resolve
	*/
	@:overload public static function doUnbind(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
	/**
	* Implements resolving a NameComponent in this context and
	* narrowing it to CosNaming::NamingContext. It will throw appropriate
	* exceptions if not found or not narrowable.
	* @param impl an implementation of NamingContextDataStore
	* @param n a NameComponents which is the name to be found.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound The
	* first component could not be resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the first component of the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see resolve
	*/
	@:overload private static function resolveFirstAsContext(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CosNaming.NamingContext;
	
	/**
	* This operation creates a stringified name from the array of Name
	* components.
	* @param n Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	*
	*/
	@:overload override public function to_string(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : String;
	
	/**
	* This operation  converts a Stringified Name into an  equivalent array
	* of Name Components.
	* @param sn Stringified Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	*
	*/
	@:overload override public function to_name(sn : String) : java.NativeArray<org.omg.CosNaming.NameComponent>;
	
	/**
	* This operation creates a URL based "iiopname://" format name
	* from the Stringified Name of the object.
	* @param addr internet based address of the host machine where
	* Name Service is running <p>
	* @param sn Stringified Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidAddress
	* Indicates the internet based address of the host machine is
	* incorrect <p>
	*
	*/
	@:overload override public function to_url(addr : String, sn : String) : String;
	
	/**
	* This operation resolves the Stringified name into the object
	* reference.
	* @param sn Stringified Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound
	* Indicates there is no object reference for the given name. <p>
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed
	* Indicates that the given compound name is incorrect <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound
	* Indicates the name is already bound.<p>
	*
	*/
	@:overload override public function resolve_str(sn : String) : org.omg.CORBA.Object;
	
	@:transient private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:overload public static function nameToString(name : java.NativeArray<org.omg.CosNaming.NameComponent>) : String;
	
	public static var debug(default, null) : Bool;
	
	/**
	* Method which implements unbinding a name.
	* @return the object reference bound to the name, or null if not found.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function Unbind(n : org.omg.CosNaming.NameComponent) : org.omg.CORBA.Object;
	
	/**
	* Method which implements binding a name to an object as
	* the specified binding type.
	* @param n a NameComponent which is the name under which the object
	* will be bound.
	* @param obj the object reference to be bound.
	* @param bt Type of binding (as object or as context).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function Bind(n : org.omg.CosNaming.NameComponent, obj : org.omg.CORBA.Object, bt : org.omg.CosNaming.BindingType) : Void;
	
	/**
	* Method which implements resolving the specified name,
	* returning the type of the binding and the bound object reference.
	* If the id and kind of the NameComponent are both empty, the initial
	* naming context (i.e., the local root) must be returned.
	* @param n a NameComponent which is the name to be resolved.
	* @param bth the BindingType as an out parameter.
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function Resolve(n : org.omg.CosNaming.NameComponent, bth : org.omg.CosNaming.BindingTypeHolder) : org.omg.CORBA.Object;
	
	/**
	* Method which implements creating a new NamingContext.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function NewContext() : org.omg.CosNaming.NamingContext;
	
	/**
	* Method which implements destroying this NamingContext.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function Destroy() : Void;
	
	/**
	* Method which returns whether this NamingContext is empty
	* or not.
	* @return true if this NamingContext contains no bindings.
	*/
	@:overload public function IsEmpty() : Bool;
	
	/**
	* Method which implements listing the contents of this
	* NamingContext and return a binding list and a binding iterator.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @param bi The BindingIterator as an out parameter.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload public function List(how_many : Int, bl : org.omg.CosNaming.BindingListHolder, bi : org.omg.CosNaming.BindingIteratorHolder) : Void;
	
	
}
