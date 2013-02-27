package sun.security.jca;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class GetInstance
{
	@:overload public static function getService(type : String, algorithm : String) : java.security.Provider.Provider_Service;
	
	@:overload public static function getService(type : String, algorithm : String, provider : String) : java.security.Provider.Provider_Service;
	
	@:overload public static function getService(type : String, algorithm : String, provider : java.security.Provider) : java.security.Provider.Provider_Service;
	
	/**
	* Return a List of all the available Services that implement
	* (type, algorithm). Note that the list is initialized lazily
	* and Provider loading and lookup is only trigered when
	* necessary.
	*/
	@:overload public static function getServices(type : String, algorithm : String) : java.util.List<java.security.Provider.Provider_Service>;
	
	/**
	* This method exists for compatibility with JCE only. It will be removed
	* once JCE has been changed to use the replacement method.
	* @deprecated use getServices(List<ServiceId>) instead
	*/
	@:overload public static function getServices(type : String, algorithms : java.util.List<String>) : java.util.List<java.security.Provider.Provider_Service>;
	
	/**
	* Return a List of all the available Services that implement any of
	* the specified algorithms. See getServices(String, String) for detals.
	*/
	@:overload public static function getServices(ids : java.util.List<sun.security.jca.ServiceId>) : java.util.List<java.security.Provider.Provider_Service>;
	
	/*
	* For all the getInstance() methods below:
	* @param type the type of engine (e.g. MessageDigest)
	* @param clazz the Spi class that the implementation must subclass
	*   (e.g. MessageDigestSpi.class) or null if no superclass check
	*   is required
	* @param algorithm the name of the algorithm (or alias), e.g. MD5
	* @param provider the provider (String or Provider object)
	* @param param the parameter to pass to the Spi constructor
	*   (for CertStores)
	*
	* There are overloaded methods for all the permutations.
	*/
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String) : GetInstance_Instance;
	
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String, param : Dynamic) : GetInstance_Instance;
	
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String, provider : String) : GetInstance_Instance;
	
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String, param : Dynamic, provider : String) : GetInstance_Instance;
	
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String, provider : java.security.Provider) : GetInstance_Instance;
	
	@:overload public static function getInstance(type : String, clazz : Class<Dynamic>, algorithm : String, param : Dynamic, provider : java.security.Provider) : GetInstance_Instance;
	
	/*
	* The two getInstance() methods below take a service. They are
	* intended for classes that cannot use the standard methods, e.g.
	* because they implement delayed provider selection like the
	* Signature class.
	*/
	@:overload public static function getInstance(s : java.security.Provider.Provider_Service, clazz : Class<Dynamic>) : GetInstance_Instance;
	
	@:overload public static function getInstance(s : java.security.Provider.Provider_Service, clazz : Class<Dynamic>, param : Dynamic) : GetInstance_Instance;
	
	/**
	* Check is subClass is a subclass of superClass. If not,
	* throw a NoSuchAlgorithmException.
	*/
	@:overload public static function checkSuperClass(s : java.security.Provider.Provider_Service, subClass : Class<Dynamic>, superClass : Class<Dynamic>) : Void;
	
	
}
/**
* Static inner class representing a newly created instance.
*/
@:native('sun$security$jca$GetInstance$Instance') extern class GetInstance_Instance
{
	public var provider(default, null) : java.security.Provider;
	
	public var impl(default, null) : Dynamic;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	
}
