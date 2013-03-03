package javax.smartcardio;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TerminalFactory
{
	/**
	* Get the default TerminalFactory type.
	*
	* <p>It is determined as follows:
	*
	* when this class is initialized, the system property
	* <code>javax.smartcardio.TerminalFactory.DefaultType</code>
	* is examined. If it is set, a TerminalFactory of this type is
	* instantiated by calling the {@linkplain #getInstance
	* getInstance(String,Object)} method passing
	* <code>null</code> as the value for <code>params</code>. If the call
	* succeeds, the type becomes the default type and the factory becomes
	* the {@linkplain #getDefault default} factory.
	*
	* <p>If the system property is not set or the getInstance() call fails
	* for any reason, the system defaults to an implementation specific
	* default type and TerminalFactory.
	*
	* @return the default TerminalFactory type
	*/
	@:overload @:public @:static public static function getDefaultType() : String;
	
	/**
	* Returns the default TerminalFactory instance. See
	* {@linkplain #getDefaultType} for more information.
	*
	* <p>A default TerminalFactory is always available. However, depending
	* on the implementation, it may not offer any terminals.
	*
	* @return the default TerminalFactory
	*/
	@:overload @:public @:static public static function getDefault() : javax.smartcardio.TerminalFactory;
	
	/**
	* Returns a TerminalFactory of the specified type that is initialized
	* with the specified parameters.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new TerminalFactory object encapsulating the
	* TerminalFactorySpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@linkplain Security#getProviders() Security.getProviders()} method.
	*
	* <p>The <code>TerminalFactory</code> is initialized with the
	* specified parameters Object. The type of parameters
	* needed may vary between different types of <code>TerminalFactory</code>s.
	*
	* @param type the type of the requested TerminalFactory
	* @param params the parameters to pass to the TerminalFactorySpi
	*   implementation, or null if no parameters are needed
	* @return a TerminalFactory of the specified type
	*
	* @throws NullPointerException if type is null
	* @throws NoSuchAlgorithmException if no Provider supports a
	*   TerminalFactorySpi of the specified type
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : Dynamic) : javax.smartcardio.TerminalFactory;
	
	/**
	* Returns a TerminalFactory of the specified type that is initialized
	* with the specified parameters.
	*
	* <p> A new TerminalFactory object encapsulating the
	* TerminalFactorySpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@linkplain Security#getProviders() Security.getProviders()} method.
	*
	* <p>The <code>TerminalFactory</code> is initialized with the
	* specified parameters Object. The type of parameters
	* needed may vary between different types of <code>TerminalFactory</code>s.
	*
	* @param type the type of the requested TerminalFactory
	* @param params the parameters to pass to the TerminalFactorySpi
	*   implementation, or null if no parameters are needed
	* @param provider the name of the provider
	* @return a TerminalFactory of the specified type
	*
	* @throws NullPointerException if type is null
	* @throws IllegalArgumentException if provider is null or the empty String
	* @throws NoSuchAlgorithmException if a TerminalFactorySpi implementation
	*   of the specified type is not available from the specified provider
	* @throws NoSuchAlgorithmException if no TerminalFactory of the
	*   specified type could be found
	* @throws NoSuchProviderException if the specified provider could not
	*   be found
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : Dynamic, provider : String) : javax.smartcardio.TerminalFactory;
	
	/**
	* Returns a TerminalFactory of the specified type that is initialized
	* with the specified parameters.
	*
	* <p> A new TerminalFactory object encapsulating the
	* TerminalFactorySpi implementation from the specified provider object
	* is returned. Note that the specified provider object does not have to be
	* registered in the provider list.
	*
	* <p>The <code>TerminalFactory</code> is initialized with the
	* specified parameters Object. The type of parameters
	* needed may vary between different types of <code>TerminalFactory</code>s.
	*
	* @param type the type of the requested TerminalFactory
	* @param params the parameters to pass to the TerminalFactorySpi
	*   implementation, or null if no parameters are needed
	* @param provider the provider
	* @return a TerminalFactory of the specified type
	*
	* @throws NullPointerException if type is null
	* @throws IllegalArgumentException if provider is null
	* @throws NoSuchAlgorithmException if a TerminalFactorySpi implementation
	*   of the specified type is not available from the specified Provider
	*/
	@:overload @:public @:static public static function getInstance(type : String, params : Dynamic, provider : java.security.Provider) : javax.smartcardio.TerminalFactory;
	
	/**
	* Returns the provider of this TerminalFactory.
	*
	* @return the provider of this TerminalFactory.
	*/
	@:overload @:public public function getProvider() : java.security.Provider;
	
	/**
	* Returns the type of this TerminalFactory. This is the value that was
	* specified in the getInstance() method that returned this object.
	*
	* @return the type of this TerminalFactory
	*/
	@:overload @:public public function getType() : String;
	
	/**
	* Returns a new CardTerminals object encapsulating the terminals
	* supported by this factory.
	* See the class comment of the {@linkplain CardTerminals} class
	* regarding how the returned objects can be shared and reused.
	*
	* @return a new CardTerminals object encapsulating the terminals
	* supported by this factory.
	*/
	@:overload @:public public function terminals() : javax.smartcardio.CardTerminals;
	
	/**
	* Returns a string representation of this TerminalFactory.
	*
	* @return a string representation of this TerminalFactory.
	*/
	@:overload @:public public function toString() : String;
	
	
}
@:native('javax$smartcardio$TerminalFactory$NoneProvider') @:internal extern class TerminalFactory_NoneProvider extends java.security.Provider
{
	
}
@:native('javax$smartcardio$TerminalFactory$NoneFactorySpi') @:internal extern class TerminalFactory_NoneFactorySpi extends javax.smartcardio.TerminalFactorySpi
{
	@:overload @:protected override private function engineTerminals() : javax.smartcardio.CardTerminals;
	
	
}
@:native('javax$smartcardio$TerminalFactory$NoneCardTerminals') @:internal extern class TerminalFactory_NoneCardTerminals extends javax.smartcardio.CardTerminals
{
	@:overload @:public override public function list(state : javax.smartcardio.CardTerminals.CardTerminals_State) : java.util.List<javax.smartcardio.CardTerminal>;
	
	@:overload @:public override public function waitForChange(timeout : haxe.Int64) : Bool;
	
	
}
