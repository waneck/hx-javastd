package java.beans.beancontext;
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
extern class BeanContextSupport extends java.beans.beancontext.BeanContextChildSupport implements java.beans.beancontext.BeanContext implements java.io.Serializable implements java.beans.PropertyChangeListener implements java.beans.VetoableChangeListener
{
	/**
	*
	* Construct a BeanContextSupport instance
	*
	*
	* @param peer      The peer <tt>BeanContext</tt> we are
	*                  supplying an implementation for,
	*                  or <tt>null</tt>
	*                  if this object is its own peer
	* @param lcle      The current Locale for this BeanContext. If
	*                  <tt>lcle</tt> is <tt>null</tt>, the default locale
	*                  is assigned to the <tt>BeanContext</tt> instance.
	* @param dTime     The initial state,
	*                  <tt>true</tt> if in design mode,
	*                  <tt>false</tt> if runtime.
	* @param visible   The initial visibility.
	* @see java.util.Locale#getDefault()
	* @see java.util.Locale#setDefault(java.util.Locale)
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContext, lcle : java.util.Locale, dTime : Bool, visible : Bool) : Void;
	
	/**
	* Create an instance using the specified Locale and design mode.
	*
	* @param peer      The peer <tt>BeanContext</tt> we
	*                  are supplying an implementation for,
	*                  or <tt>null</tt> if this object is its own peer
	* @param lcle      The current Locale for this <tt>BeanContext</tt>. If
	*                  <tt>lcle</tt> is <tt>null</tt>, the default locale
	*                  is assigned to the <tt>BeanContext</tt> instance.
	* @param dtime     The initial state, <tt>true</tt>
	*                  if in design mode,
	*                  <tt>false</tt> if runtime.
	* @see java.util.Locale#getDefault()
	* @see java.util.Locale#setDefault(java.util.Locale)
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContext, lcle : java.util.Locale, dtime : Bool) : Void;
	
	/**
	* Create an instance using the specified locale
	*
	* @param peer      The peer BeanContext we are
	*                  supplying an implementation for,
	*                  or <tt>null</tt> if this object
	*                  is its own peer
	* @param lcle      The current Locale for this
	*                  <tt>BeanContext</tt>. If
	*                  <tt>lcle</tt> is <tt>null</tt>,
	*                  the default locale
	*                  is assigned to the <tt>BeanContext</tt>
	*                  instance.
	* @see java.util.Locale#getDefault()
	* @see java.util.Locale#setDefault(java.util.Locale)
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContext, lcle : java.util.Locale) : Void;
	
	/**
	* Create an instance using with a default locale
	*
	* @param peer      The peer <tt>BeanContext</tt> we are
	*                  supplying an implementation for,
	*                  or <tt>null</tt> if this object
	*                  is its own peer
	*/
	@:overload public function new(peer : java.beans.beancontext.BeanContext) : Void;
	
	/**
	* Create an instance that is not a delegate of another object
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the instance of <tt>BeanContext</tt> that
	* this object is providing the implementation for.
	* @return the BeanContext instance
	*/
	@:overload public function getBeanContextPeer() : java.beans.beancontext.BeanContext;
	
	/**
	* <p>
	* The instantiateChild method is a convenience hook
	* in BeanContext to simplify
	* the task of instantiating a Bean, nested,
	* into a <tt>BeanContext</tt>.
	* </p>
	* <p>
	* The semantics of the beanName parameter are defined by java.beans.Beans.instantate.
	* </p>
	*
	* @param beanName the name of the Bean to instantiate within this BeanContext
	* @throws IOException if there is an I/O error when the bean is being deserialized
	* @throws ClassNotFoundException if the class
	* identified by the beanName parameter is not found
	* @return the new object
	*/
	@:overload public function instantiateChild(beanName : String) : Dynamic;
	
	/**
	* Gets the number of children currently nested in
	* this BeanContext.
	*
	* @return number of children
	*/
	@:overload public function size() : Int;
	
	/**
	* Reports whether or not this
	* <tt>BeanContext</tt> is empty.
	* A <tt>BeanContext</tt> is considered
	* empty when it contains zero
	* nested children.
	* @return if there are not children
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Determines whether or not the specified object
	* is currently a child of this <tt>BeanContext</tt>.
	* @param o the Object in question
	* @return if this object is a child
	*/
	@:overload public function contains(o : Dynamic) : Bool;
	
	/**
	* Determines whether or not the specified object
	* is currently a child of this <tt>BeanContext</tt>.
	* @param o the Object in question
	* @return if this object is a child
	*/
	@:overload public function containsKey(o : Dynamic) : Bool;
	
	/**
	* Gets all JavaBean or <tt>BeanContext</tt> instances
	* currently nested in this <tt>BeanContext</tt>.
	* @return an <tt>Iterator</tt> of the nested children
	*/
	@:overload public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* Gets all JavaBean or <tt>BeanContext</tt>
	* instances currently nested in this BeanContext.
	*/
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Gets an array containing all children of
	* this <tt>BeanContext</tt> that match
	* the types contained in arry.
	* @param arry The array of object
	* types that are of interest.
	* @return an array of children
	*/
	@:overload public function toArray(arry : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	/**
	* <p>
	* Subclasses can override this method to insert their own subclass
	* of Child without having to override add() or the other Collection
	* methods that add children to the set.
	* </p>
	*
	* @param targetChild the child to create the Child on behalf of
	* @param peer        the peer if the tragetChild and the peer are related by an implementation of BeanContextProxy
	*/
	@:overload private function createBCSChild(targetChild : Dynamic, peer : Dynamic) : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild;
	
	/**
	* Adds/nests a child within this <tt>BeanContext</tt>.
	* <p>
	* Invoked as a side effect of java.beans.Beans.instantiate().
	* If the child object is not valid for adding then this method
	* throws an IllegalStateException.
	* </p>
	*
	*
	* @param targetChild The child objects to nest
	* within this <tt>BeanContext</tt>
	* @return true if the child was added successfully.
	* @see #validatePendingAdd
	*/
	@:overload public function add(targetChild : Dynamic) : Bool;
	
	/**
	* Removes a child from this BeanContext.  If the child object is not
	* for adding then this method throws an IllegalStateException.
	* @param targetChild The child objects to remove
	* @see #validatePendingRemove
	*/
	@:overload public function remove(targetChild : Dynamic) : Bool;
	
	/**
	* internal remove used when removal caused by
	* unexpected <tt>setBeanContext</tt> or
	* by <tt>remove()</tt> invocation.
	* @param targetChild the JavaBean, BeanContext, or Object to be removed
	* @param callChildSetBC used to indicate that
	* the child should be notified that it is no
	* longer nested in this <tt>BeanContext</tt>.
	*/
	@:overload private function remove(targetChild : Dynamic, callChildSetBC : Bool) : Bool;
	
	/**
	* Tests to see if all objects in the
	* specified <tt>Collection</tt> are children of
	* this <tt>BeanContext</tt>.
	* @param c the specified <tt>Collection</tt>
	*
	* @return <tt>true</tt> if all objects
	* in the collection are children of
	* this <tt>BeanContext</tt>, false if not.
	*/
	@:overload public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* add Collection to set of Children (Unsupported)
	* implementations must synchronized on the hierarchy lock and "children" protected field
	* @throws UnsupportedOperationException
	*/
	@:overload public function addAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* remove all specified children (Unsupported)
	* implementations must synchronized on the hierarchy lock and "children" protected field
	* @throws UnsupportedOperationException
	*/
	@:overload public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* retain only specified children (Unsupported)
	* implementations must synchronized on the hierarchy lock and "children" protected field
	* @throws UnsupportedOperationException
	*/
	@:overload public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	/**
	* clear the children (Unsupported)
	* implementations must synchronized on the hierarchy lock and "children" protected field
	* @throws UnsupportedOperationException
	*/
	@:overload public function clear() : Void;
	
	/**
	* Adds a BeanContextMembershipListener
	*
	* @param  bcml the BeanContextMembershipListener to add
	* @throws NullPointerException
	*/
	@:overload public function addBeanContextMembershipListener(bcml : java.beans.beancontext.BeanContextMembershipListener) : Void;
	
	/**
	* Removes a BeanContextMembershipListener
	*
	* @param  bcml the BeanContextMembershipListener to remove
	* @throws NullPointerException
	*/
	@:overload public function removeBeanContextMembershipListener(bcml : java.beans.beancontext.BeanContextMembershipListener) : Void;
	
	/**
	* @param name the name of the resource requested.
	* @param bcc  the child object making the request.
	*
	* @return  the requested resource as an InputStream
	* @throws  NullPointerException
	*/
	@:overload public function getResourceAsStream(name : String, bcc : java.beans.beancontext.BeanContextChild) : java.io.InputStream;
	
	/**
	* @param name the name of the resource requested.
	* @param bcc  the child object making the request.
	*
	* @return the requested resource as an InputStream
	*/
	@:overload public function getResource(name : String, bcc : java.beans.beancontext.BeanContextChild) : java.net.URL;
	
	/**
	* Sets the new design time value for this <tt>BeanContext</tt>.
	* @param dTime the new designTime value
	*/
	@:overload @:synchronized public function setDesignTime(dTime : Bool) : Void;
	
	/**
	* Reports whether or not this object is in
	* currently in design time mode.
	* @return <tt>true</tt> if in design time mode,
	* <tt>false</tt> if not
	*/
	@:overload @:synchronized public function isDesignTime() : Bool;
	
	/**
	* Sets the locale of this BeanContext.
	* @param newLocale the new locale. This method call will have
	*        no effect if newLocale is <CODE>null</CODE>.
	* @throws PropertyVetoException if the new value is rejected
	*/
	@:overload @:synchronized public function setLocale(newLocale : java.util.Locale) : Void;
	
	/**
	* Gets the locale for this <tt>BeanContext</tt>.
	*
	* @return the current Locale of the <tt>BeanContext</tt>
	*/
	@:overload @:synchronized public function getLocale() : java.util.Locale;
	
	/**
	* <p>
	* This method is typically called from the environment in order to determine
	* if the implementor "needs" a GUI.
	* </p>
	* <p>
	* The algorithm used herein tests the BeanContextPeer, and its current children
	* to determine if they are either Containers, Components, or if they implement
	* Visibility and return needsGui() == true.
	* </p>
	* @return <tt>true</tt> if the implementor needs a GUI
	*/
	@:overload @:synchronized public function needsGui() : Bool;
	
	/**
	* notify this instance that it may no longer render a GUI.
	*/
	@:overload @:synchronized public function dontUseGui() : Void;
	
	/**
	* Notify this instance that it may now render a GUI
	*/
	@:overload @:synchronized public function okToUseGui() : Void;
	
	/**
	* Used to determine if the <tt>BeanContext</tt>
	* child is avoiding using its GUI.
	* @return is this instance avoiding using its GUI?
	* @see Visibility
	*/
	@:overload public function avoidingGui() : Bool;
	
	/**
	* Is this <tt>BeanContext</tt> in the
	* process of being serialized?
	* @return if this <tt>BeanContext</tt> is
	* currently being serialized
	*/
	@:overload public function isSerializing() : Bool;
	
	/**
	* Returns an iterator of all children
	* of this <tt>BeanContext</tt>.
	* @return an iterator for all the current BCSChild values
	*/
	@:overload private function bcsChildren() : java.util.Iterator<Dynamic>;
	
	/**
	* called by writeObject after defaultWriteObject() but prior to
	* serialization of currently serializable children.
	*
	* This method may be overridden by subclasses to perform custom
	* serialization of their state prior to this superclass serializing
	* the children.
	*
	* This method should not however be used by subclasses to replace their
	* own implementation (if any) of writeObject().
	*/
	@:overload private function bcsPreSerializationHook(oos : java.io.ObjectOutputStream) : Void;
	
	/**
	* called by readObject after defaultReadObject() but prior to
	* deserialization of any children.
	*
	* This method may be overridden by subclasses to perform custom
	* deserialization of their state prior to this superclass deserializing
	* the children.
	*
	* This method should not however be used by subclasses to replace their
	* own implementation (if any) of readObject().
	*/
	@:overload private function bcsPreDeserializationHook(ois : java.io.ObjectInputStream) : Void;
	
	/**
	* Called by readObject with the newly deserialized child and BCSChild.
	* @param child the newly deserialized child
	* @param bcsc the newly deserialized BCSChild
	*/
	@:overload private function childDeserializedHook(child : Dynamic, bcsc : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild) : Void;
	
	/**
	* Used by writeObject to serialize a Collection.
	* @param oos the <tt>ObjectOutputStream</tt>
	* to use during serialization
	* @param coll the <tt>Collection</tt> to serialize
	* @throws IOException if serialization failed
	*/
	@:overload @:final private function serialize(oos : java.io.ObjectOutputStream, coll : java.util.Collection<Dynamic>) : Void;
	
	/**
	* used by readObject to deserialize a collection.
	* @param ois the ObjectInputStream to use
	* @param coll the Collection
	*/
	@:overload @:final private function deserialize(ois : java.io.ObjectInputStream, coll : java.util.Collection<Dynamic>) : Void;
	
	/**
	* Used to serialize all children of
	* this <tt>BeanContext</tt>.
	* @param oos the <tt>ObjectOutputStream</tt>
	* to use during serialization
	* @throws IOException if serialization failed
	*/
	@:overload @:final public function writeChildren(oos : java.io.ObjectOutputStream) : Void;
	
	/**
	* When an instance of this class is used as a delegate for the
	* implementation of the BeanContext protocols (and its subprotocols)
	* there exists a 'chicken and egg' problem during deserialization
	*/
	@:overload @:final public function readChildren(ois : java.io.ObjectInputStream) : Void;
	
	/**
	* subclasses may envelope to monitor veto child property changes.
	*/
	@:overload public function vetoableChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* subclasses may envelope to monitor child property changes.
	*/
	@:overload public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* <p>
	* Subclasses of this class may override, or envelope, this method to
	* add validation behavior for the BeanContext to examine child objects
	* immediately prior to their being added to the BeanContext.
	* </p>
	*
	* @return true iff the child may be added to this BeanContext, otherwise false.
	*/
	@:overload private function validatePendingAdd(targetChild : Dynamic) : Bool;
	
	/**
	* <p>
	* Subclasses of this class may override, or envelope, this method to
	* add validation behavior for the BeanContext to examine child objects
	* immediately prior to their being removed from the BeanContext.
	* </p>
	*
	* @return true iff the child may be removed from this BeanContext, otherwise false.
	*/
	@:overload private function validatePendingRemove(targetChild : Dynamic) : Bool;
	
	/**
	* subclasses may override this method to simply extend add() semantics
	* after the child has been added and before the event notification has
	* occurred. The method is called with the child synchronized.
	*/
	@:overload private function childJustAddedHook(child : Dynamic, bcsc : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild) : Void;
	
	/**
	* subclasses may override this method to simply extend remove() semantics
	* after the child has been removed and before the event notification has
	* occurred. The method is called with the child synchronized.
	*/
	@:overload private function childJustRemovedHook(child : Dynamic, bcsc : java.beans.beancontext.BeanContextSupport.BeanContextSupport_BCSChild) : Void;
	
	/**
	* Gets the Component (if any) associated with the specified child.
	* @param child the specified child
	* @return the Component (if any) associated with the specified child.
	*/
	@:overload @:final private static function getChildVisibility(child : Dynamic) : java.beans.Visibility;
	
	/**
	* Gets the Serializable (if any) associated with the specified Child
	* @param child the specified child
	* @return the Serializable (if any) associated with the specified Child
	*/
	@:overload @:final private static function getChildSerializable(child : Dynamic) : java.io.Serializable;
	
	/**
	* Gets the PropertyChangeListener
	* (if any) of the specified child
	* @param child the specified child
	* @return the PropertyChangeListener (if any) of the specified child
	*/
	@:overload @:final private static function getChildPropertyChangeListener(child : Dynamic) : java.beans.PropertyChangeListener;
	
	/**
	* Gets the VetoableChangeListener
	* (if any) of the specified child
	* @param child the specified child
	* @return the VetoableChangeListener (if any) of the specified child
	*/
	@:overload @:final private static function getChildVetoableChangeListener(child : Dynamic) : java.beans.VetoableChangeListener;
	
	/**
	* Gets the BeanContextMembershipListener
	* (if any) of the specified child
	* @param child the specified child
	* @return the BeanContextMembershipListener (if any) of the specified child
	*/
	@:overload @:final private static function getChildBeanContextMembershipListener(child : Dynamic) : java.beans.beancontext.BeanContextMembershipListener;
	
	/**
	* Gets the BeanContextChild (if any) of the specified child
	* @param child the specified child
	* @return  the BeanContextChild (if any) of the specified child
	* @throws  IllegalArgumentException if child implements both BeanContextChild and BeanContextProxy
	*/
	@:overload @:final private static function getChildBeanContextChild(child : Dynamic) : java.beans.beancontext.BeanContextChild;
	
	/**
	* Fire a BeanContextshipEvent on the BeanContextMembershipListener interface
	*/
	@:overload @:final private function fireChildrenAdded(bcme : java.beans.beancontext.BeanContextMembershipEvent) : Void;
	
	/**
	* Fire a BeanContextshipEvent on the BeanContextMembershipListener interface
	*/
	@:overload @:final private function fireChildrenRemoved(bcme : java.beans.beancontext.BeanContextMembershipEvent) : Void;
	
	/**
	* protected method called from constructor and readObject to initialize
	* transient state of BeanContextSupport instance.
	*
	* This class uses this method to instantiate inner class listeners used
	* to monitor PropertyChange and VetoableChange events on children.
	*
	* subclasses may envelope this method to add their own initialization
	* behavior
	*/
	@:overload @:synchronized private function initialize() : Void;
	
	/**
	* Gets a copy of the this BeanContext's children.
	* @return a copy of the current nested children
	*/
	@:overload @:final private function copyChildren() : java.NativeArray<Dynamic>;
	
	/**
	* Tests to see if two class objects,
	* or their names are equal.
	* @param first the first object
	* @param second the second object
	* @return true if equal, false if not
	*/
	@:overload @:final private static function classEquals(first : Class<Dynamic>, second : Class<Dynamic>) : Bool;
	
	/**
	* all accesses to the <code> protected HashMap children </code> field
	* shall be synchronized on that object.
	*/
	@:transient private var children : java.util.HashMap<Dynamic, Dynamic>;
	
	/**
	* all accesses to the <code> protected ArrayList bcmListeners </code> field
	* shall be synchronized on that object.
	*/
	@:transient private var bcmListeners : java.util.ArrayList<Dynamic>;
	
	/**
	* The current locale of this BeanContext.
	*/
	private var locale : java.util.Locale;
	
	/**
	* A <tt>boolean</tt> indicating whether or not
	* this object is currently in design time mode.
	*/
	private var designTime : Bool;
	
	
}
/**
* protected final subclass that encapsulates an iterator but implements
* a noop remove() method.
*/
@:native('java$beans$beancontext$BeanContextSupport$BCSIterator') extern class BeanContextSupport_BCSIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
/*
* protected nested class containing per child information, an instance
* of which is associated with each child in the "children" hashtable.
* subclasses can extend this class to include their own per-child state.
*
* Note that this 'value' is serialized with the corresponding child 'key'
* when the BeanContextSupport is serialized.
*/
@:native('java$beans$beancontext$BeanContextSupport$BCSChild') extern class BeanContextSupport_BCSChild implements java.io.Serializable
{
	
}
