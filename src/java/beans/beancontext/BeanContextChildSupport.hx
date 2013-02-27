package java.beans.beancontext;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BeanContextChildSupport implements java.beans.beancontext.BeanContextChild implements java.beans.beancontext.BeanContextServicesListener implements java.io.Serializable
{
	/**
	* construct a BeanContextChildSupport where this class has been
	* subclassed in order to implement the JavaBean component itself.
	*/
	@:overload public function new() : Void;
	
	/**
	* construct a BeanContextChildSupport where the JavaBean component
	* itself implements BeanContextChild, and encapsulates this, delegating
	* that interface to this implementation
	*/
	@:overload public function new(bcc : java.beans.beancontext.BeanContextChild) : Void;
	
	/**
	* Sets the <code>BeanContext</code> for
	* this <code>BeanContextChildSupport</code>.
	* @param bc the new value to be assigned to the <code>BeanContext</code>
	* property
	* @throws <code>PropertyVetoException</code> if the change is rejected
	*/
	@:overload @:synchronized public function setBeanContext(bc : java.beans.beancontext.BeanContext) : Void;
	
	/**
	* Gets the nesting <code>BeanContext</code>
	* for this <code>BeanContextChildSupport</code>.
	* @return the nesting <code>BeanContext</code> for
	* this <code>BeanContextChildSupport</code>.
	*/
	@:overload @:synchronized public function getBeanContext() : java.beans.beancontext.BeanContext;
	
	/**
	* Add a PropertyChangeListener for a specific property.
	* The same listener object may be added more than once.  For each
	* property,  the listener will be invoked the number of times it was added
	* for that property.
	* If <code>name</code> or <code>pcl</code> is null, no exception is thrown
	* and no action is taken.
	*
	* @param name The name of the property to listen on
	* @param pcl The <code>PropertyChangeListener</code> to be added
	*/
	@:overload public function addPropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a PropertyChangeListener for a specific property.
	* If <code>pcl</code> was added more than once to the same event
	* source for the specified property, it will be notified one less time
	* after being removed.
	* If <code>name</code> is null, no exception is thrown
	* and no action is taken.
	* If <code>pcl</code> is null, or was never added for the specified
	* property, no exception is thrown and no action is taken.
	*
	* @param name The name of the property that was listened on
	* @param pcl The PropertyChangeListener to be removed
	*/
	@:overload public function removePropertyChangeListener(name : String, pcl : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Add a VetoableChangeListener for a specific property.
	* The same listener object may be added more than once.  For each
	* property,  the listener will be invoked the number of times it was added
	* for that property.
	* If <code>name</code> or <code>vcl</code> is null, no exception is thrown
	* and no action is taken.
	*
	* @param name The name of the property to listen on
	* @param vcl The <code>VetoableChangeListener</code> to be added
	*/
	@:overload public function addVetoableChangeListener(name : String, vcl : java.beans.VetoableChangeListener) : Void;
	
	/**
	* Removes a <code>VetoableChangeListener</code>.
	* If <code>pcl</code> was added more than once to the same event
	* source for the specified property, it will be notified one less time
	* after being removed.
	* If <code>name</code> is null, no exception is thrown
	* and no action is taken.
	* If <code>vcl</code> is null, or was never added for the specified
	* property, no exception is thrown and no action is taken.
	*
	* @param name The name of the property that was listened on
	* @param vcl The <code>VetoableChangeListener</code> to be removed
	*/
	@:overload public function removeVetoableChangeListener(name : String, vcl : java.beans.VetoableChangeListener) : Void;
	
	/**
	* A service provided by the nesting BeanContext has been revoked.
	*
	* Subclasses may override this method in order to implement their own
	* behaviors.
	* @param bcsre The <code>BeanContextServiceRevokedEvent</code> fired as a
	* result of a service being revoked
	*/
	@:overload public function serviceRevoked(bcsre : java.beans.beancontext.BeanContextServiceRevokedEvent) : Void;
	
	/**
	* A new service is available from the nesting BeanContext.
	*
	* Subclasses may override this method in order to implement their own
	* behaviors
	* @param bcsae The BeanContextServiceAvailableEvent fired as a
	* result of a service becoming available
	*
	*/
	@:overload public function serviceAvailable(bcsae : java.beans.beancontext.BeanContextServiceAvailableEvent) : Void;
	
	/**
	* Gets the <tt>BeanContextChild</tt> associated with this
	* <tt>BeanContextChildSupport</tt>.
	*
	* @return the <tt>BeanContextChild</tt> peer of this class
	*/
	@:overload public function getBeanContextChildPeer() : java.beans.beancontext.BeanContextChild;
	
	/**
	* Reports whether or not this class is a delegate of another.
	*
	* @return true if this class is a delegate of another
	*/
	@:overload public function isDelegated() : Bool;
	
	/**
	* Report a bound property update to any registered listeners. No event is
	* fired if old and new are equal and non-null.
	* @param name The programmatic name of the property that was changed
	* @param oldValue  The old value of the property
	* @param newValue  The new value of the property
	*/
	@:overload public function firePropertyChange(name : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Report a vetoable property update to any registered listeners.
	* If anyone vetos the change, then fire a new event
	* reverting everyone to the old value and then rethrow
	* the PropertyVetoException. <P>
	*
	* No event is fired if old and new are equal and non-null.
	* <P>
	* @param name The programmatic name of the property that is about to
	* change
	*
	* @param oldValue The old value of the property
	* @param newValue - The new value of the property
	*
	* @throws PropertyVetoException if the recipient wishes the property
	* change to be rolled back.
	*/
	@:overload public function fireVetoableChange(name : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Called from setBeanContext to validate (or otherwise) the
	* pending change in the nesting BeanContext property value.
	* Returning false will cause setBeanContext to throw
	* PropertyVetoException.
	* @param newValue the new value that has been requested for
	*  the BeanContext property
	* @return <code>true</code> if the change operation is to be vetoed
	*/
	@:overload public function validatePendingSetBeanContext(newValue : java.beans.beancontext.BeanContext) : Bool;
	
	/**
	* This method may be overridden by subclasses to provide their own
	* release behaviors. When invoked any resources held by this instance
	* obtained from its current BeanContext property should be released
	* since the object is no longer nested within that BeanContext.
	*/
	@:overload private function releaseBeanContextResources() : Void;
	
	/**
	* This method may be overridden by subclasses to provide their own
	* initialization behaviors. When invoked any resources requried by the
	* BeanContextChild should be obtained from the current BeanContext.
	*/
	@:overload private function initializeBeanContextResources() : Void;
	
	/**
	* The <code>BeanContext</code> in which
	* this <code>BeanContextChild</code> is nested.
	*/
	public var beanContextChildPeer : java.beans.beancontext.BeanContextChild;
	
	/**
	* The <tt>PropertyChangeSupport</tt> associated with this
	* <tt>BeanContextChildSupport</tt>.
	*/
	private var pcSupport : java.beans.PropertyChangeSupport;
	
	/**
	* The <tt>VetoableChangeSupport</tt> associated with this
	* <tt>BeanContextChildSupport</tt>.
	*/
	private var vcSupport : java.beans.VetoableChangeSupport;
	
	@:transient private var beanContext : java.beans.beancontext.BeanContext;
	
	/**
	* A flag indicating that there has been
	* at least one <code>PropertyChangeVetoException</code>
	* thrown for the attempted setBeanContext operation.
	*/
	@:transient private var rejectedSetBCOnce : Bool;
	
	
}
