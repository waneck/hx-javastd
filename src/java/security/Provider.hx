package java.security;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Provider extends java.util.Properties
{
	/**
	* Constructs a provider with the specified name, version number,
	* and information.
	*
	* @param name the provider name.
	*
	* @param version the provider version number.
	*
	* @param info a description of the provider and its services.
	*/
	@:overload private function new(name : String, version : Float, info : String) : Void;
	
	/**
	* Returns the name of this provider.
	*
	* @return the name of this provider.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the version number for this provider.
	*
	* @return the version number for this provider.
	*/
	@:overload public function getVersion() : Float;
	
	/**
	* Returns a human-readable description of the provider and its
	* services.  This may return an HTML page, with relevant links.
	*
	* @return a description of the provider and its services.
	*/
	@:overload public function getInfo() : String;
	
	/**
	* Returns a string with the name and the version number
	* of this provider.
	*
	* @return the string with the name and the version number
	* for this provider.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Clears this provider so that it no longer contains the properties
	* used to look up facilities implemented by the provider.
	*
	* <p>First, if there is a security manager, its
	* <code>checkSecurityAccess</code> method is called with the string
	* <code>"clearProviderProperties."+name</code> (where <code>name</code>
	* is the provider name) to see if it's ok to clear this provider.
	* If the default implementation of <code>checkSecurityAccess</code>
	* is used (that is, that method is not overriden), then this results in
	* a call to the security manager's <code>checkPermission</code> method
	* with a <code>SecurityPermission("clearProviderProperties."+name)</code>
	* permission.
	*
	* @throws  SecurityException
	*          if a security manager exists and its <code>{@link
	*          java.lang.SecurityManager#checkSecurityAccess}</code> method
	*          denies access to clear this provider
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized override public function clear() : Void;
	
	/**
	* Reads a property list (key and element pairs) from the input stream.
	*
	* @param inStream   the input stream.
	* @exception  IOException  if an error occurred when reading from the
	*               input stream.
	* @see java.util.Properties#load
	*/
	@:overload @:synchronized override public function load(inStream : java.io.InputStream) : Void;
	
	/**
	* Copies all of the mappings from the specified Map to this provider.
	* These mappings will replace any properties that this provider had
	* for any of the keys currently in the specified Map.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized override public function putAll(t : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Returns an unmodifiable Set view of the property entries contained
	* in this Provider.
	*
	* @see   java.util.Map.Entry
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	/**
	* Returns an unmodifiable Set view of the property keys contained in
	* this provider.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns an unmodifiable Collection view of the property values
	* contained in this provider.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload override public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Sets the <code>key</code> property to have the specified
	* <code>value</code>.
	*
	* <p>First, if there is a security manager, its
	* <code>checkSecurityAccess</code> method is called with the string
	* <code>"putProviderProperty."+name</code>, where <code>name</code> is the
	* provider name, to see if it's ok to set this provider's property values.
	* If the default implementation of <code>checkSecurityAccess</code>
	* is used (that is, that method is not overriden), then this results in
	* a call to the security manager's <code>checkPermission</code> method
	* with a <code>SecurityPermission("putProviderProperty."+name)</code>
	* permission.
	*
	* @param key the property key.
	*
	* @param value the property value.
	*
	* @return the previous value of the specified property
	* (<code>key</code>), or null if it did not have one.
	*
	* @throws  SecurityException
	*          if a security manager exists and its <code>{@link
	*          java.lang.SecurityManager#checkSecurityAccess}</code> method
	*          denies access to set property values.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the <code>key</code> property (and its corresponding
	* <code>value</code>).
	*
	* <p>First, if there is a security manager, its
	* <code>checkSecurityAccess</code> method is called with the string
	* <code>"removeProviderProperty."+name</code>, where <code>name</code> is
	* the provider name, to see if it's ok to remove this provider's
	* properties. If the default implementation of
	* <code>checkSecurityAccess</code> is used (that is, that method is not
	* overriden), then this results in a call to the security manager's
	* <code>checkPermission</code> method with a
	* <code>SecurityPermission("removeProviderProperty."+name)</code>
	* permission.
	*
	* @param key the key for the property to be removed.
	*
	* @return the value to which the key had been mapped,
	* or null if the key did not have a mapping.
	*
	* @throws  SecurityException
	*          if a security manager exists and its <code>{@link
	*          java.lang.SecurityManager#checkSecurityAccess}</code> method
	*          denies access to remove this provider's properties.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload @:synchronized override public function remove(key : Dynamic) : Dynamic;
	
	@:overload override public function get(key : Dynamic) : Dynamic;
	
	@:overload override public function keys() : java.util.Enumeration<Dynamic>;
	
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	@:overload override public function getProperty(key : String) : String;
	
	/**
	* Get the service describing this Provider's implementation of the
	* specified type of this algorithm or alias. If no such
	* implementation exists, this method returns null. If there are two
	* matching services, one added to this provider using
	* {@link #putService putService()} and one added via {@link #put put()},
	* the service added via {@link #putService putService()} is returned.
	*
	* @param type the type of {@link Service service} requested
	* (for example, <code>MessageDigest</code>)
	* @param algorithm the case insensitive algorithm name (or alternate
	* alias) of the service requested (for example, <code>SHA-1</code>)
	*
	* @return the service describing this Provider's matching service
	* or null if no such service exists
	*
	* @throws NullPointerException if type or algorithm is null
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public function getService(type : String, algorithm : String) : java.security.Provider.Provider_Service;
	
	/**
	* Get an unmodifiable Set of all services supported by
	* this Provider.
	*
	* @return an unmodifiable Set of all services supported by
	* this Provider
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public function getServices() : java.util.Set<java.security.Provider.Provider_Service>;
	
	/**
	* Add a service. If a service of the same type with the same algorithm
	* name exists and it was added using {@link #putService putService()},
	* it is replaced by the new service.
	* This method also places information about this service
	* in the provider's Hashtable values in the format described in the
	* <a href="../../../technotes/guides/security/crypto/CryptoSpec.html">
	* Java Cryptography Architecture API Specification &amp; Reference </a>.
	*
	* <p>Also, if there is a security manager, its
	* <code>checkSecurityAccess</code> method is called with the string
	* <code>"putProviderProperty."+name</code>, where <code>name</code> is
	* the provider name, to see if it's ok to set this provider's property
	* values. If the default implementation of <code>checkSecurityAccess</code>
	* is used (that is, that method is not overriden), then this results in
	* a call to the security manager's <code>checkPermission</code> method with
	* a <code>SecurityPermission("putProviderProperty."+name)</code>
	* permission.
	*
	* @param s the Service to add
	*
	* @throws SecurityException
	*      if a security manager exists and its <code>{@link
	*      java.lang.SecurityManager#checkSecurityAccess}</code> method denies
	*      access to set property values.
	* @throws NullPointerException if s is null
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized private function putService(s : java.security.Provider.Provider_Service) : Void;
	
	/**
	* Remove a service previously added using
	* {@link #putService putService()}. The specified service is removed from
	* this provider. It will no longer be returned by
	* {@link #getService getService()} and its information will be removed
	* from this provider's Hashtable.
	*
	* <p>Also, if there is a security manager, its
	* <code>checkSecurityAccess</code> method is called with the string
	* <code>"removeProviderProperty."+name</code>, where <code>name</code> is
	* the provider name, to see if it's ok to remove this provider's
	* properties. If the default implementation of
	* <code>checkSecurityAccess</code> is used (that is, that method is not
	* overriden), then this results in a call to the security manager's
	* <code>checkPermission</code> method with a
	* <code>SecurityPermission("removeProviderProperty."+name)</code>
	* permission.
	*
	* @param s the Service to be removed
	*
	* @throws  SecurityException
	*          if a security manager exists and its <code>{@link
	*          java.lang.SecurityManager#checkSecurityAccess}</code> method denies
	*          access to remove this provider's properties.
	* @throws NullPointerException if s is null
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized private function removeService(s : java.security.Provider.Provider_Service) : Void;
	
	
}
@:native('java$security$Provider$ServiceKey') @:internal extern class Provider_ServiceKey
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('java$security$Provider$UString') @:internal extern class Provider_UString
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
@:native('java$security$Provider$EngineDescription') @:internal extern class Provider_EngineDescription
{
	
}
/**
* The description of a security service. It encapsulates the properties
* of a service and contains a factory method to obtain new implementation
* instances of this service.
*
* <p>Each service has a provider that offers the service, a type,
* an algorithm name, and the name of the class that implements the
* service. Optionally, it also includes a list of alternate algorithm
* names for this service (aliases) and attributes, which are a map of
* (name, value) String pairs.
*
* <p>This class defines the methods {@link #supportsParameter
* supportsParameter()} and {@link #newInstance newInstance()}
* which are used by the Java security framework when it searches for
* suitable services and instantes them. The valid arguments to those
* methods depend on the type of service. For the service types defined
* within Java SE, see the
* <a href="../../../technotes/guides/security/crypto/CryptoSpec.html">
* Java Cryptography Architecture API Specification &amp; Reference </a>
* for the valid values.
* Note that components outside of Java SE can define additional types of
* services and their behavior.
*
* <p>Instances of this class are immutable.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$Provider$Service') extern class Provider_Service
{
	/**
	* Construct a new service.
	*
	* @param provider the provider that offers this service
	* @param type the type of this service
	* @param algorithm the algorithm name
	* @param className the name of the class implementing this service
	* @param aliases List of aliases or null if algorithm has no aliases
	* @param attributes Map of attributes or null if this implementation
	*                   has no attributes
	*
	* @throws NullPointerException if provider, type, algorithm, or
	* className is null
	*/
	@:overload public function new(provider : java.security.Provider, type : String, algorithm : String, className : String, aliases : java.util.List<String>, attributes : java.util.Map<String, String>) : Void;
	
	/**
	* Get the type of this service. For example, <code>MessageDigest</code>.
	*
	* @return the type of this service
	*/
	@:overload @:final public function getType() : String;
	
	/**
	* Return the name of the algorithm of this service. For example,
	* <code>SHA-1</code>.
	*
	* @return the algorithm of this service
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Return the Provider of this service.
	*
	* @return the Provider of this service
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Return the name of the class implementing this service.
	*
	* @return the name of the class implementing this service
	*/
	@:overload @:final public function getClassName() : String;
	
	/**
	* Return the value of the specified attribute or null if this
	* attribute is not set for this Service.
	*
	* @param name the name of the requested attribute
	*
	* @return the value of the specified attribute or null if the
	*         attribute is not present
	*
	* @throws NullPointerException if name is null
	*/
	@:overload @:final public function getAttribute(name : String) : String;
	
	/**
	* Return a new instance of the implementation described by this
	* service. The security provider framework uses this method to
	* construct implementations. Applications will typically not need
	* to call it.
	*
	* <p>The default implementation uses reflection to invoke the
	* standard constructor for this type of service.
	* Security providers can override this method to implement
	* instantiation in a different way.
	* For details and the values of constructorParameter that are
	* valid for the various types of services see the
	* <a href="../../../technotes/guides/security/crypto/CryptoSpec.html">
	* Java Cryptography Architecture API Specification &amp;
	* Reference</a>.
	*
	* @param constructorParameter the value to pass to the constructor,
	* or null if this type of service does not use a constructorParameter.
	*
	* @return a new implementation of this service
	*
	* @throws InvalidParameterException if the value of
	* constructorParameter is invalid for this type of service.
	* @throws NoSuchAlgorithmException if instantation failed for
	* any other reason.
	*/
	@:overload public function newInstance(constructorParameter : Dynamic) : Dynamic;
	
	/**
	* Test whether this Service can use the specified parameter.
	* Returns false if this service cannot use the parameter. Returns
	* true if this service can use the parameter, if a fast test is
	* infeasible, or if the status is unknown.
	*
	* <p>The security provider framework uses this method with
	* some types of services to quickly exclude non-matching
	* implementations for consideration.
	* Applications will typically not need to call it.
	*
	* <p>For details and the values of parameter that are valid for the
	* various types of services see the top of this class and the
	* <a href="../../../technotes/guides/security/crypto/CryptoSpec.html">
	* Java Cryptography Architecture API Specification &amp;
	* Reference</a>.
	* Security providers can override it to implement their own test.
	*
	* @param parameter the parameter to test
	*
	* @return false if this this service cannot use the specified
	* parameter; true if it can possibly use the parameter
	*
	* @throws InvalidParameterException if the value of parameter is
	* invalid for this type of service or if this method cannot be
	* used with this type of service
	*/
	@:overload public function supportsParameter(parameter : Dynamic) : Bool;
	
	/**
	* Return a String representation of this service.
	*
	* @return a String representation of this service.
	*/
	@:overload public function toString() : String;
	
	
}
