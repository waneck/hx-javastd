package com.sun.org.apache.xml.internal.resolver.tools;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// CatalogResolver.java - A SAX EntityResolver/JAXP URI Resolver
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
extern class CatalogResolver implements org.xml.sax.EntityResolver implements javax.xml.transform.URIResolver
{
	/** Make the parser Namespace aware? */
	public var namespaceAware : Bool;
	
	/** Make the parser validating? */
	public var validating : Bool;
	
	/** Constructor */
	@:overload public function new() : Void;
	
	/** Constructor */
	@:overload public function new(privateCatalog : Bool) : Void;
	
	/** Constructor */
	@:overload public function new(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/** Return the underlying catalog */
	@:overload public function getCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* Implements the guts of the <code>resolveEntity</code> method
	* for the SAX interface.
	*
	* <p>Presented with an optional public identifier and a system
	* identifier, this function attempts to locate a mapping in the
	* catalogs.</p>
	*
	* <p>If such a mapping is found, it is returned.  If no mapping is
	* found, null is returned.</p>
	*
	* @param publicId  The public identifier for the entity in question.
	* This may be null.
	*
	* @param systemId  The system identifier for the entity in question.
	* XML requires a system identifier on all external entities, so this
	* value is always specified.
	*
	* @return The resolved identifier (a URI reference).
	*/
	@:overload public function getResolvedEntity(publicId : String, systemId : String) : String;
	
	/**
	* Implements the <code>resolveEntity</code> method
	* for the SAX interface.
	*
	* <p>Presented with an optional public identifier and a system
	* identifier, this function attempts to locate a mapping in the
	* catalogs.</p>
	*
	* <p>If such a mapping is found, the resolver attempts to open
	* the mapped value as an InputSource and return it. Exceptions are
	* ignored and null is returned if the mapped value cannot be opened
	* as an input source.</p>
	*
	* <p>If no mapping is found (or an error occurs attempting to open
	* the mapped value as an input source), null is returned and the system
	* will use the specified system identifier as if no entityResolver
	* was specified.</p>
	*
	* @param publicId  The public identifier for the entity in question.
	* This may be null.
	*
	* @param systemId  The system identifier for the entity in question.
	* XML requires a system identifier on all external entities, so this
	* value is always specified.
	*
	* @return An InputSource for the mapped identifier, or null.
	*/
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/** JAXP URIResolver API */
	@:overload public function resolve(href : String, base : String) : javax.xml.transform.Source;
	
	
}
