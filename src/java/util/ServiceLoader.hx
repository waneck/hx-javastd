package java.util;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ServiceLoader<S> implements java.lang.Iterable<S>
{
	/**
	* Clear this loader's provider cache so that all providers will be
	* reloaded.
	*
	* <p> After invoking this method, subsequent invocations of the {@link
	* #iterator() iterator} method will lazily look up and instantiate
	* providers from scratch, just as is done by a newly-created loader.
	*
	* <p> This method is intended for use in situations in which new providers
	* can be installed into a running Java virtual machine.
	*/
	@:overload public function reload() : Void;
	
	/**
	* Lazily loads the available providers of this loader's service.
	*
	* <p> The iterator returned by this method first yields all of the
	* elements of the provider cache, in instantiation order.  It then lazily
	* loads and instantiates any remaining providers, adding each one to the
	* cache in turn.
	*
	* <p> To achieve laziness the actual work of parsing the available
	* provider-configuration files and instantiating providers must be done by
	* the iterator itself.  Its {@link java.util.Iterator#hasNext hasNext} and
	* {@link java.util.Iterator#next next} methods can therefore throw a
	* {@link ServiceConfigurationError} if a provider-configuration file
	* violates the specified format, or if it names a provider class that
	* cannot be found and instantiated, or if the result of instantiating the
	* class is not assignable to the service type, or if any other kind of
	* exception or error is thrown as the next provider is located and
	* instantiated.  To write robust code it is only necessary to catch {@link
	* ServiceConfigurationError} when using a service iterator.
	*
	* <p> If such an error is thrown then subsequent invocations of the
	* iterator will make a best effort to locate and instantiate the next
	* available provider, but in general such recovery cannot be guaranteed.
	*
	* <blockquote style="font-size: smaller; line-height: 1.2"><span
	* style="padding-right: 1em; font-weight: bold">Design Note</span>
	* Throwing an error in these cases may seem extreme.  The rationale for
	* this behavior is that a malformed provider-configuration file, like a
	* malformed class file, indicates a serious problem with the way the Java
	* virtual machine is configured or is being used.  As such it is
	* preferable to throw an error rather than try to recover or, even worse,
	* fail silently.</blockquote>
	*
	* <p> The iterator returned by this method does not support removal.
	* Invoking its {@link java.util.Iterator#remove() remove} method will
	* cause an {@link UnsupportedOperationException} to be thrown.
	*
	* @return  An iterator that lazily loads providers for this loader's
	*          service
	*/
	@:overload public function iterator() : java.util.Iterator<S>;
	
	/**
	* Creates a new service loader for the given service type and class
	* loader.
	*
	* @param  service
	*         The interface or abstract class representing the service
	*
	* @param  loader
	*         The class loader to be used to load provider-configuration files
	*         and provider classes, or <tt>null</tt> if the system class
	*         loader (or, failing that, the bootstrap class loader) is to be
	*         used
	*
	* @return A new service loader
	*/
	@:overload public static function load<S>(service : Class<S>, loader : java.lang.ClassLoader) : ServiceLoader<S>;
	
	/**
	* Creates a new service loader for the given service type, using the
	* current thread's {@linkplain java.lang.Thread#getContextClassLoader
	* context class loader}.
	*
	* <p> An invocation of this convenience method of the form
	*
	* <blockquote><pre>
	* ServiceLoader.load(<i>service</i>)</pre></blockquote>
	*
	* is equivalent to
	*
	* <blockquote><pre>
	* ServiceLoader.load(<i>service</i>,
	*                    Thread.currentThread().getContextClassLoader())</pre></blockquote>
	*
	* @param  service
	*         The interface or abstract class representing the service
	*
	* @return A new service loader
	*/
	@:overload public static function load<S>(service : Class<S>) : ServiceLoader<S>;
	
	/**
	* Creates a new service loader for the given service type, using the
	* extension class loader.
	*
	* <p> This convenience method simply locates the extension class loader,
	* call it <tt><i>extClassLoader</i></tt>, and then returns
	*
	* <blockquote><pre>
	* ServiceLoader.load(<i>service</i>, <i>extClassLoader</i>)</pre></blockquote>
	*
	* <p> If the extension class loader cannot be found then the system class
	* loader is used; if there is no system class loader then the bootstrap
	* class loader is used.
	*
	* <p> This method is intended for use when only installed providers are
	* desired.  The resulting service will only find and load providers that
	* have been installed into the current Java virtual machine; providers on
	* the application's class path will be ignored.
	*
	* @param  service
	*         The interface or abstract class representing the service
	*
	* @return A new service loader
	*/
	@:overload public static function loadInstalled<S>(service : Class<S>) : ServiceLoader<S>;
	
	/**
	* Returns a string describing this service.
	*
	* @return  A descriptive string
	*/
	@:overload public function toString() : String;
	
	
}
@:native('java$util$ServiceLoader$LazyIterator') @:internal extern class ServiceLoader_LazyIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
