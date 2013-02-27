package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class DOMValidatorHelper implements com.sun.org.apache.xerces.internal.jaxp.validation.ValidatorHelper implements com.sun.org.apache.xerces.internal.impl.validation.EntityState
{
	@:overload public function new(componentManager : com.sun.org.apache.xerces.internal.jaxp.validation.XMLSchemaValidatorComponentManager) : Void;
	
	/*
	* ValidatorHelper methods
	*/
	@:overload public function validate(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	/*
	* EntityState methods
	*/
	@:overload public function isEntityDeclared(name : String) : Bool;
	
	@:overload public function isEntityUnparsed(name : String) : Bool;
	
	
}
/**
* NamespaceContext for the DOMSource, includes context for ancestor nodes.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$DOMValidatorHelper$DOMNamespaceContext') @:internal extern class DOMValidatorHelper_DOMNamespaceContext implements com.sun.org.apache.xerces.internal.xni.NamespaceContext
{
	/**
	* Namespace binding information. This array is composed of a
	* series of tuples containing the namespace binding information:
	* &lt;prefix, uri&gt;.
	*/
	private var fNamespace : java.NativeArray<String>;
	
	/** The size of the namespace information array. */
	private var fNamespaceSize : Int;
	
	/**
	* Flag indicating whether the namespace context
	* has been from the root node's ancestors.
	*/
	private var fDOMContextBuilt : Bool;
	
	@:overload public function pushContext() : Void;
	
	@:overload public function popContext() : Void;
	
	@:overload public function declarePrefix(prefix : String, uri : String) : Bool;
	
	@:overload public function getURI(prefix : String) : String;
	
	@:overload public function getPrefix(uri : String) : String;
	
	@:overload public function getDeclaredPrefixCount() : Int;
	
	@:overload public function getDeclaredPrefixAt(index : Int) : String;
	
	@:overload public function getAllPrefixes() : java.util.Enumeration<Dynamic>;
	
	@:overload public function reset() : Void;
	
	
}
