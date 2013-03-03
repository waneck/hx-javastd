package javax.security.auth.login;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Configuration
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Get the installed login Configuration.
	*
	* <p>
	*
	* @return the login Configuration.  If a Configuration object was set
	*          via the <code>Configuration.setConfiguration</code> method,
	*          then that object is returned.  Otherwise, a default
	*          Configuration object is returned.
	*
	* @exception SecurityException if the caller does not have permission
	*                          to retrieve the Configuration.
	*
	* @see #setConfiguration
	*/
	@:overload @:public @:static public static function getConfiguration() : javax.security.auth.login.Configuration;
	
	/**
	* Set the login <code>Configuration</code>.
	*
	* <p>
	*
	* @param configuration the new <code>Configuration</code>
	*
	* @exception SecurityException if the current thread does not have
	*                  Permission to set the <code>Configuration</code>.
	*
	* @see #getConfiguration
	*/
	@:overload @:public @:static public static function setConfiguration(configuration : javax.security.auth.login.Configuration) : Void;
	
	/**
	* Returns a Configuration object of the specified type.
	*
	* <p> This method traverses the list of registered security providers,
	* starting with the most preferred Provider.
	* A new Configuration object encapsulating the
	* ConfigurationSpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the specified Configuration type.  See the Configuration
	*    section in the <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Configuration">
	*    Java Cryptography Architecture Standard Algorithm Name
	*    Documentation</a> for a list of standard Configuration types.
	*
	* @param params parameters for the Configuration, which may be null.
	*
	* @return the new Configuration object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Configuration instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified parameters
	*          are not understood by the ConfigurationSpi implementation
	*          from the selected Provider.
	*
	* @exception NoSuchAlgorithmException if no Provider supports a
	*          ConfigurationSpi implementation for the specified type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getInstance(type : String, params : javax.security.auth.login.Configuration.Configuration_Parameters) : javax.security.auth.login.Configuration;
	
	/**
	* Returns a Configuration object of the specified type.
	*
	* <p> A new Configuration object encapsulating the
	* ConfigurationSpi implementation from the specified provider
	* is returned.   The specified provider must be registered
	* in the provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the specified Configuration type.  See the Configuration
	*    section in the <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Configuration">
	*    Java Cryptography Architecture Standard Algorithm Name
	*    Documentation</a> for a list of standard Configuration types.
	*
	* @param params parameters for the Configuration, which may be null.
	*
	* @param provider the provider.
	*
	* @return the new Configuration object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Configuration instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified provider
	*          is null or empty,
	*          or if the specified parameters are not understood by
	*          the ConfigurationSpi implementation from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception NoSuchAlgorithmException if the specified provider does not
	*          support a ConfigurationSpi implementation for the specified
	*          type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getInstance(type : String, params : javax.security.auth.login.Configuration.Configuration_Parameters, provider : String) : javax.security.auth.login.Configuration;
	
	/**
	* Returns a Configuration object of the specified type.
	*
	* <p> A new Configuration object encapsulating the
	* ConfigurationSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param type the specified Configuration type.  See the Configuration
	*    section in the <a href=
	*    "{@docRoot}/../technotes/guides/security/StandardNames.html#Configuration">
	*    Java Cryptography Architecture Standard Algorithm Name
	*    Documentation</a> for a list of standard Configuration types.
	*
	* @param params parameters for the Configuration, which may be null.
	*
	* @param provider the Provider.
	*
	* @return the new Configuration object.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get a Configuration instance for the specified type.
	*
	* @exception NullPointerException if the specified type is null.
	*
	* @exception IllegalArgumentException if the specified Provider is null,
	*          or if the specified parameters are not understood by
	*          the ConfigurationSpi implementation from the specified Provider.
	*
	* @exception NoSuchAlgorithmException if the specified Provider does not
	*          support a ConfigurationSpi implementation for the specified
	*          type.
	*
	* @see Provider
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getInstance(type : String, params : javax.security.auth.login.Configuration.Configuration_Parameters, provider : java.security.Provider) : javax.security.auth.login.Configuration;
	
	/**
	* Return the Provider of this Configuration.
	*
	* <p> This Configuration instance will only have a Provider if it
	* was obtained via a call to <code>Configuration.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return the Provider of this Configuration, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getProvider() : java.security.Provider;
	
	/**
	* Return the type of this Configuration.
	*
	* <p> This Configuration instance will only have a type if it
	* was obtained via a call to <code>Configuration.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return the type of this Configuration, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getType() : String;
	
	/**
	* Return Configuration parameters.
	*
	* <p> This Configuration instance will only have parameters if it
	* was obtained via a call to <code>Configuration.getInstance</code>.
	* Otherwise this method returns null.
	*
	* @return Configuration parameters, or null.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getParameters() : javax.security.auth.login.Configuration.Configuration_Parameters;
	
	/**
	* Retrieve the AppConfigurationEntries for the specified <i>name</i>
	* from this Configuration.
	*
	* <p>
	*
	* @param name the name used to index the Configuration.
	*
	* @return an array of AppConfigurationEntries for the specified <i>name</i>
	*          from this Configuration, or null if there are no entries
	*          for the specified <i>name</i>
	*/
	@:overload @:public @:abstract public function getAppConfigurationEntry(name : String) : java.NativeArray<javax.security.auth.login.AppConfigurationEntry>;
	
	/**
	* Refresh and reload the Configuration.
	*
	* <p> This method causes this Configuration object to refresh/reload its
	* contents in an implementation-dependent manner.
	* For example, if this Configuration object stores its entries in a file,
	* calling <code>refresh</code> may cause the file to be re-read.
	*
	* <p> The default implementation of this method does nothing.
	* This method should be overridden if a refresh operation is supported
	* by the implementation.
	*
	* @exception SecurityException if the caller does not have permission
	*                          to refresh its Configuration.
	*/
	@:overload @:public public function refresh() : Void;
	
	
}
/**
* This subclass is returned by the getInstance calls.  All Configuration
* calls are delegated to the underlying ConfigurationSpi.
*/
@:native('javax$security$auth$login$Configuration$ConfigDelegate') @:internal extern class Configuration_ConfigDelegate extends javax.security.auth.login.Configuration
{
	@:overload @:public override public function getType() : String;
	
	@:overload @:public override public function getParameters() : javax.security.auth.login.Configuration.Configuration_Parameters;
	
	@:overload @:public override public function getProvider() : java.security.Provider;
	
	@:overload @:public override public function getAppConfigurationEntry(name : String) : java.NativeArray<javax.security.auth.login.AppConfigurationEntry>;
	
	@:overload @:public override public function refresh() : Void;
	
	
}
/**
* This represents a marker interface for Configuration parameters.
*
* @since 1.6
*/
@:require(java6) @:native('javax$security$auth$login$Configuration$Parameters') extern interface Configuration_Parameters
{
	
}
