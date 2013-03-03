package com.sun.corba.se.impl.naming.pcosnaming;
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
extern class NamingContextImpl extends org.omg.CosNaming.NamingContextExtPOA implements com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore implements java.io.Serializable
{
	/**
	* Create a naming context servant.
	* Runs the super constructor.
	* @param orb an ORB object.
	* @param objKey as String
	* @param TheNameService as NameService
	* @param TheServantManagerImpl as ServantManagerImpl
	* @exception java.lang.Exception a Java exception.
	*/
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, objKey : String, theNameService : com.sun.corba.se.impl.naming.pcosnaming.NameService, theServantManagerImpl : com.sun.corba.se.impl.naming.pcosnaming.ServantManagerImpl) : Void;
	
	@:overload @:public public function setRootNameService(theNameService : com.sun.corba.se.impl.naming.pcosnaming.NameService) : Void;
	
	@:overload @:public public function setORB(theOrb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function setServantManagerImpl(theServantManagerImpl : com.sun.corba.se.impl.naming.pcosnaming.ServantManagerImpl) : Void;
	
	@:overload @:public public function getNSPOA() : org.omg.PortableServer.POA;
	
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
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound The supplied name
	* is already bound.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doBind
	*/
	@:overload @:public override public function bind(n : java.NativeArray<org.omg.CosNaming.NameComponent>, obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Bind a NamingContext under a name in this NamingContext. If the name
	* contains multiple (n) components, n-1 will be resolved in this
	* NamingContext and the object bound in resulting NamingContext.
	* An exception is thrown if a binding with the supplied name already
	* exists. The NamingContext will participate in recursive resolving.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the NamingContect object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object is
	* already bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doBind
	*/
	@:overload @:public override public function bind_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>, nc : org.omg.CosNaming.NamingContext) : Void;
	
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
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doBind
	*/
	@:overload @:public override public function rebind(n : java.NativeArray<org.omg.CosNaming.NameComponent>, obj : org.omg.CORBA.Object) : Void;
	
	/**
	* Bind a NamingContext under a name in this NamingContext. If the name
	* contains multiple (n) components, the first n-1 components will be
	* resolved in this
	* NamingContext and the object bound in resulting NamingContext.
	* If a binding under the supplied name already exists it will be
	* unbound first. The NamingContext will participate in recursive resolving.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doBind
	*/
	@:overload @:public override public function rebind_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>, nc : org.omg.CosNaming.NamingContext) : Void;
	
	/**
	* Resolve a name in this NamingContext and return the object reference
	* bound to the name. If the name contains multiple (n) components,
	* the first component will be resolved in this NamingContext and the
	* remaining components resolved in the resulting NamingContext, provided
	* that the NamingContext bound to the first component of the name was
	* bound with bind_context().
	* @param n a sequence of NameComponents which is the name to be resolved.
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doResolve
	*/
	@:overload @:public override public function resolve(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CORBA.Object;
	
	/**
	* Remove a binding from this NamingContext. If the name contains
	* multiple (n) components, the first n-1 components will be resolved
	* from this NamingContext and the final component unbound in
	* the resulting NamingContext.
	* @param n a sequence of NameComponents which is the name to be unbound.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see doUnbind
	*/
	@:overload @:public override public function unbind(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
	/**
	* List the contents of this NamingContest. A sequence of bindings
	* is returned (a BindingList) containing up to the number of requested
	* bindings, and a BindingIterator object reference is returned for
	* iterating over the remaining bindings.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @param bi The BindingIterator as an out parameter.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see BindingListHolder
	* @see BindingIteratorImpl
	*/
	@:overload @:public override public function list(how_many : Int, bl : org.omg.CosNaming.BindingListHolder, bi : org.omg.CosNaming.BindingIteratorHolder) : Void;
	
	/**
	* Create a NamingContext object and return its object reference.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload @:public @:synchronized override public function new_context() : org.omg.CosNaming.NamingContext;
	
	/**
	* Create a new NamingContext, bind it in this Naming Context and return
	* its object reference. This is equivalent to using new_context() followed
	* by bind_context() with the supplied name and the object reference for
	* the newly created NamingContext.
	* @param n a sequence of NameComponents which is the name to be unbound.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server, bound to the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object is
	* already bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the n-1 components of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see new_context
	* @see bind_context
	*/
	@:overload @:public override public function bind_new_context(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CosNaming.NamingContext;
	
	/**
	* Destroy this NamingContext object. If this NamingContext contains
	* no bindings, the NamingContext is deleted.
	* @exception org.omg.CosNaming.NamingContextPackage.NotEmpty This NamingContext
	* is not empty (i.e., contains bindings).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload @:public override public function destroy() : Void;
	
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
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound A name with multiple
	* components was supplied, but the first component could not be
	* resolved.
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the first component of the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see resolve
	*/
	@:overload @:public @:static public static function doResolve(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CORBA.Object;
	
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
	@:overload @:public @:static public static function doUnbind(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : Void;
	
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
	@:overload @:protected @:static private static function resolveFirstAsContext(impl : com.sun.corba.se.impl.naming.cosnaming.NamingContextDataStore, n : java.NativeArray<org.omg.CosNaming.NameComponent>) : org.omg.CosNaming.NamingContext;
	
	@:overload @:public @:static public static function nameToString(name : java.NativeArray<org.omg.CosNaming.NameComponent>) : String;
	
	/**
	* Implements all flavors of binding( bind and bindcontext)
	* This method will be called from the superclass's doBind( ) method
	* which takes care of all the conditions before calling this method.
	* i.e., It checks whether the Name is already Bounded, Then in the
	* case of rebind it calls Unbind first.
	* This method does one level binding only, To have n-level binding
	* with compound names, doBind( ) calls this method recursively.
	* @param n a sequence of NameComponents which is the name under which
	* the object will be bound.
	* @param obj the object reference to be bound.
	* @param bt Type of binding (as object or as context).
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound  raised
	* if the NameComoponent list is invalid
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed
	* Could not proceed in resolving the Name from the given NameComponent
	* @exception org.omg.CosNaming.NamingContextPackage.AlreadyBound An object
	* is already bound under the supplied name.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA
	* system exceptions
	* @see Resolve
	* @see Unbind
	*/
	@:overload @:public public function Bind(n : org.omg.CosNaming.NameComponent, obj : org.omg.CORBA.Object, bt : org.omg.CosNaming.BindingType) : Void;
	
	/**
	* This method resolves the NamingContext or Object Reference for one level
	* The doResolve( ) method calls Resolve( ) recursively to resolve n level
	* Names.
	* @param n a sequence of NameComponents which is the name to be resolved.
	* @param bt Type of binding (as object or as context).
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound Neither a NamingContext
	* or a Corba Object reference not found under this Name
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see Bind
	*/
	@:overload @:public public function Resolve(n : org.omg.CosNaming.NameComponent, bth : org.omg.CosNaming.BindingTypeHolder) : org.omg.CORBA.Object;
	
	/**
	* This method Unbinds the NamingContext or Object Reference for one level
	* The doUnbind( ) method from superclass calls Unbind() to recursively
	* Unbind using compound Names.
	* @param n a sequence of NameComponents which is the name to be resolved.
	* @return the object reference bound under the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.NotFound Neither a NamingContext
	* or a Corba Object reference not found under this Name
	* @exception org.omg.CosNaming.NamingContextPackage.CannotProceed Could not proceed
	* in resolving the the supplied name.
	* @exception org.omg.CosNaming.NamingContextPackage.InvalidName The supplied name
	* is invalid (i.e., has length less than 1).
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	* @see Bind
	*/
	@:overload @:public public function Unbind(n : org.omg.CosNaming.NameComponent) : org.omg.CORBA.Object;
	
	/**
	* List the contents of this NamingContext. It creates a new
	* PersistentBindingIterator object and passes it a clone of the
	* hash table and an orb object. It then uses the
	* newly created object to return the required number of bindings.
	* @param how_many The number of requested bindings in the BindingList.
	* @param bl The BindingList as an out parameter.
	* @param bi The BindingIterator as an out parameter.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload @:public public function List(how_many : Int, bl : org.omg.CosNaming.BindingListHolder, bi : org.omg.CosNaming.BindingIteratorHolder) : Void;
	
	/**
	* Create a NamingContext object and return its object reference.
	* @return an object reference for a new NamingContext object implemented
	* by this Name Server.
	* @exception org.omg.CORBA.SystemException One of a fixed set of CORBA system exceptions.
	*/
	@:overload @:public public function NewContext() : org.omg.CosNaming.NamingContext;
	
	/**
	* Destroys the NamingContext.
	*/
	@:overload @:public public function Destroy() : Void;
	
	/**
	* This operation creates a stringified name from the array of Name
	* components.
	* @param n Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	*
	*/
	@:overload @:public override public function to_string(n : java.NativeArray<org.omg.CosNaming.NameComponent>) : String;
	
	/**
	* This operation  converts a Stringified Name into an  equivalent array
	* of Name Components.
	* @param sn Stringified Name of the object <p>
	* @exception org.omg.CosNaming.NamingContextExtPackage.InvalidName
	* Indicates the name does not identify a binding.<p>
	*
	*/
	@:overload @:public override public function to_name(sn : String) : java.NativeArray<org.omg.CosNaming.NameComponent>;
	
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
	@:overload @:public override public function to_url(addr : String, sn : String) : String;
	
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
	*
	*/
	@:overload @:public override public function resolve_str(sn : String) : org.omg.CORBA.Object;
	
	/**
	* This is a Debugging Method
	*/
	@:overload @:public public function IsEmpty() : Bool;
	
	/**
	* This is a Debugging Method
	*/
	@:overload @:public public function printSize() : Void;
	
	
}
