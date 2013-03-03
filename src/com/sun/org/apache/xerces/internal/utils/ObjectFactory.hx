package com.sun.org.apache.xerces.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class ObjectFactory
{
	/**
	* Finds the implementation Class object in the specified order.  The
	* specified order is the following:
	* <ol>
	*  <li>query the system property using <code>System.getProperty</code>
	*  <li>read <code>META-INF/services/<i>factoryId</i></code> file
	*  <li>use fallback classname
	* </ol>
	*
	* @return Class object of factory, never null
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param fallbackClassName     Implementation class name, if nothing else
	*                              is found.  Use null to mean no fallback.
	*
	* @exception ObjectFactory.ConfigurationError
	*/
	@:overload @:public @:static public static function createObject(factoryId : String, fallbackClassName : String) : Dynamic;
	
	/**
	* Finds the implementation Class object in the specified order.  The
	* specified order is the following:
	* <ol>
	*  <li>query the system property using <code>System.getProperty</code>
	*  <li>read <code>$java.home/lib/<i>propertiesFilename</i></code> file
	*  <li>read <code>META-INF/services/<i>factoryId</i></code> file
	*  <li>use fallback classname
	* </ol>
	*
	* @return Class object of factory, never null
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param propertiesFilename The filename in the $java.home/lib directory
	*                           of the properties file.  If none specified,
	*                           ${java.home}/lib/xerces.properties will be used.
	* @param fallbackClassName     Implementation class name, if nothing else
	*                              is found.  Use null to mean no fallback.
	*
	* @exception ObjectFactory.ConfigurationError
	*/
	@:overload @:public @:static public static function createObject(factoryId : String, propertiesFilename : String, fallbackClassName : String) : Dynamic;
	
	/**
	* Figure out which ClassLoader to use.  For JDK 1.2 and later use
	* the context ClassLoader.
	*/
	@:overload @:public @:static public static function findClassLoader() : java.lang.ClassLoader;
	
	/**
	* Create an instance of a class using the same classloader for the ObjectFactory by default
	* or bootclassloader when Security Manager is in place
	*/
	@:overload @:public @:static public static function newInstance(className : String, doFallback : Bool) : Dynamic;
	
	/**
	* Create an instance of a class using the specified ClassLoader
	*/
	@:overload @:public @:static public static function newInstance(className : String, cl : java.lang.ClassLoader, doFallback : Bool) : Dynamic;
	
	/**
	* Find a Class using the same classloader for the ObjectFactory by default
	* or bootclassloader when Security Manager is in place
	*/
	@:overload @:public @:static public static function findProviderClass(className : String, doFallback : Bool) : Class<Dynamic>;
	
	/**
	* Find a Class using the specified ClassLoader
	*/
	@:overload @:public @:static public static function findProviderClass(className : String, cl : java.lang.ClassLoader, doFallback : Bool) : Class<Dynamic>;
	
	
}
