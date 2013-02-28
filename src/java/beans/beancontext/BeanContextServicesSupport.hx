package java.beans.beancontext;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BeanContextServicesSupport extends java.beans.beancontext.BeanContextSupport implements java.beans.beancontext.BeanContextServices
{
	/**
	* <p>
	* Construct a BeanContextServicesSupport instance
	* </p>
	*
	* @param peer      The peer BeanContext we are supplying an implementation for, if null the this object is its own peer
	* @param lcle      The current Locale for this BeanContext.
	* @param dTime     The initial state, true if in design mode, false if runtime.
	* @param visible   The initial visibility.
	*
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContextServices, lcle : java.util.Locale, dTime : Bool, visible : Bool) : Void;
	
	/**
	* Create an instance using the specified Locale and design mode.
	*
	* @param peer      The peer BeanContext we are supplying an implementation for, if null the this object is its own peer
	* @param lcle      The current Locale for this BeanContext.
	* @param dtime     The initial state, true if in design mode, false if runtime.
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContextServices, lcle : java.util.Locale, dtime : Bool) : Void;
	
	/**
	* Create an instance using the specified locale
	*
	* @param peer      The peer BeanContext we are supplying an implementation for, if null the this object is its own peer
	* @param lcle      The current Locale for this BeanContext.
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContextServices, lcle : java.util.Locale) : Void;
	
	/**
	* Create an instance with a peer
	*
	* @param peer      The peer BeanContext we are supplying an implementation for, if null the this object is its own peer
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContextServices) : Void;
	
	/**
	* Create an instance that is not a delegate of another object
	*/
	@:overload public function new() : Void;
	
	/**
	* called by BeanContextSupport superclass during construction and
	* deserialization to initialize subclass transient state.
	*
	* subclasses may envelope this method, but should not override it or
	* call it directly.
	*/
	@:overload override public function initialize() : Void;
	
	/**
	* Gets the <tt>BeanContextServices</tt> associated with this
	* <tt>BeanContextServicesSupport</tt>.
	*
	* @return the instance of <tt>BeanContext</tt>
	* this object is providing the implementation for.
	*/
	@:overload public function getBeanContextServicesPeer() : java.beans.beancontext.BeanContextServices;
	
	/**
	* <p>
	* Subclasses can override this method to insert their own subclass
	* of Child without having to override add() or the other Collection
	* methods that add children to the set.
	* </p>
	*
	* @param targetChild the child to create the Child on behalf of
	* @param peer        the peer if the targetChild and peer are related by BeanContextProxy
	*/
	@:overload override private function createBCSChild(targetChild : Dynamic, peer : Dynamic) : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild;
	
	/**
	* subclasses can override this method to create new subclasses of
	* BCSSServiceProvider without having to overrride addService() in
	* order to instantiate.
	*/
	@:overload private function createBCSSServiceProvider(sc : Class<Dynamic>, bcsp : java.beans.beancontext.BeanContextServiceProvider) : BeanContextServicesSupport_BCSSServiceProvider;
	
	/**
	* add a BeanContextServicesListener
	*
	* @throws NullPointerException
	*/
	@:overload public function addBeanContextServicesListener(bcsl : java.beans.beancontext.BeanContextServicesListener) : Void;
	
	/**
	* remove a BeanContextServicesListener
	*/
	@:overload public function removeBeanContextServicesListener(bcsl : java.beans.beancontext.BeanContextServicesListener) : Void;
	
	/**
	* add a service
	*/
	@:overload public function addService(serviceClass : Class<Dynamic>, bcsp : java.beans.beancontext.BeanContextServiceProvider) : Bool;
	
	/**
	* add a service
	*/
	@:overload private function addService(serviceClass : Class<Dynamic>, bcsp : java.beans.beancontext.BeanContextServiceProvider, fireEvent : Bool) : Bool;
	
	/**
	* remove a service
	*/
	@:overload public function revokeService(serviceClass : Class<Dynamic>, bcsp : java.beans.beancontext.BeanContextServiceProvider, revokeCurrentServicesNow : Bool) : Void;
	
	/**
	* has a service, which may be delegated
	*/
	@:overload @:synchronized public function hasService(serviceClass : Class<Dynamic>) : Bool;
	
	/**
	* obtain a service which may be delegated
	*/
	@:overload public function getService(child : java.beans.beancontext.BeanContextChild, requestor : Dynamic, serviceClass : Class<Dynamic>, serviceSelector : Dynamic, bcsrl : java.beans.beancontext.BeanContextServiceRevokedListener) : Dynamic;
	
	/**
	* release a service
	*/
	@:overload public function releaseService(child : java.beans.beancontext.BeanContextChild, requestor : Dynamic, service : Dynamic) : Void;
	
	/**
	* @return an iterator for all the currently registered service classes.
	*/
	@:overload public function getCurrentServiceClasses() : java.util.Iterator<Dynamic>;
	
	/**
	* @return an iterator for all the currently available service selectors
	* (if any) available for the specified service.
	*/
	@:overload public function getCurrentServiceSelectors(serviceClass : Class<Dynamic>) : java.util.Iterator<Dynamic>;
	
	/**
	* BeanContextServicesListener callback, propagates event to all
	* currently registered listeners and BeanContextServices children,
	* if this BeanContextService does not already implement this service
	* itself.
	*
	* subclasses may override or envelope this method to implement their
	* own propagation semantics.
	*/
	@:overload override public function serviceAvailable(bcssae : java.beans.beancontext.BeanContextServiceAvailableEvent) : Void;
	
	/**
	* BeanContextServicesListener callback, propagates event to all
	* currently registered listeners and BeanContextServices children,
	* if this BeanContextService does not already implement this service
	* itself.
	*
	* subclasses may override or envelope this method to implement their
	* own propagation semantics.
	*/
	@:overload override public function serviceRevoked(bcssre : java.beans.beancontext.BeanContextServiceRevokedEvent) : Void;
	
	/**
	* Gets the <tt>BeanContextServicesListener</tt> (if any) of the specified
	* child.
	*
	* @param child the specified child
	* @return the BeanContextServicesListener (if any) of the specified child
	*/
	@:overload @:final private static function getChildBeanContextServicesListener(child : Dynamic) : java.beans.beancontext.BeanContextServicesListener;
	
	/**
	* called from superclass child removal operations after a child
	* has been successfully removed. called with child synchronized.
	*
	* This subclass uses this hook to immediately revoke any services
	* being used by this child if it is a BeanContextChild.
	*
	* subclasses may envelope this method in order to implement their
	* own child removal side-effects.
	*/
	@:overload private function childJustRemovedHook(child : Dynamic, bcsc : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild) : Void;
	
	/**
	* called from setBeanContext to notify a BeanContextChild
	* to release resources obtained from the nesting BeanContext.
	*
	* This method revokes any services obtained from its parent.
	*
	* subclasses may envelope this method to implement their own semantics.
	*/
	@:overload @:synchronized override private function releaseBeanContextResources() : Void;
	
	/**
	* called from setBeanContext to notify a BeanContextChild
	* to allocate resources obtained from the nesting BeanContext.
	*
	* subclasses may envelope this method to implement their own semantics.
	*/
	@:overload @:synchronized override private function initializeBeanContextResources() : Void;
	
	/**
	* Fires a <tt>BeanContextServiceEvent</tt> notifying of a new service.
	*/
	@:overload @:final private function fireServiceAdded(serviceClass : Class<Dynamic>) : Void;
	
	/**
	* Fires a <tt>BeanContextServiceAvailableEvent</tt> indicating that a new
	* service has become available.
	*
	* @param bcssae the <tt>BeanContextServiceAvailableEvent</tt>
	*/
	@:overload @:final private function fireServiceAdded(bcssae : java.beans.beancontext.BeanContextServiceAvailableEvent) : Void;
	
	/**
	* Fires a <tt>BeanContextServiceEvent</tt> notifying of a service being revoked.
	*
	* @param bcsre the <tt>BeanContextServiceRevokedEvent</tt>
	*/
	@:overload @:final private function fireServiceRevoked(bcsre : java.beans.beancontext.BeanContextServiceRevokedEvent) : Void;
	
	/**
	* Fires a <tt>BeanContextServiceRevokedEvent</tt>
	* indicating that a particular service is
	* no longer available.
	*/
	@:overload @:final private function fireServiceRevoked(serviceClass : Class<Dynamic>, revokeNow : Bool) : Void;
	
	/**
	* called from BeanContextSupport writeObject before it serializes the
	* children ...
	*
	* This class will serialize any Serializable BeanContextServiceProviders
	* herein.
	*
	* subclasses may envelope this method to insert their own serialization
	* processing that has to occur prior to serialization of the children
	*/
	@:overload @:synchronized override private function bcsPreSerializationHook(oos : java.io.ObjectOutputStream) : Void;
	
	/**
	* called from BeanContextSupport readObject before it deserializes the
	* children ...
	*
	* This class will deserialize any Serializable BeanContextServiceProviders
	* serialized earlier thus making them available to the children when they
	* deserialized.
	*
	* subclasses may envelope this method to insert their own serialization
	* processing that has to occur prior to serialization of the children
	*/
	@:overload @:synchronized override private function bcsPreDeserializationHook(ois : java.io.ObjectInputStream) : Void;
	
	/**
	* all accesses to the <code> protected transient HashMap services </code>
	* field should be synchronized on that object
	*/
	@:transient private var services : java.util.HashMap<Dynamic, Dynamic>;
	
	/**
	* The number of instances of a serializable <tt>BeanContextServceProvider</tt>.
	*/
	@:transient private var serializable : Int;
	
	/**
	* Delegate for the <tt>BeanContextServiceProvider</tt>.
	*/
	@:transient private var proxy : BeanContextServicesSupport_BCSSProxyServiceProvider;
	
	/**
	* List of <tt>BeanContextServicesListener</tt> objects.
	*/
	@:transient private var bcsListeners : java.util.ArrayList<Dynamic>;
	
	
}
/*
* protected nested class containing per child information, an instance
* of which is associated with each child in the "children" hashtable.
* subclasses can extend this class to include their own per-child state.
*
* Note that this 'value' is serialized with the corresponding child 'key'
* when the BeanContextSupport is serialized.
*/
@:native('java$beans$beancontext$BeanContextServicesSupport$BCSSChild') extern class BeanContextServicesSupport_BCSSChild extends java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild
{
	
}
/*
* private nested class to map serviceClass to Provider and requestors
* listeners.
*/
@:native('java$beans$beancontext$BeanContextServicesSupport$BCSSChild$BCSSCServiceClassRef') @:internal extern class BeanContextServicesSupport_BCSSChild_BCSSCServiceClassRef
{
	
}
/*
* per service reference info ...
*/
@:native('java$beans$beancontext$BeanContextServicesSupport$BCSSChild$BCSSCServiceRef') @:internal extern class BeanContextServicesSupport_BCSSChild_BCSSCServiceRef
{
	
}
/**
* subclasses may subclass this nested class to add behaviors for
* each BeanContextServicesProvider.
*/
@:native('java$beans$beancontext$BeanContextServicesSupport$BCSSServiceProvider') extern class BeanContextServicesSupport_BCSSServiceProvider implements java.io.Serializable
{
	@:overload private function getServiceProvider() : java.beans.beancontext.BeanContextServiceProvider;
	
	/*
	* fields
	*/
	private var serviceProvider : java.beans.beancontext.BeanContextServiceProvider;
	
	
}
/*
* a nested subclass used to represent a proxy for serviceClasses delegated
* to an enclosing BeanContext.
*/
@:native('java$beans$beancontext$BeanContextServicesSupport$BCSSProxyServiceProvider') extern class BeanContextServicesSupport_BCSSProxyServiceProvider implements java.beans.beancontext.BeanContextServiceProvider implements java.beans.beancontext.BeanContextServiceRevokedListener
{
	@:overload public function getService(bcs : java.beans.beancontext.BeanContextServices, requestor : Dynamic, serviceClass : Class<Dynamic>, serviceSelector : Dynamic) : Dynamic;
	
	@:overload public function releaseService(bcs : java.beans.beancontext.BeanContextServices, requestor : Dynamic, service : Dynamic) : Void;
	
	@:overload public function getCurrentServiceSelectors(bcs : java.beans.beancontext.BeanContextServices, serviceClass : Class<Dynamic>) : java.util.Iterator<Dynamic>;
	
	@:overload public function serviceRevoked(bcsre : java.beans.beancontext.BeanContextServiceRevokedEvent) : Void;
	
	
}
