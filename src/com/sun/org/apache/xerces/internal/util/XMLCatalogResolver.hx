package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004,2005 The Apache Software Foundation.
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
extern class XMLCatalogResolver implements com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver implements org.xml.sax.ext.EntityResolver2 implements org.w3c.dom.ls.LSResourceResolver
{
	/**
	* <p>Constructs a catalog resolver with a default configuration.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* <p>Constructs a catalog resolver with the given
	* list of entry files.</p>
	*
	* @param catalogs an ordered array list of absolute URIs
	*/
	@:overload public function new(catalogs : java.NativeArray<String>) : Void;
	
	/**
	* <p>Constructs a catalog resolver with the given
	* list of entry files and the preference for whether
	* system or public matches are preferred.</p>
	*
	* @param catalogs an ordered array list of absolute URIs
	* @param preferPublic the prefer public setting
	*/
	@:overload public function new(catalogs : java.NativeArray<String>, preferPublic : Bool) : Void;
	
	/**
	* <p>Returns the initial list of catalog entry files.</p>
	*
	* @return the initial list of catalog entry files
	*/
	@:overload @:final @:synchronized public function getCatalogList() : java.NativeArray<String>;
	
	/**
	* <p>Sets the initial list of catalog entry files.
	* If there were any catalog mappings cached from
	* the previous list they will be replaced by catalog
	* mappings from the new list the next time the catalog
	* is queried.</p>
	*
	* @param catalogs an ordered array list of absolute URIs
	*/
	@:overload @:final @:synchronized public function setCatalogList(catalogs : java.NativeArray<String>) : Void;
	
	/**
	* <p>Forces the cache of catalog mappings to be cleared.</p>
	*/
	@:overload @:final @:synchronized public function clear() : Void;
	
	/**
	* <p>Returns the preference for whether system or public
	* matches are preferred. This is used in the absence
	* of any occurence of the <code>prefer</code> attribute
	* on the <code>catalog</code> entry of a catalog. If this
	* property has not yet been explicitly set its value is
	* <code>true</code>.</p>
	*
	* @return the prefer public setting
	*/
	@:overload @:final public function getPreferPublic() : Bool;
	
	/**
	* <p>Sets the preference for whether system or public
	* matches are preferred. This is used in the absence
	* of any occurence of the <code>prefer</code> attribute
	* on the <code>catalog</code> entry of a catalog.</p>
	*
	* @param preferPublic the prefer public setting
	*/
	@:overload @:final public function setPreferPublic(preferPublic : Bool) : Void;
	
	/**
	* <p>Returns the preference for whether the literal system
	* identifier should be used when resolving system
	* identifiers when both it and the expanded system
	* identifier are available. If this property has not yet
	* been explicitly set its value is <code>true</code>.</p>
	*
	* @return the preference for using literal system identifers
	* for catalog resolution
	*
	* @see #setUseLiteralSystemId
	*/
	@:overload @:final public function getUseLiteralSystemId() : Bool;
	
	/**
	* <p>Sets the preference for whether the literal system
	* identifier should be used when resolving system
	* identifiers when both it and the expanded system
	* identifier are available.</p>
	*
	* <p>The literal system identifier is the URI as it was
	* provided before absolutization. It may be embedded within
	* an entity. It may be provided externally or it may be the
	* result of redirection. For example, redirection may
	* have come from the protocol level through HTTP or from
	* an application's entity resolver.</p>
	*
	* <p>The expanded system identifier is an absolute URI
	* which is the result of resolving the literal system
	* identifier against a base URI.</p>
	*
	* @param useLiteralSystemId the preference for using
	* literal system identifers for catalog resolution
	*/
	@:overload @:final public function setUseLiteralSystemId(useLiteralSystemId : Bool) : Void;
	
	/**
	* <p>Resolves an external entity. If the entity cannot be
	* resolved, this method should return <code>null</code>. This
	* method returns an input source if an entry was found in the
	* catalog for the given external identifier. It should be
	* overrided if other behaviour is required.</p>
	*
	* @param publicId the public identifier, or <code>null</code> if none was supplied
	* @param systemId the system identifier
	*
	* @throws SAXException any SAX exception, possibly wrapping another exception
	* @throws IOException thrown if some i/o error occurs
	*/
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/**
	* <p>Resolves an external entity. If the entity cannot be
	* resolved, this method should return <code>null</code>. This
	* method returns an input source if an entry was found in the
	* catalog for the given external identifier. It should be
	* overrided if other behaviour is required.</p>
	*
	* @param name the identifier of the external entity
	* @param publicId the public identifier, or <code>null</code> if none was supplied
	* @param baseURI the URI with respect to which relative systemIDs are interpreted.
	* @param systemId the system identifier
	*
	* @throws SAXException any SAX exception, possibly wrapping another exception
	* @throws IOException thrown if some i/o error occurs
	*/
	@:overload public function resolveEntity(name : String, publicId : String, baseURI : String, systemId : String) : org.xml.sax.InputSource;
	
	/**
	* <p>Locates an external subset for documents which do not explicitly
	* provide one. This method always returns <code>null</code>. It
	* should be overrided if other behaviour is required.</p>
	*
	* @param name the identifier of the document root element
	* @param baseURI the document's base URI
	*
	* @throws SAXException any SAX exception, possibly wrapping another exception
	* @throws IOException thrown if some i/o error occurs
	*/
	@:overload public function getExternalSubset(name : String, baseURI : String) : org.xml.sax.InputSource;
	
	/**
	* <p>Resolves a resource using the catalog. This method interprets that
	* the namespace URI corresponds to uri entries in the catalog.
	* Where both a namespace and an external identifier exist, the namespace
	* takes precedence.</p>
	*
	* @param type the type of the resource being resolved
	* @param namespaceURI the namespace of the resource being resolved,
	* or <code>null</code> if none was supplied
	* @param publicId the public identifier of the resource being resolved,
	* or <code>null</code> if none was supplied
	* @param systemId the system identifier of the resource being resolved,
	* or <code>null</code> if none was supplied
	* @param baseURI the absolute base URI of the resource being parsed,
	* or <code>null</code> if there is no base URI
	*/
	@:overload public function resolveResource(type : String, namespaceURI : String, publicId : String, systemId : String, baseURI : String) : org.w3c.dom.ls.LSInput;
	
	/**
	* <p>Resolves an external entity. If the entity cannot be
	* resolved, this method should return <code>null</code>. This
	* method only calls <code>resolveIdentifier</code> and returns
	* an input source if an entry was found in the catalog. It
	* should be overrided if other behaviour is required.</p>
	*
	* @param resourceIdentifier location of the XML resource to resolve
	*
	* @throws XNIException thrown on general error
	* @throws IOException thrown if some i/o error occurs
	*/
	@:overload public function resolveEntity(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/**
	* <p>Resolves an identifier using the catalog. This method interprets that
	* the namespace of the identifier corresponds to uri entries in the catalog.
	* Where both a namespace and an external identifier exist, the namespace
	* takes precedence.</p>
	*
	* @param resourceIdentifier the identifier to resolve
	*
	* @throws XNIException thrown on general error
	* @throws IOException thrown if some i/o error occurs
	*/
	@:overload public function resolveIdentifier(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : String;
	
	/**
	* <p>Returns the URI mapping in the catalog for the given
	* external identifier or <code>null</code> if no mapping
	* exists. If the system identifier is an URN in the
	* <code>publicid</code> namespace it is converted into
	* a public identifier by URN "unwrapping" as specified
	* in the XML Catalogs specification.</p>
	*
	* @param systemId the system identifier to locate in the catalog
	*
	* @return the mapped URI or <code>null</code> if no mapping
	* was found in the catalog
	*
	* @throws IOException if an i/o error occurred while reading
	* the catalog
	*/
	@:overload @:final @:synchronized public function resolveSystem(systemId : String) : String;
	
	/**
	* <p>Returns the URI mapping in the catalog for the given
	* external identifier or <code>null</code> if no mapping
	* exists. Public identifiers are normalized before
	* comparison.</p>
	*
	* @param publicId the public identifier to locate in the catalog
	* @param systemId the system identifier to locate in the catalog
	*
	* @return the mapped URI or <code>null</code> if no mapping
	* was found in the catalog
	*
	* @throws IOException if an i/o error occurred while reading
	* the catalog
	*/
	@:overload @:final @:synchronized public function resolvePublic(publicId : String, systemId : String) : String;
	
	/**
	* <p>Returns the URI mapping in the catalog for the given URI
	* reference or <code>null</code> if no mapping exists.
	* URI comparison is case sensitive. If the URI reference
	* is an URN in the <code>publicid</code> namespace
	* it is converted into a public identifier by URN "unwrapping"
	* as specified in the XML Catalogs specification and then
	* resolution is performed following the semantics of
	* external identifier resolution.</p>
	*
	* @param uri the URI to locate in the catalog
	*
	* @return the mapped URI or <code>null</code> if no mapping
	* was found in the catalog
	*
	* @throws IOException if an i/o error occurred while reading
	* the catalog
	*/
	@:overload @:final @:synchronized public function resolveURI(uri : String) : String;
	
	
}
