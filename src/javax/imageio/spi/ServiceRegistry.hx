package javax.imageio.spi;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ServiceRegistry
{
	/**
	* Constructs a <code>ServiceRegistry</code> instance with a
	* set of categories taken from the <code>categories</code>
	* argument.
	*
	* @param categories an <code>Iterator</code> containing
	* <code>Class</code> objects to be used to define categories.
	*
	* @exception IllegalArgumentException if
	* <code>categories</code> is <code>null</code>.
	*/
	@:overload @:public public function new(categories : java.util.Iterator<Class<Dynamic>>) : Void;
	
	/**
	* Searches for implementations of a particular service class
	* using the given class loader.
	*
	* <p> This method transforms the name of the given service class
	* into a provider-configuration filename as described in the
	* class comment and then uses the <code>getResources</code>
	* method of the given class loader to find all available files
	* with that name.  These files are then read and parsed to
	* produce a list of provider-class names.  The iterator that is
	* returned uses the given class loader to look up and then
	* instantiate each element of the list.
	*
	* <p> Because it is possible for extensions to be installed into
	* a running Java virtual machine, this method may return
	* different results each time it is invoked.
	*
	* @param providerClass a <code>Class</code>object indicating the
	* class or interface of the service providers being detected.
	*
	* @param loader the class loader to be used to load
	* provider-configuration files and instantiate provider classes,
	* or <code>null</code> if the system class loader (or, failing that
	* the bootstrap class loader) is to be used.
	*
	* @return An <code>Iterator</code> that yields provider objects
	* for the given service, in some arbitrary order.  The iterator
	* will throw an <code>Error</code> if a provider-configuration
	* file violates the specified format or if a provider class
	* cannot be found and instantiated.
	*
	* @exception IllegalArgumentException if
	* <code>providerClass</code> is <code>null</code>.
	*/
	@:overload @:public @:static public static function lookupProviders<T>(providerClass : Class<T>, loader : java.lang.ClassLoader) : java.util.Iterator<T>;
	
	/**
	* Locates and incrementally instantiates the available providers
	* of a given service using the context class loader.  This
	* convenience method is equivalent to:
	*
	* <pre>
	*   ClassLoader cl = Thread.currentThread().getContextClassLoader();
	*   return Service.providers(service, cl);
	* </pre>
	*
	* @param providerClass a <code>Class</code>object indicating the
	* class or interface of the service providers being detected.
	*
	* @return An <code>Iterator</code> that yields provider objects
	* for the given service, in some arbitrary order.  The iterator
	* will throw an <code>Error</code> if a provider-configuration
	* file violates the specified format or if a provider class
	* cannot be found and instantiated.
	*
	* @exception IllegalArgumentException if
	* <code>providerClass</code> is <code>null</code>.
	*/
	@:overload @:public @:static public static function lookupProviders<T>(providerClass : Class<T>) : java.util.Iterator<T>;
	
	/**
	* Returns an <code>Iterator</code> of <code>Class</code> objects
	* indicating the current set of categories.  The iterator will be
	* empty if no categories exist.
	*
	* @return an <code>Iterator</code> containing
	* <code>Class</code>objects.
	*/
	@:overload @:public public function getCategories() : java.util.Iterator<Class<Dynamic>>;
	
	/**
	* Adds a service provider object to the registry.  The provider
	* is associated with the given category.
	*
	* <p> If <code>provider</code> implements the
	* <code>RegisterableService</code> interface, its
	* <code>onRegistration</code> method will be called.  Its
	* <code>onDeregistration</code> method will be called each time
	* it is deregistered from a category, for example if a
	* category is removed or the registry is garbage collected.
	*
	* @param provider the service provide object to be registered.
	* @param category the category under which to register the
	* provider.
	*
	* @return true if no provider of the same class was previously
	* registered in the same category category.
	*
	* @exception IllegalArgumentException if <code>provider</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	* @exception ClassCastException if provider does not implement
	* the <code>Class</code> defined by <code>category</code>.
	*/
	@:overload @:public public function registerServiceProvider<T>(provider : T, category : Class<T>) : Bool;
	
	/**
	* Adds a service provider object to the registry.  The provider
	* is associated within each category present in the registry
	* whose <code>Class</code> it implements.
	*
	* <p> If <code>provider</code> implements the
	* <code>RegisterableService</code> interface, its
	* <code>onRegistration</code> method will be called once for each
	* category it is registered under.  Its
	* <code>onDeregistration</code> method will be called each time
	* it is deregistered from a category or when the registry is
	* finalized.
	*
	* @param provider the service provider object to be registered.
	*
	* @exception IllegalArgumentException if
	* <code>provider</code> is <code>null</code>.
	*/
	@:overload @:public public function registerServiceProvider(provider : Dynamic) : Void;
	
	/**
	* Adds a set of service provider objects, taken from an
	* <code>Iterator</code> to the registry.  Each provider is
	* associated within each category present in the registry whose
	* <code>Class</code> it implements.
	*
	* <p> For each entry of <code>providers</code> that implements
	* the <code>RegisterableService</code> interface, its
	* <code>onRegistration</code> method will be called once for each
	* category it is registered under.  Its
	* <code>onDeregistration</code> method will be called each time
	* it is deregistered from a category or when the registry is
	* finalized.
	*
	* @param providers an Iterator containing service provider
	* objects to be registered.
	*
	* @exception IllegalArgumentException if <code>providers</code>
	* is <code>null</code> or contains a <code>null</code> entry.
	*/
	@:overload @:public public function registerServiceProviders(providers : java.util.Iterator<Dynamic>) : Void;
	
	/**
	* Removes a service provider object from the given category.  If
	* the provider was not previously registered, nothing happens and
	* <code>false</code> is returned.  Otherwise, <code>true</code>
	* is returned.  If an object of the same class as
	* <code>provider</code> but not equal (using <code>==</code>) to
	* <code>provider</code> is registered, it will not be
	* deregistered.
	*
	* <p> If <code>provider</code> implements the
	* <code>RegisterableService</code> interface, its
	* <code>onDeregistration</code> method will be called.
	*
	* @param provider the service provider object to be deregistered.
	* @param category the category from which to deregister the
	* provider.
	*
	* @return <code>true</code> if the provider was previously
	* registered in the same category category,
	* <code>false</code> otherwise.
	*
	* @exception IllegalArgumentException if <code>provider</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	* @exception ClassCastException if provider does not implement
	* the class defined by <code>category</code>.
	*/
	@:overload @:public public function deregisterServiceProvider<T>(provider : T, category : Class<T>) : Bool;
	
	/**
	* Removes a service provider object from all categories that
	* contain it.
	*
	* @param provider the service provider object to be deregistered.
	*
	* @exception IllegalArgumentException if <code>provider</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function deregisterServiceProvider(provider : Dynamic) : Void;
	
	/**
	* Returns <code>true</code> if <code>provider</code> is currently
	* registered.
	*
	* @param provider the service provider object to be queried.
	*
	* @return <code>true</code> if the given provider has been
	* registered.
	*
	* @exception IllegalArgumentException if <code>provider</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function contains(provider : Dynamic) : Bool;
	
	/**
	* Returns an <code>Iterator</code> containing all registered
	* service providers in the given category.  If
	* <code>useOrdering</code> is <code>false</code>, the iterator
	* will return all of the server provider objects in an arbitrary
	* order.  Otherwise, the ordering will respect any pairwise
	* orderings that have been set.  If the graph of pairwise
	* orderings contains cycles, any providers that belong to a cycle
	* will not be returned.
	*
	* @param category the category to be retrieved from.
	* @param useOrdering <code>true</code> if pairwise orderings
	* should be taken account in ordering the returned objects.
	*
	* @return an <code>Iterator</code> containing service provider
	* objects from the given category, possibly in order.
	*
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	*/
	@:overload @:public public function getServiceProviders<T>(category : Class<T>, useOrdering : Bool) : java.util.Iterator<T>;
	
	/**
	* Returns an <code>Iterator</code> containing service provider
	* objects within a given category that satisfy a criterion
	* imposed by the supplied <code>ServiceRegistry.Filter</code>
	* object's <code>filter</code> method.
	*
	* <p> The <code>useOrdering</code> argument controls the
	* ordering of the results using the same rules as
	* <code>getServiceProviders(Class, boolean)</code>.
	*
	* @param category the category to be retrieved from.
	* @param filter an instance of <code>ServiceRegistry.Filter</code>
	* whose <code>filter</code> method will be invoked.
	* @param useOrdering <code>true</code> if pairwise orderings
	* should be taken account in ordering the returned objects.
	*
	* @return an <code>Iterator</code> containing service provider
	* objects from the given category, possibly in order.
	*
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	*/
	@:overload @:public public function getServiceProviders<T>(category : Class<T>, filter : javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter, useOrdering : Bool) : java.util.Iterator<T>;
	
	/**
	* Returns the currently registered service provider object that
	* is of the given class type.  At most one object of a given
	* class is allowed to be registered at any given time.  If no
	* registered object has the desired class type, <code>null</code>
	* is returned.
	*
	* @param providerClass the <code>Class</code> of the desired
	* service provider object.
	*
	* @return a currently registered service provider object with the
	* desired <code>Class</code>type, or <code>null</code> is none is
	* present.
	*
	* @exception IllegalArgumentException if <code>providerClass</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function getServiceProviderByClass<T>(providerClass : Class<T>) : T;
	
	/**
	* Sets a pairwise ordering between two service provider objects
	* within a given category.  If one or both objects are not
	* currently registered within the given category, or if the
	* desired ordering is already set, nothing happens and
	* <code>false</code> is returned.  If the providers previously
	* were ordered in the reverse direction, that ordering is
	* removed.
	*
	* <p> The ordering will be used by the
	* <code>getServiceProviders</code> methods when their
	* <code>useOrdering</code> argument is <code>true</code>.
	*
	* @param category a <code>Class</code> object indicating the
	* category under which the preference is to be established.
	* @param firstProvider the preferred provider.
	* @param secondProvider the provider to which
	* <code>firstProvider</code> is preferred.
	*
	* @return <code>true</code> if a previously unset ordering
	* was established.
	*
	* @exception IllegalArgumentException if either provider is
	* <code>null</code> or they are the same object.
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	*/
	@:overload @:public public function setOrdering<T>(category : Class<T>, firstProvider : T, secondProvider : T) : Bool;
	
	/**
	* Sets a pairwise ordering between two service provider objects
	* within a given category.  If one or both objects are not
	* currently registered within the given category, or if no
	* ordering is currently set between them, nothing happens
	* and <code>false</code> is returned.
	*
	* <p> The ordering will be used by the
	* <code>getServiceProviders</code> methods when their
	* <code>useOrdering</code> argument is <code>true</code>.
	*
	* @param category a <code>Class</code> object indicating the
	* category under which the preference is to be disestablished.
	* @param firstProvider the formerly preferred provider.
	* @param secondProvider the provider to which
	* <code>firstProvider</code> was formerly preferred.
	*
	* @return <code>true</code> if a previously set ordering was
	* disestablished.
	*
	* @exception IllegalArgumentException if either provider is
	* <code>null</code> or they are the same object.
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	*/
	@:overload @:public public function unsetOrdering<T>(category : Class<T>, firstProvider : T, secondProvider : T) : Bool;
	
	/**
	* Deregisters all service provider object currently registered
	* under the given category.
	*
	* @param category the category to be emptied.
	*
	* @exception IllegalArgumentException if there is no category
	* corresponding to <code>category</code>.
	*/
	@:overload @:public public function deregisterAll(category : Class<Dynamic>) : Void;
	
	/**
	* Deregisters all currently registered service providers from all
	* categories.
	*/
	@:overload @:public public function deregisterAll() : Void;
	
	/**
	* Finalizes this object prior to garbage collection.  The
	* <code>deregisterAll</code> method is called to deregister all
	* currently registered service providers.  This method should not
	* be called from application code.
	*
	* @exception Throwable if an error occurs during superclass
	* finalization.
	*/
	@:overload @:public public function finalize() : Void;
	
	
}
/**
* A simple filter interface used by
* <code>ServiceRegistry.getServiceProviders</code> to select
* providers matching an arbitrary criterion.  Classes that
* implement this interface should be defined in order to make use
* of the <code>getServiceProviders</code> method of
* <code>ServiceRegistry</code> that takes a <code>Filter</code>.
*
* @see ServiceRegistry#getServiceProviders(Class, ServiceRegistry.Filter, boolean)
*/
@:native('javax$imageio$spi$ServiceRegistry$Filter') extern interface ServiceRegistry_Filter
{
	/**
	* Returns <code>true</code> if the given
	* <code>provider</code> object matches the criterion defined
	* by this <code>Filter</code>.
	*
	* @param provider a service provider <code>Object</code>.
	*
	* @return true if the provider matches the criterion.
	*/
	@:overload public function filter(provider : Dynamic) : Bool;
	
	
}
@:internal extern class SubRegistry
{
	@:overload @:public public function new(registry : javax.imageio.spi.ServiceRegistry, category : Class<Dynamic>) : Void;
	
	@:overload @:public public function registerServiceProvider(provider : Dynamic) : Bool;
	
	/**
	* If the provider was not previously registered, do nothing.
	*
	* @return true if the provider was previously registered.
	*/
	@:overload @:public public function deregisterServiceProvider(provider : Dynamic) : Bool;
	
	@:overload @:public public function contains(provider : Dynamic) : Bool;
	
	@:overload @:public public function setOrdering(firstProvider : Dynamic, secondProvider : Dynamic) : Bool;
	
	@:overload @:public public function unsetOrdering(firstProvider : Dynamic, secondProvider : Dynamic) : Bool;
	
	@:overload @:public public function getServiceProviders(useOrdering : Bool) : java.util.Iterator<Dynamic>;
	
	@:overload @:public public function getServiceProviderByClass<T>(providerClass : Class<T>) : T;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function finalize() : Void;
	
	
}
@:internal extern class FilterIterator<T> implements java.util.Iterator<T>
{
	@:overload @:public public function new(iter : java.util.Iterator<T>, filter : javax.imageio.spi.ServiceRegistry.ServiceRegistry_Filter) : Void;
	
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function next() : T;
	
	@:overload @:public public function remove() : Void;
	
	
}
