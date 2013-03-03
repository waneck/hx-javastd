package com.sun.org.apache.xml.internal.resolver.helpers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// BootstrapResolver.java - Resolve entities and URIs internally
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
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
extern class BootstrapResolver implements org.xml.sax.EntityResolver implements javax.xml.transform.URIResolver
{
	/** URI of the W3C XML Schema for OASIS XML Catalog files. */
	@:public @:static @:final public static var xmlCatalogXSD(default, null) : String;
	
	/** URI of the RELAX NG Grammar for OASIS XML Catalog files. */
	@:public @:static @:final public static var xmlCatalogRNG(default, null) : String;
	
	/** Public identifier for OASIS XML Catalog files. */
	@:public @:static @:final public static var xmlCatalogPubId(default, null) : String;
	
	/** System identifier for OASIS XML Catalog files. */
	@:public @:static @:final public static var xmlCatalogSysId(default, null) : String;
	
	/** Constructor. */
	@:overload @:public public function new() : Void;
	
	/** SAX resolveEntity API. */
	@:overload @:public public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/** Transformer resolve API. */
	@:overload @:public public function resolve(href : String, base : String) : javax.xml.transform.Source;
	
	
}
