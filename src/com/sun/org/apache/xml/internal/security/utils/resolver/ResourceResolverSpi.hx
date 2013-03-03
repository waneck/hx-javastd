package com.sun.org.apache.xml.internal.security.utils.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class ResourceResolverSpi
{
	/** Field _properties */
	@:protected private var _properties : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* This is the workhorse method used to resolve resources.
	*
	* @param uri
	* @param BaseURI
	* @return the resource wrapped arround a XMLSignatureInput
	*
	* @throws ResourceResolverException
	*/
	@:overload @:public @:abstract public function engineResolve(uri : org.w3c.dom.Attr, BaseURI : String) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method engineSetProperty
	*
	* @param key
	* @param value
	*/
	@:overload @:public public function engineSetProperty(key : String, value : String) : Void;
	
	/**
	* Method engineGetProperty
	*
	* @param key
	* @return the value of the property
	*/
	@:overload @:public public function engineGetProperty(key : String) : String;
	
	/**
	*
	* @param properties
	*/
	@:overload @:public public function engineAddProperies(properties : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Tells if the implementation does can be reused by several threads safely.
	* It normally means that the implemantation does not have any member, or there is
	* member change betwen engineCanResolve & engineResolve invocations. Or it mantians all
	* member info in ThreadLocal methods.
	*/
	@:overload @:public public function engineIsThreadSafe() : Bool;
	
	/**
	* This method helps the {@link ResourceResolver} to decide whether a
	* {@link ResourceResolverSpi} is able to perform the requested action.
	*
	* @param uri
	* @param BaseURI
	* @return true if the engine can resolve the uri
	*/
	@:overload @:public @:abstract public function engineCanResolve(uri : org.w3c.dom.Attr, BaseURI : String) : Bool;
	
	/**
	* Method engineGetPropertyKeys
	*
	* @return the property keys
	*/
	@:overload @:public public function engineGetPropertyKeys() : java.NativeArray<String>;
	
	/**
	* Method understandsProperty
	*
	* @param propertyToTest
	* @return true if understands the property
	*/
	@:overload @:public public function understandsProperty(propertyToTest : String) : Bool;
	
	/**
	* Fixes a platform dependent filename to standard URI form.
	*
	* @param str The string to fix.
	*
	* @return Returns the fixed URI string.
	*/
	@:overload @:public @:static public static function fixURI(str : String) : String;
	
	
}
