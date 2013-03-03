package com.sun.xml.internal.ws.policy.privateutil;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyUtils
{
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Commons') extern class PolicyUtils_Commons
{
	/**
	* Method returns the name of the method that is on the {@code methodIndexInStack}
	* position in the call stack of the current {@link Thread}.
	*
	* @param methodIndexInStack index to the call stack to get the method name for.
	* @return the name of the method that is on the {@code methodIndexInStack}
	*         position in the call stack of the current {@link Thread}.
	*/
	@:overload @:public @:static public static function getStackMethodName(methodIndexInStack : Int) : String;
	
	/**
	* Function returns the name of the caller method for the method executing this
	* function.
	*
	* @return caller method name from the call stack of the current {@link Thread}.
	*/
	@:overload @:public @:static public static function getCallerMethodName() : String;
	
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$IO') extern class PolicyUtils_IO
{
	/**
	* If the {@code resource} is not {@code null}, this method will try to close the
	* {@code resource} instance and log warning about any unexpected
	* {@link IOException} that may occur.
	*
	* @param resource resource to be closed
	*/
	@:overload @:public @:static public static function closeResource(resource : java.io.Closeable) : Void;
	
	/**
	* If the {@code reader} is not {@code null}, this method will try to close the
	* {@code reader} instance and log warning about any unexpected
	* {@link IOException} that may occur.
	*
	* @param reader resource to be closed
	*/
	@:overload @:public @:static public static function closeResource(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
/**
* Text utilities wrapper.
*/
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Text') extern class PolicyUtils_Text
{
	/**
	* System-specific line separator character retrieved from the Java system property
	* <code>line.separator</code>
	*/
	@:public @:final @:static public static var NEW_LINE(default, null) : String;
	
	/**
	* Method creates indent string consisting of as many {@code TAB} characters as specified by {@code indentLevel} parameter
	*
	* @param indentLevel indentation level
	* @return indentation string as specified by indentation level
	*
	*/
	@:overload @:public @:static public static function createIndent(indentLevel : Int) : String;
	
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Comparison') extern class PolicyUtils_Comparison
{
	/**
	* The comparator comapres QName objects according to their publicly accessible attributes, in the following
	* order of attributes:
	*
	* 1. namespace (not null String)
	* 2. local name (not null String)
	*/
	@:public @:static @:final public static var QNAME_COMPARATOR(default, null) : java.util.Comparator<javax.xml.namespace.QName>;
	
	/**
	* Compares two boolean values in the following way: {@code false < true}
	*
	* @return {@code -1} if {@code b1 < b2}, {@code 0} if {@code b1 == b2}, {@code 1} if {@code b1 > b2}
	*/
	@:overload @:public @:static public static function compareBoolean(b1 : Bool, b2 : Bool) : Int;
	
	/**
	* Compares two String values, that may possibly be null in the following way: {@code null < "string value"}
	*
	* @return {@code -1} if {@code s1 < s2}, {@code 0} if {@code s1 == s2}, {@code 1} if {@code s1 > s2}
	*/
	@:overload @:public @:static public static function compareNullableStrings(s1 : String, s2 : String) : Int;
	
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Collections') extern class PolicyUtils_Collections
{
	/**
	* TODO javadocs
	*
	* @param initialBase the combination base that will be present in each combination. May be {@code null} or empty.
	* @param options options that should be combined. May be {@code null} or empty.
	* @param ignoreEmptyOption flag identifies whether empty options should be ignored or whether the method should halt
	*        processing and return {@code null} when an empty option is encountered
	* @return TODO
	*/
	@:overload @:public @:static public static function combine<E, T : java.util.Collection<E>, U : java.util.Collection<E>>(initialBase : U, options : java.util.Collection<T>, ignoreEmptyOption : Bool) : java.util.Collection<java.util.Collection<E>>;
	
	
}
/**
* Reflection utilities wrapper
*/
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Reflection') extern class PolicyUtils_Reflection
{
	/**
	* Reflectively invokes specified method on the specified target
	*/
	@:overload @:public @:static public static function invoke<T>(target : Dynamic, methodName : String, resultClass : Class<T>, parameters : java.NativeArray<Dynamic>) : T;
	
	/**
	* Reflectively invokes specified method on the specified target
	*/
	@:overload @:public @:static public static function invoke<T>(target : Dynamic, methodName : String, resultClass : Class<T>, parameters : java.NativeArray<Dynamic>, parameterTypes : java.NativeArray<Class<Dynamic>>) : T;
	
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$ConfigFile') extern class PolicyUtils_ConfigFile
{
	/**
	* Generates a config file resource name from provided config file identifier.
	* The generated file name can be transformed into a URL instance using
	* {@link #loadFromContext(String, Object)} or {@link #loadFromClasspath(String)}
	* method.
	*
	* @param configFileIdentifier the string used to generate the config file URL that will be parsed. Each WSIT config
	*        file is in form of <code>wsit-<i>{configFileIdentifier}</i>.xml</code>. Must not be {@code null}.
	* @return generated config file resource name
	* @throw PolicyException If configFileIdentifier is null.
	*/
	@:overload @:public @:static public static function generateFullName(configFileIdentifier : String) : String;
	
	/**
	* Returns a URL pointing to the given config file. The file name is
	* looked up as a resource from a ServletContext.
	*
	* May return null if the file can not be found.
	*
	* @param configFileName The name of the file resource
	* @param context A ServletContext object. May not be null.
	*/
	@:overload @:public @:static public static function loadFromContext(configFileName : String, context : Dynamic) : java.net.URL;
	
	/**
	* Returns a URL pointing to the given config file. The file is looked up as
	* a resource on the classpath.
	*
	* May return null if the file can not be found.
	*
	* @param configFileName the name of the file resource. May not be {@code null}.
	*/
	@:overload @:public @:static public static function loadFromClasspath(configFileName : String) : java.net.URL;
	
	
}
/**
* Wrapper for ServiceFinder class which is not part of the Java SE yet.
*/
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$ServiceProvider') extern class PolicyUtils_ServiceProvider
{
	/**
	* Locates and incrementally instantiates the available providers of a
	* given service using the given class loader.
	* <p/>
	* <p> This method transforms the name of the given service class into a
	* provider-configuration filename as described above and then uses the
	* <tt>getResources</tt> method of the given class loader to find all
	* available files with that name.  These files are then read and parsed to
	* produce a list of provider-class names. Eventually each provider class is
	* instantiated and array of those instances is returned.
	* <p/>
	* <p> Because it is possible for extensions to be installed into a running
	* Java virtual machine, this method may return different results each time
	* it is invoked. <p>
	*
	* @param serviceClass The service's abstract service class. Must not be {@code null}.
	* @param loader  The class loader to be used to load provider-configuration files
	*                and instantiate provider classes, or <tt>null</tt> if the system
	*                class loader (or, failing that the bootstrap class loader) is to
	*                be used
	* @throws NullPointerException in case {@code service} input parameter is {@code null}.
	* @throws ServiceConfigurationError If a provider-configuration file violates the specified format
	*                                   or names a provider class that cannot be found and instantiated
	* @see #load(Class)
	*/
	@:overload @:public @:static public static function load<T>(serviceClass : Class<T>, loader : java.lang.ClassLoader) : java.NativeArray<T>;
	
	/**
	* Locates and incrementally instantiates the available providers of a
	* given service using the context class loader.  This convenience method
	* is equivalent to
	* <p/>
	* <pre>
	*   ClassLoader cl = Thread.currentThread().getContextClassLoader();
	*   return PolicyUtils.ServiceProvider.load(service, cl);
	* </pre>
	*
	* @param serviceClass The service's abstract service class. Must not be {@code null}.
	*
	* @throws NullPointerException in case {@code service} input parameter is {@code null}.
	* @throws ServiceConfigurationError If a provider-configuration file violates the specified format
	*                                   or names a provider class that cannot be found and instantiated
	* @see #load(Class, ClassLoader)
	*/
	@:overload @:public @:static public static function load<T>(serviceClass : Class<T>) : java.NativeArray<T>;
	
	
}
@:native('com$sun$xml$internal$ws$policy$privateutil$PolicyUtils$Rfc2396') extern class PolicyUtils_Rfc2396
{
	@:overload @:public @:static public static function unquote(quoted : String) : String;
	
	
}
