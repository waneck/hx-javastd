package java.beans;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EventSetDescriptor extends java.beans.FeatureDescriptor
{
	/**
	* Creates an <TT>EventSetDescriptor</TT> assuming that you are
	* following the most simple standard design pattern where a named
	* event &quot;fred&quot; is (1) delivered as a call on the single method of
	* interface FredListener, (2) has a single argument of type FredEvent,
	* and (3) where the FredListener may be registered with a call on an
	* addFredListener method of the source component and removed with a
	* call on a removeFredListener method.
	*
	* @param sourceClass  The class firing the event.
	* @param eventSetName  The programmatic name of the event.  E.g. &quot;fred&quot;.
	*          Note that this should normally start with a lower-case character.
	* @param listenerType  The target interface that events
	*          will get delivered to.
	* @param listenerMethodName  The method that will get called when the event gets
	*          delivered to its target listener interface.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload @:public public function new(sourceClass : Class<Dynamic>, eventSetName : String, listenerType : Class<Dynamic>, listenerMethodName : String) : Void;
	
	/**
	* Creates an <TT>EventSetDescriptor</TT> from scratch using
	* string names.
	*
	* @param sourceClass  The class firing the event.
	* @param eventSetName The programmatic name of the event set.
	*          Note that this should normally start with a lower-case character.
	* @param listenerType  The Class of the target interface that events
	*          will get delivered to.
	* @param listenerMethodNames The names of the methods that will get called
	*          when the event gets delivered to its target listener interface.
	* @param addListenerMethodName  The name of the method on the event source
	*          that can be used to register an event listener object.
	* @param removeListenerMethodName  The name of the method on the event source
	*          that can be used to de-register an event listener object.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload @:public public function new(sourceClass : Class<Dynamic>, eventSetName : String, listenerType : Class<Dynamic>, listenerMethodNames : java.NativeArray<String>, addListenerMethodName : String, removeListenerMethodName : String) : Void;
	
	/**
	* This constructor creates an EventSetDescriptor from scratch using
	* string names.
	*
	* @param sourceClass  The class firing the event.
	* @param eventSetName The programmatic name of the event set.
	*          Note that this should normally start with a lower-case character.
	* @param listenerType  The Class of the target interface that events
	*          will get delivered to.
	* @param listenerMethodNames The names of the methods that will get called
	*          when the event gets delivered to its target listener interface.
	* @param addListenerMethodName  The name of the method on the event source
	*          that can be used to register an event listener object.
	* @param removeListenerMethodName  The name of the method on the event source
	*          that can be used to de-register an event listener object.
	* @param getListenerMethodName The method on the event source that
	*          can be used to access the array of event listener objects.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(sourceClass : Class<Dynamic>, eventSetName : String, listenerType : Class<Dynamic>, listenerMethodNames : java.NativeArray<String>, addListenerMethodName : String, removeListenerMethodName : String, getListenerMethodName : String) : Void;
	
	/**
	* Creates an <TT>EventSetDescriptor</TT> from scratch using
	* <TT>java.lang.reflect.Method</TT> and <TT>java.lang.Class</TT> objects.
	*
	* @param eventSetName The programmatic name of the event set.
	* @param listenerType The Class for the listener interface.
	* @param listenerMethods  An array of Method objects describing each
	*          of the event handling methods in the target listener.
	* @param addListenerMethod  The method on the event source
	*          that can be used to register an event listener object.
	* @param removeListenerMethod  The method on the event source
	*          that can be used to de-register an event listener object.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload @:public public function new(eventSetName : String, listenerType : Class<Dynamic>, listenerMethods : java.NativeArray<java.lang.reflect.Method>, addListenerMethod : java.lang.reflect.Method, removeListenerMethod : java.lang.reflect.Method) : Void;
	
	/**
	* This constructor creates an EventSetDescriptor from scratch using
	* java.lang.reflect.Method and java.lang.Class objects.
	*
	* @param eventSetName The programmatic name of the event set.
	* @param listenerType The Class for the listener interface.
	* @param listenerMethods  An array of Method objects describing each
	*          of the event handling methods in the target listener.
	* @param addListenerMethod  The method on the event source
	*          that can be used to register an event listener object.
	* @param removeListenerMethod  The method on the event source
	*          that can be used to de-register an event listener object.
	* @param getListenerMethod The method on the event source
	*          that can be used to access the array of event listener objects.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(eventSetName : String, listenerType : Class<Dynamic>, listenerMethods : java.NativeArray<java.lang.reflect.Method>, addListenerMethod : java.lang.reflect.Method, removeListenerMethod : java.lang.reflect.Method, getListenerMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Creates an <TT>EventSetDescriptor</TT> from scratch using
	* <TT>java.lang.reflect.MethodDescriptor</TT> and <TT>java.lang.Class</TT>
	*  objects.
	*
	* @param eventSetName The programmatic name of the event set.
	* @param listenerType The Class for the listener interface.
	* @param listenerMethodDescriptors  An array of MethodDescriptor objects
	*           describing each of the event handling methods in the
	*           target listener.
	* @param addListenerMethod  The method on the event source
	*          that can be used to register an event listener object.
	* @param removeListenerMethod  The method on the event source
	*          that can be used to de-register an event listener object.
	* @exception IntrospectionException if an exception occurs during
	*              introspection.
	*/
	@:overload @:public public function new(eventSetName : String, listenerType : Class<Dynamic>, listenerMethodDescriptors : java.NativeArray<java.beans.MethodDescriptor>, addListenerMethod : java.lang.reflect.Method, removeListenerMethod : java.lang.reflect.Method) : Void;
	
	/**
	* Gets the <TT>Class</TT> object for the target interface.
	*
	* @return The Class object for the target interface that will
	* get invoked when the event is fired.
	*/
	@:overload @:public public function getListenerType() : Class<Dynamic>;
	
	/**
	* Gets the methods of the target listener interface.
	*
	* @return An array of <TT>Method</TT> objects for the target methods
	* within the target listener interface that will get called when
	* events are fired.
	*/
	@:overload @:public @:synchronized public function getListenerMethods() : java.NativeArray<java.lang.reflect.Method>;
	
	/**
	* Gets the <code>MethodDescriptor</code>s of the target listener interface.
	*
	* @return An array of <code>MethodDescriptor</code> objects for the target methods
	* within the target listener interface that will get called when
	* events are fired.
	*/
	@:overload @:public @:synchronized public function getListenerMethodDescriptors() : java.NativeArray<java.beans.MethodDescriptor>;
	
	/**
	* Gets the method used to add event listeners.
	*
	* @return The method used to register a listener at the event source.
	*/
	@:overload @:public @:synchronized public function getAddListenerMethod() : java.lang.reflect.Method;
	
	/**
	* Gets the method used to remove event listeners.
	*
	* @return The method used to remove a listener at the event source.
	*/
	@:overload @:public @:synchronized public function getRemoveListenerMethod() : java.lang.reflect.Method;
	
	/**
	* Gets the method used to access the registered event listeners.
	*
	* @return The method used to access the array of listeners at the event
	*         source or null if it doesn't exist.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:synchronized public function getGetListenerMethod() : java.lang.reflect.Method;
	
	/**
	* Mark an event set as unicast (or not).
	*
	* @param unicast  True if the event set is unicast.
	*/
	@:overload @:public public function setUnicast(unicast : Bool) : Void;
	
	/**
	* Normally event sources are multicast.  However there are some
	* exceptions that are strictly unicast.
	*
	* @return  <TT>true</TT> if the event set is unicast.
	*          Defaults to <TT>false</TT>.
	*/
	@:overload @:public public function isUnicast() : Bool;
	
	/**
	* Marks an event set as being in the &quot;default&quot; set (or not).
	* By default this is <TT>true</TT>.
	*
	* @param inDefaultEventSet <code>true</code> if the event set is in
	*                          the &quot;default&quot; set,
	*                          <code>false</code> if not
	*/
	@:overload @:public public function setInDefaultEventSet(inDefaultEventSet : Bool) : Void;
	
	/**
	* Reports if an event set is in the &quot;default&quot; set.
	*
	* @return  <TT>true</TT> if the event set is in
	*          the &quot;default&quot; set.  Defaults to <TT>true</TT>.
	*/
	@:overload @:public public function isInDefaultEventSet() : Bool;
	
	
}
