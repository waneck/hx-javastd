package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanInstantiator
{
	/**
	* This methods tests if the MBean class makes it possible to
	* instantiate an MBean of this class in the MBeanServer.
	* e.g. it must have a public constructor, be a concrete class...
	*/
	@:overload public function testCreation(c : Class<Dynamic>) : Void;
	
	/**
	* Loads the class with the specified name using this object's
	* Default Loader Repository.
	**/
	@:overload public function findClassWithDefaultLoaderRepository(className : String) : Class<Dynamic>;
	
	/**
	* Gets the class for the specified class name using the MBean
	* Interceptor's classloader
	*/
	@:overload public function findClass(className : String, loader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* Gets the class for the specified class name using the specified
	* class loader
	*/
	@:overload public function findClass(className : String, aLoader : javax.management.ObjectName) : Class<Dynamic>;
	
	/**
	* Return an array of Class corresponding to the given signature, using
	* the specified class loader.
	*/
	@:overload public function findSignatureClasses(signature : java.NativeArray<String>, loader : java.lang.ClassLoader) : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Instantiates an object given its class, using its empty constructor.
	* The call returns a reference to the newly created object.
	*/
	@:overload public function instantiate(theClass : Class<Dynamic>) : Dynamic;
	
	/**
	* Instantiates an object given its class, the parameters and
	* signature of its constructor The call returns a reference to
	* the newly created object.
	*/
	@:overload public function instantiate(theClass : Class<Dynamic>, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>, loader : java.lang.ClassLoader) : Dynamic;
	
	/**
	* De-serializes a byte array in the context of a classloader.
	*
	* @param loader the classloader to use for de-serialization
	* @param data The byte array to be de-sererialized.
	*
	* @return  The de-serialized object stream.
	*
	* @exception OperationsException Any of the usual Input/Output related
	* exceptions.
	*/
	@:overload public function deserialize(loader : java.lang.ClassLoader, data : java.NativeArray<java.StdTypes.Int8>) : java.io.ObjectInputStream;
	
	/**
	* De-serializes a byte array in the context of a given MBean class loader.
	* <P>The class loader is the one that loaded the class with name
	* "className".
	* <P>The name of the class loader to be used for loading the specified
	* class is specified. If null, a default one has to be provided (for a
	* MBean Server, its own class loader will be used).
	*
	* @param className The name of the class whose class loader should
	*  be used for the de-serialization.
	* @param data The byte array to be de-sererialized.
	* @param loaderName The name of the class loader to be used for loading
	* the specified class. If null, a default one has to be provided (for a
	* MBean Server, its own class loader will be used).
	*
	* @return  The de-serialized object stream.
	*
	* @exception InstanceNotFoundException The specified class loader MBean is
	* not found.
	* @exception OperationsException Any of the usual Input/Output related
	* exceptions.
	* @exception ReflectionException The specified class could not be loaded
	* by the specified class loader.
	*/
	@:overload public function deserialize(className : String, loaderName : javax.management.ObjectName, data : java.NativeArray<java.StdTypes.Int8>, loader : java.lang.ClassLoader) : java.io.ObjectInputStream;
	
	/**
	* Instantiates an object using the list of all class loaders registered
	* in the MBean Interceptor
	* (using its {@link javax.management.loading.ClassLoaderRepository}).
	* <P>The object's class should have a public constructor.
	* <P>It returns a reference to the newly created object.
	* <P>The newly created object is not registered in the MBean Interceptor.
	*
	* @param className The class name of the object to be instantiated.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to invoke the
	* object's constructor.
	* @exception MBeanException The constructor of the object has thrown an
	* exception
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: the className passed in
	* parameter is null.
	*/
	@:overload public function instantiate(className : String) : Dynamic;
	
	/**
	* Instantiates an object using the class Loader specified by its
	* <CODE>ObjectName</CODE>.
	* <P>If the loader name is null, a default one has to be provided (for a
	* MBean Server, the ClassLoader that loaded it will be used).
	* <P>The object's class should have a public constructor.
	* <P>It returns a reference to the newly created object.
	* <P>The newly created object is not registered in the MBean Interceptor.
	*
	* @param className The class name of the MBean to be instantiated.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to invoke the
	* object's constructor.
	* @exception MBeanException The constructor of the object has thrown an
	* exception.
	* @exception InstanceNotFoundException The specified class loader is not
	* registered in the MBeanServerInterceptor.
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: the className passed in
	* parameter is null.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, loader : java.lang.ClassLoader) : Dynamic;
	
	/**
	* Instantiates an object using the list of all class loaders registered
	* in the MBean server
	* (using its {@link javax.management.loading.ClassLoaderRepository}).
	* <P>The object's class should have a public constructor.
	* <P>The call returns a reference to the newly created object.
	* <P>The newly created object is not registered in the MBean Interceptor.
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the constructor to
	* be invoked.
	* @param signature An array containing the signature of the constructor to
	* be invoked.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to invoke the
	* object's constructor.
	* @exception MBeanException The constructor of the object has thrown an
	* exception
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: the className passed in
	* parameter is null.
	*/
	@:overload public function instantiate(className : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>, loader : java.lang.ClassLoader) : Dynamic;
	
	/**
	* Instantiates an object. The class loader to be used is identified by its
	* object name.
	* <P>If the object name of the loader is null, a default has to be
	* provided (for example, for a MBean Server, the ClassLoader that loaded
	* it will be used).
	* <P>The object's class should have a public constructor.
	* <P>The call returns a reference to the newly created object.
	* <P>The newly created object is not registered in the MBean server.
	*
	* @param className The class name of the object to be instantiated.
	* @param params An array containing the parameters of the constructor to
	* be invoked.
	* @param signature An array containing the signature of the constructor to
	* be invoked.
	* @param loaderName The object name of the class loader to be used.
	*
	* @return The newly instantiated object.
	*
	* @exception ReflectionException Wraps a
	* <CODE>java.lang.ClassNotFoundException</CODE> or the
	* <CODE>java.lang.Exception</CODE> that occurred when trying to invoke the
	* object's constructor.
	* @exception MBeanException The constructor of the object has thrown an
	* exception
	* @exception InstanceNotFoundException The specified class loader is not
	* registered in the MBean Interceptor.
	* @exception RuntimeOperationsException Wraps a
	* <CODE>java.lang.IllegalArgumentException</CODE>: the className passed in
	* parameter is null.
	*/
	@:overload public function instantiate(className : String, loaderName : javax.management.ObjectName, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>, loader : java.lang.ClassLoader) : Dynamic;
	
	/**
	* Return the Default Loader Repository used by this instantiator object.
	**/
	@:overload public function getClassLoaderRepository() : com.sun.jmx.mbeanserver.ModifiableClassLoaderRepository;
	
	
}
