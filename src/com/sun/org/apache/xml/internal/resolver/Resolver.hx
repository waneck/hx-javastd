package com.sun.org.apache.xml.internal.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// Resolver.java - Represents an extension of OASIS Open Catalog files.
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
extern class Resolver extends com.sun.org.apache.xml.internal.resolver.Catalog
{
	/**
	* The URISUFFIX Catalog Entry type.
	*
	* <p>URI suffix entries match URIs that end in a specified suffix.</p>
	*/
	public static var URISUFFIX(default, null) : Int;
	
	/**
	* The SYSTEMSUFFIX Catalog Entry type.
	*
	* <p>System suffix entries match system identifiers that end in a
	* specified suffix.</p>
	*/
	public static var SYSTEMSUFFIX(default, null) : Int;
	
	/**
	* The RESOLVER Catalog Entry type.
	*
	* <p>A hook for providing support for web-based backup resolvers.</p>
	*/
	public static var RESOLVER(default, null) : Int;
	
	/**
	* The SYSTEMREVERSE Catalog Entry type.
	*
	* <p>This is a bit of a hack. There's no actual SYSTEMREVERSE entry,
	* but this entry type is used to indicate that a reverse lookup is
	* being performed. (This allows the Resolver to implement
	* RFC2483 I2N and I2NS.)
	*/
	public static var SYSTEMREVERSE(default, null) : Int;
	
	/**
	* Setup readers.
	*/
	@:overload override public function setupReaders() : Void;
	
	/**
	* Cleanup and process a Catalog entry.
	*
	* <p>This method processes each Catalog entry, changing mapped
	* relative system identifiers into absolute ones (based on the current
	* base URI), and maintaining other information about the current
	* catalog.</p>
	*
	* @param entry The CatalogEntry to process.
	*/
	@:overload override public function addEntry(entry : com.sun.org.apache.xml.internal.resolver.CatalogEntry) : Void;
	
	/**
	* Return the applicable URI.
	*
	* <p>If a URI entry exists in the Catalog
	* for the URI specified, return the mapped value.</p>
	*
	* <p>In the Resolver (as opposed to the Catalog) class, if the
	* URI isn't found by the usual algorithm, URISUFFIX entries are
	* considered.</p>
	*
	* <p>URI comparison is case sensitive.</p>
	*
	* @param uri The URI to locate in the catalog.
	*
	* @return The resolved URI.
	*
	* @throws MalformedURLException The system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload override public function resolveURI(uri : String) : String;
	
	/**
	* Return the applicable SYSTEM system identifier, resorting
	* to external RESOLVERs if necessary.
	*
	* <p>If a SYSTEM entry exists in the Catalog
	* for the system ID specified, return the mapped value.</p>
	*
	* <p>In the Resolver (as opposed to the Catalog) class, if the
	* URI isn't found by the usual algorithm, SYSTEMSUFFIX entries are
	* considered.</p>
	*
	* <p>On Windows-based operating systems, the comparison between
	* the system identifier provided and the SYSTEM entries in the
	* Catalog is case-insensitive.</p>
	*
	* @param systemId The system ID to locate in the catalog.
	*
	* @return The system identifier to use for systemId.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload override public function resolveSystem(systemId : String) : String;
	
	/**
	* Return the applicable PUBLIC or SYSTEM identifier, resorting
	* to external resolvers if necessary.
	*
	* <p>This method searches the Catalog and returns the system
	* identifier specified for the given system or
	* public identifiers. If
	* no appropriate PUBLIC or SYSTEM entry is found in the Catalog,
	* null is returned.</p>
	*
	* <p>Note that a system or public identifier in the current catalog
	* (or subordinate catalogs) will be used in preference to an
	* external resolver. Further, if a systemId is present, the external
	* resolver(s) will be queried for that before the publicId.</p>
	*
	* @param publicId The public identifier to locate in the catalog.
	* Public identifiers are normalized before comparison.
	* @param systemId The nominal system identifier for the entity
	* in question (as provided in the source document).
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*
	* @return The system identifier to use.
	* Note that the nominal system identifier is not returned if a
	* match is not found in the catalog, instead null is returned
	* to indicate that no match was found.
	*/
	@:overload override public function resolvePublic(publicId : String, systemId : String) : String;
	
	/**
	* Query an external RFC2483 resolver for a system identifier.
	*
	* @param systemId The system ID to locate.
	* @param resolver The name of the resolver to use.
	*
	* @return The system identifier to use for the systemId.
	*/
	@:overload private function resolveExternalSystem(systemId : String, resolver : String) : String;
	
	/**
	* Query an external RFC2483 resolver for a public identifier.
	*
	* @param publicId The system ID to locate.
	* @param resolver The name of the resolver to use.
	*
	* @return The system identifier to use for the systemId.
	*/
	@:overload private function resolveExternalPublic(publicId : String, resolver : String) : String;
	
	/**
	* Query an external RFC2483 resolver.
	*
	* @param resolver The URL of the RFC2483 resolver.
	* @param command The command to send the resolver.
	* @param arg1 The first argument to the resolver.
	* @param arg2 The second argument to the resolver, usually null.
	*
	* @return The Resolver constructed.
	*/
	@:overload private function queryResolver(resolver : String, command : String, arg1 : String, arg2 : String) : Resolver;
	
	/**
	* Find the URNs for a given system identifier in all catalogs.
	*
	* @param systemId The system ID to locate.
	*
	* @return A vector of URNs that map to the systemId.
	*/
	@:overload public function resolveAllSystemReverse(systemId : String) : java.util.Vector<Dynamic>;
	
	/**
	* Find the URN for a given system identifier.
	*
	* @param systemId The system ID to locate.
	*
	* @return A (single) URN that maps to the systemId.
	*/
	@:overload public function resolveSystemReverse(systemId : String) : String;
	
	/**
	* Return the applicable SYSTEM system identifiers.
	*
	* <p>If one or more SYSTEM entries exists in the Catalog
	* for the system ID specified, return the mapped values.</p>
	*
	* <p>The caller is responsible for doing any necessary
	* normalization of the system identifier before calling
	* this method. For example, a relative system identifier in
	* a document might be converted to an absolute system identifier
	* before attempting to resolve it.</p>
	*
	* <p>Note that this function will force all subordinate catalogs
	* to be loaded.</p>
	*
	* <p>On Windows-based operating systems, the comparison between
	* the system identifier provided and the SYSTEM entries in the
	* Catalog is case-insensitive.</p>
	*
	* @param systemId The system ID to locate in the catalog.
	*
	* @return The system identifier to use for the notation.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload public function resolveAllSystem(systemId : String) : java.util.Vector<Dynamic>;
	
	
}
