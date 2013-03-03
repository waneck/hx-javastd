package com.sun.org.apache.xml.internal.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// Catalog.java - Represents OASIS Open Catalog files.
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
extern class Catalog
{
	/** The BASE Catalog Entry type. */
	@:public @:static @:final public static var BASE(default, null) : Int;
	
	/** The CATALOG Catalog Entry type. */
	@:public @:static @:final public static var CATALOG(default, null) : Int;
	
	/** The DOCUMENT Catalog Entry type. */
	@:public @:static @:final public static var DOCUMENT(default, null) : Int;
	
	/** The OVERRIDE Catalog Entry type. */
	@:public @:static @:final public static var OVERRIDE(default, null) : Int;
	
	/** The SGMLDECL Catalog Entry type. */
	@:public @:static @:final public static var SGMLDECL(default, null) : Int;
	
	/** The DELEGATE_PUBLIC Catalog Entry type. */
	@:public @:static @:final public static var DELEGATE_PUBLIC(default, null) : Int;
	
	/** The DELEGATE_SYSTEM Catalog Entry type. */
	@:public @:static @:final public static var DELEGATE_SYSTEM(default, null) : Int;
	
	/** The DELEGATE_URI Catalog Entry type. */
	@:public @:static @:final public static var DELEGATE_URI(default, null) : Int;
	
	/** The DOCTYPE Catalog Entry type. */
	@:public @:static @:final public static var DOCTYPE(default, null) : Int;
	
	/** The DTDDECL Catalog Entry type. */
	@:public @:static @:final public static var DTDDECL(default, null) : Int;
	
	/** The ENTITY Catalog Entry type. */
	@:public @:static @:final public static var ENTITY(default, null) : Int;
	
	/** The LINKTYPE Catalog Entry type. */
	@:public @:static @:final public static var LINKTYPE(default, null) : Int;
	
	/** The NOTATION Catalog Entry type. */
	@:public @:static @:final public static var NOTATION(default, null) : Int;
	
	/** The PUBLIC Catalog Entry type. */
	@:public @:static @:final public static var PUBLIC(default, null) : Int;
	
	/** The SYSTEM Catalog Entry type. */
	@:public @:static @:final public static var SYSTEM(default, null) : Int;
	
	/** The URI Catalog Entry type. */
	@:public @:static @:final public static var URI(default, null) : Int;
	
	/** The REWRITE_SYSTEM Catalog Entry type. */
	@:public @:static @:final public static var REWRITE_SYSTEM(default, null) : Int;
	
	/** The REWRITE_URI Catalog Entry type. */
	@:public @:static @:final public static var REWRITE_URI(default, null) : Int;
	
	/** The SYSTEM_SUFFIX Catalog Entry type. */
	@:public @:static @:final public static var SYSTEM_SUFFIX(default, null) : Int;
	
	/** The URI_SUFFIX Catalog Entry type. */
	@:public @:static @:final public static var URI_SUFFIX(default, null) : Int;
	
	/**
	* The base URI for relative system identifiers in the catalog.
	* This may be changed by BASE entries in the catalog.
	*/
	@:protected private var base : java.net.URL;
	
	/** The base URI of the Catalog file currently being parsed. */
	@:protected private var catalogCwd : java.net.URL;
	
	/** The catalog entries currently known to the system. */
	@:protected private var catalogEntries : java.util.Vector<Dynamic>;
	
	/** The default initial override setting. */
	@:protected private var default_override : Bool;
	
	/** The catalog manager in use for this instance. */
	@:protected private var catalogManager : com.sun.org.apache.xml.internal.resolver.CatalogManager;
	
	/**
	* A vector of catalog files to be loaded.
	*
	* <p>This list is initially established by
	* <code>loadSystemCatalogs</code> when
	* it parses the system catalog list, but CATALOG entries may
	* contribute to it during the course of parsing.</p>
	*
	* @see #loadSystemCatalogs
	* @see #localCatalogFiles
	*/
	@:protected private var catalogFiles : java.util.Vector<Dynamic>;
	
	/**
	* A vector of catalog files constructed during processing of
	* CATALOG entries in the current catalog.
	*
	* <p>This two-level system is actually necessary to correctly implement
	* the semantics of the CATALOG entry. If one catalog file includes
	* another with a CATALOG entry, the included catalog logically
	* occurs <i>at the end</i> of the including catalog, and after any
	* preceding CATALOG entries. In other words, the CATALOG entry
	* cannot insert anything into the middle of a catalog file.</p>
	*
	* <p>When processing reaches the end of each catalog files, any
	* elements on this vector are added to the front of the
	* <code>catalogFiles</code> vector.</p>
	*
	* @see #catalogFiles
	*/
	@:protected private var localCatalogFiles : java.util.Vector<Dynamic>;
	
	/**
	* A vector of Catalogs.
	*
	* <p>The semantics of Catalog resolution are such that each
	* catalog is effectively a list of Catalogs (in other words,
	* a recursive list of Catalog instances).</p>
	*
	* <p>Catalogs that are processed as the result of CATALOG or
	* DELEGATE* entries are subordinate to the catalog that contained
	* them, but they may in turn have subordinate catalogs.</p>
	*
	* <p>Catalogs are only loaded when they are needed, so this vector
	* initially contains a list of Catalog filenames (URLs). If, during
	* processing, one of these catalogs has to be loaded, the resulting
	* Catalog object is placed in the vector, effectively caching it
	* for the next query.</p>
	*/
	@:protected private var catalogs : java.util.Vector<Dynamic>;
	
	/**
	* A vector of DELEGATE* Catalog entries constructed during
	* processing of the Catalog.
	*
	* <p>This two-level system has two purposes; first, it allows
	* us to sort the DELEGATE* entries by the length of the partial
	* public identifier so that a linear search encounters them in
	* the correct order and second, it puts them all at the end of
	* the Catalog.</p>
	*
	* <p>When processing reaches the end of each catalog file, any
	* elements on this vector are added to the end of the
	* <code>catalogEntries</code> vector. This assures that matching
	* PUBLIC keywords are encountered before DELEGATE* entries.</p>
	*/
	@:protected private var localDelegate : java.util.Vector<Dynamic>;
	
	/**
	* A hash of CatalogReaders.
	*
	* <p>This hash maps MIME types to elements in the readerArr
	* vector. This allows the Catalog to quickly locate the reader
	* for a particular MIME type.</p>
	*/
	@:protected private var readerMap : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* A vector of CatalogReaders.
	*
	* <p>This vector contains all of the readers in the order that they
	* were added. In the event that a catalog is read from a file, where
	* the MIME type is unknown, each reader is attempted in turn until
	* one succeeds.</p>
	*/
	@:protected private var readerArr : java.util.Vector<Dynamic>;
	
	/**
	* Constructs an empty Catalog.
	*
	* <p>The constructor interrogates the relevant system properties
	* using the default (static) CatalogManager
	* and initializes the catalog data structures.</p>
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an empty Catalog with a specific CatalogManager.
	*
	* <p>The constructor interrogates the relevant system properties
	* using the specified Catalog Manager
	* and initializes the catalog data structures.</p>
	*/
	@:overload @:public public function new(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/**
	* Return the CatalogManager used by this catalog.
	*
	*/
	@:overload @:public public function getCatalogManager() : com.sun.org.apache.xml.internal.resolver.CatalogManager;
	
	/**
	* Establish the CatalogManager used by this catalog.
	*
	*/
	@:overload @:public public function setCatalogManager(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/**
	* Setup readers.
	*/
	@:overload @:public public function setupReaders() : Void;
	
	/**
	* Add a new CatalogReader to the Catalog.
	*
	* <p>This method allows you to add a new CatalogReader to the
	* catalog. The reader will be associated with the specified mimeType.
	* You can only have one reader per mimeType.</p>
	*
	* <p>In the absence of a mimeType (e.g., when reading a catalog
	* directly from a file on the local system), the readers are attempted
	* in the order that you add them to the Catalog.</p>
	*
	* <p>Note that subordinate catalogs (created by CATALOG or
	* DELEGATE* entries) get a copy of the set of readers present in
	* the primary catalog when they are created. Readers added subsequently
	* will not be available. For this reason, it is best to add all
	* of the readers before the first call to parse a catalog.</p>
	*
	* @param mimeType The MIME type associated with this reader.
	* @param reader The CatalogReader to use.
	*/
	@:overload @:public public function addReader(mimeType : String, reader : com.sun.org.apache.xml.internal.resolver.readers.CatalogReader) : Void;
	
	/**
	* Copies the reader list from the current Catalog to a new Catalog.
	*
	* <p>This method is used internally when constructing a new catalog.
	* It copies the current reader associations over to the new catalog.
	* </p>
	*
	* @param newCatalog The new Catalog.
	*/
	@:overload @:protected private function copyReaders(newCatalog : com.sun.org.apache.xml.internal.resolver.Catalog) : Void;
	
	/**
	* Create a new Catalog object.
	*
	* <p>This method constructs a new instance of the running Catalog
	* class (which might be a subtype of com.sun.org.apache.xml.internal.resolver.Catalog).
	* All new catalogs are managed by the same CatalogManager.
	* </p>
	*
	* <p>N.B. All Catalog subtypes should call newCatalog() to construct
	* a new Catalog. Do not simply use "new Subclass()" since that will
	* confuse future subclasses.</p>
	*/
	@:overload @:protected private function newCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* Returns the current base URI.
	*/
	@:overload @:public public function getCurrentBase() : String;
	
	/**
	* Returns the default override setting associated with this
	* catalog.
	*
	* <p>All catalog files loaded by this catalog will have the
	* initial override setting specified by this default.</p>
	*/
	@:overload @:public public function getDefaultOverride() : String;
	
	/**
	* Load the system catalog files.
	*
	* <p>The method adds all of the
	* catalogs specified in the <tt>xml.catalog.files</tt> property
	* to the Catalog list.</p>
	*
	* @throws MalformedURLException  One of the system catalogs is
	* identified with a filename that is not a valid URL.
	* @throws IOException One of the system catalogs cannot be read.
	*/
	@:overload @:public public function loadSystemCatalogs() : Void;
	
	/**
	* Parse a catalog file, augmenting internal data structures.
	*
	* @param fileName The filename of the catalog file to process
	*
	* @throws MalformedURLException The fileName cannot be turned into
	* a valid URL.
	* @throws IOException Error reading catalog file.
	*/
	@:overload @:public @:synchronized public function parseCatalog(fileName : String) : Void;
	
	/**
	* Parse a catalog file, augmenting internal data structures.
	*
	* <p>Catalogs retrieved over the net may have an associated MIME type.
	* The MIME type can be used to select an appropriate reader.</p>
	*
	* @param mimeType The MIME type of the catalog file.
	* @param is The InputStream from which the catalog should be read
	*
	* @throws CatalogException Failed to load catalog
	* mimeType.
	* @throws IOException Error reading catalog file.
	*/
	@:overload @:public @:synchronized public function parseCatalog(mimeType : String, is : java.io.InputStream) : Void;
	
	/**
	* Parse a catalog document, augmenting internal data structures.
	*
	* <p>This method supports catalog files stored in jar files: e.g.,
	* jar:file:///path/to/filename.jar!/path/to/catalog.xml". That URI
	* doesn't survive transmogrification through the URI processing that
	* the parseCatalog(String) performs and passing it as an input stream
	* doesn't set the base URI appropriately.</p>
	*
	* <p>Written by Stefan Wachter (2002-09-26)</p>
	*
	* @param aUrl The URL of the catalog document to process
	*
	* @throws IOException Error reading catalog file.
	*/
	@:overload @:public @:synchronized public function parseCatalog(aUrl : java.net.URL) : Void;
	
	/**
	* Parse all of the pending catalogs.
	*
	* <p>Catalogs may refer to other catalogs, this method parses
	* all of the currently pending catalog files.</p>
	*/
	@:overload @:protected @:synchronized private function parsePendingCatalogs() : Void;
	
	/**
	* Parse a single catalog file, augmenting internal data structures.
	*
	* @param fileName The filename of the catalog file to process
	*
	* @throws MalformedURLException The fileName cannot be turned into
	* a valid URL.
	* @throws IOException Error reading catalog file.
	*/
	@:overload @:protected @:synchronized private function parseCatalogFile(fileName : String) : Void;
	
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
	@:overload @:public public function addEntry(entry : com.sun.org.apache.xml.internal.resolver.CatalogEntry) : Void;
	
	/**
	* Handle unknown CatalogEntry types.
	*
	* <p>This method exists to allow subclasses to deal with unknown
	* entry types.</p>
	*/
	@:overload @:public public function unknownEntry(strings : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Parse all subordinate catalogs.
	*
	* <p>This method recursively parses all of the subordinate catalogs.
	* If this method does not throw an exception, you can be confident that
	* no subsequent call to any resolve*() method will either, with two
	* possible exceptions:</p>
	*
	* <ol>
	* <li><p>Delegated catalogs are re-parsed each time they are needed
	* (because a variable list of them may be needed in each case,
	* depending on the length of the matching partial public identifier).</p>
	* <p>But they are parsed by this method, so as long as they don't
	* change or disappear while the program is running, they shouldn't
	* generate errors later if they don't generate errors now.</p>
	* <li><p>If you add new catalogs with <code>parseCatalog</code>, they
	* won't be loaded until they are needed or until you call
	* <code>parseAllCatalogs</code> again.</p>
	* </ol>
	*
	* <p>On the other hand, if you don't call this method, you may
	* successfully parse documents without having to load all possible
	* catalogs.</p>
	*
	* @throws MalformedURLException The filename (URL) for a
	* subordinate or delegated catalog is not a valid URL.
	* @throws IOException Error reading some subordinate or delegated
	* catalog file.
	*/
	@:overload @:public public function parseAllCatalogs() : Void;
	
	/**
	* Return the applicable DOCTYPE system identifier.
	*
	* @param entityName The name of the entity (element) for which
	* a doctype is required.
	* @param publicId The nominal public identifier for the doctype
	* (as provided in the source document).
	* @param systemId The nominal system identifier for the doctype
	* (as provided in the source document).
	*
	* @return The system identifier to use for the doctype.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload @:public public function resolveDoctype(entityName : String, publicId : String, systemId : String) : String;
	
	/**
	* Return the applicable DOCUMENT entry.
	*
	* @return The system identifier to use for the doctype.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload @:public public function resolveDocument() : String;
	
	/**
	* Return the applicable ENTITY system identifier.
	*
	* @param entityName The name of the entity for which
	* a system identifier is required.
	* @param publicId The nominal public identifier for the entity
	* (as provided in the source document).
	* @param systemId The nominal system identifier for the entity
	* (as provided in the source document).
	*
	* @return The system identifier to use for the entity.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload @:public public function resolveEntity(entityName : String, publicId : String, systemId : String) : String;
	
	/**
	* Return the applicable NOTATION system identifier.
	*
	* @param notationName The name of the notation for which
	* a doctype is required.
	* @param publicId The nominal public identifier for the notation
	* (as provided in the source document).
	* @param systemId The nominal system identifier for the notation
	* (as provided in the source document).
	*
	* @return The system identifier to use for the notation.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload @:public public function resolveNotation(notationName : String, publicId : String, systemId : String) : String;
	
	/**
	* Return the applicable PUBLIC or SYSTEM identifier.
	*
	* <p>This method searches the Catalog and returns the system
	* identifier specified for the given system or
	* public identifiers. If
	* no appropriate PUBLIC or SYSTEM entry is found in the Catalog,
	* null is returned.</p>
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
	@:overload @:public public function resolvePublic(publicId : String, systemId : String) : String;
	
	/**
	* Return the applicable PUBLIC or SYSTEM identifier.
	*
	* <p>This method searches the Catalog and returns the system
	* identifier specified for the given system or public identifiers.
	* If no appropriate PUBLIC or SYSTEM entry is found in the Catalog,
	* delegated Catalogs are interrogated.</p>
	*
	* <p>There are four possible cases:</p>
	*
	* <ul>
	* <li>If the system identifier provided matches a SYSTEM entry
	* in the current catalog, the SYSTEM entry is returned.
	* <li>If the system identifier is not null, the PUBLIC entries
	* that were encountered when OVERRIDE YES was in effect are
	* interrogated and the first matching entry is returned.</li>
	* <li>If the system identifier is null, then all of the PUBLIC
	* entries are interrogated and the first matching entry
	* is returned. This may not be the same as the preceding case, if
	* some PUBLIC entries are encountered when OVERRIDE NO is in effect. In
	* XML, the only place where a public identifier may occur without
	* a system identifier is in a notation declaration.</li>
	* <li>Finally, if the public identifier matches one of the partial
	* public identifiers specified in a DELEGATE* entry in
	* the Catalog, the delegated catalog is interrogated. The first
	* time that the delegated catalog is required, it will be
	* retrieved and parsed. It is subsequently cached.
	* </li>
	* </ul>
	*
	* @param entityType The CatalogEntry type for which this query is
	* being conducted. This is necessary in order to do the approprate
	* query on a delegated catalog.
	* @param entityName The name of the entity being searched for, if
	* appropriate.
	* @param publicId The public identifier of the entity in question.
	* @param systemId The nominal system identifier for the entity
	* in question (as provided in the source document).
	*
	* @throws MalformedURLException The formal system identifier of a
	* delegated catalog cannot be turned into a valid URL.
	* @throws IOException Error reading delegated catalog file.
	*
	* @return The system identifier to use.
	* Note that the nominal system identifier is not returned if a
	* match is not found in the catalog, instead null is returned
	* to indicate that no match was found.
	*/
	@:overload @:protected @:synchronized private function resolveLocalPublic(entityType : Int, entityName : String, publicId : String, systemId : String) : String;
	
	/**
	* Return the applicable SYSTEM system identifier.
	*
	* <p>If a SYSTEM entry exists in the Catalog
	* for the system ID specified, return the mapped value.</p>
	*
	* <p>On Windows-based operating systems, the comparison between
	* the system identifier provided and the SYSTEM entries in the
	* Catalog is case-insensitive.</p>
	*
	* @param systemId The system ID to locate in the catalog.
	*
	* @return The resolved system identifier.
	*
	* @throws MalformedURLException The formal system identifier of a
	* subordinate catalog cannot be turned into a valid URL.
	* @throws IOException Error reading subordinate catalog file.
	*/
	@:overload @:public public function resolveSystem(systemId : String) : String;
	
	/**
	* Return the applicable SYSTEM system identifier in this
	* catalog.
	*
	* <p>If a SYSTEM entry exists in the catalog file
	* for the system ID specified, return the mapped value.</p>
	*
	* @param systemId The system ID to locate in the catalog
	*
	* @return The mapped system identifier or null
	*/
	@:overload @:protected private function resolveLocalSystem(systemId : String) : String;
	
	/**
	* Return the applicable URI.
	*
	* <p>If a URI entry exists in the Catalog
	* for the URI specified, return the mapped value.</p>
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
	@:overload @:public public function resolveURI(uri : String) : String;
	
	/**
	* Return the applicable URI in this catalog.
	*
	* <p>If a URI entry exists in the catalog file
	* for the URI specified, return the mapped value.</p>
	*
	* @param uri The URI to locate in the catalog
	*
	* @return The mapped URI or null
	*/
	@:overload @:protected private function resolveLocalURI(uri : String) : String;
	
	/**
	* Search the subordinate catalogs, in order, looking for a match.
	*
	* <p>This method searches the Catalog and returns the system
	* identifier specified for the given entity type with the given
	* name, public, and system identifiers. In some contexts, these
	* may be null.</p>
	*
	* @param entityType The CatalogEntry type for which this query is
	* being conducted. This is necessary in order to do the approprate
	* query on a subordinate catalog.
	* @param entityName The name of the entity being searched for, if
	* appropriate.
	* @param publicId The public identifier of the entity in question
	* (as provided in the source document).
	* @param systemId The nominal system identifier for the entity
	* in question (as provided in the source document). This parameter is
	* overloaded for the URI entry type.
	*
	* @throws MalformedURLException The formal system identifier of a
	* delegated catalog cannot be turned into a valid URL.
	* @throws IOException Error reading delegated catalog file.
	*
	* @return The system identifier to use.
	* Note that the nominal system identifier is not returned if a
	* match is not found in the catalog, instead null is returned
	* to indicate that no match was found.
	*/
	@:overload @:protected @:synchronized private function resolveSubordinateCatalogs(entityType : Int, entityName : String, publicId : String, systemId : String) : String;
	
	/**
	* Replace backslashes with forward slashes. (URLs always use
	* forward slashes.)
	*
	* @param sysid The input system identifier.
	* @return The same system identifier with backslashes turned into
	* forward slashes.
	*/
	@:overload @:protected private function fixSlashes(sysid : String) : String;
	
	/**
	* Construct an absolute URI from a relative one, using the current
	* base URI.
	*
	* @param sysid The (possibly relative) system identifier
	* @return The system identifier made absolute with respect to the
	* current {@link #base}.
	*/
	@:overload @:protected private function makeAbsolute(sysid : String) : String;
	
	/**
	* Perform character normalization on a URI reference.
	*
	* @param uriref The URI reference
	* @return The normalized URI reference.
	*/
	@:overload @:protected private function normalizeURI(uriref : String) : String;
	
	/**
	* Perform %-encoding on a single byte.
	*
	* @param b The 8-bit integer that represents th byte. (Bytes are signed
	but encoding needs to look at the bytes unsigned.)
	* @return The %-encoded string for the byte in question.
	*/
	@:overload @:protected private function encodedByte(b : Int) : String;
	
	/**
	* Add to the current list of delegated catalogs.
	*
	* <p>This method always constructs the {@link #localDelegate}
	* vector so that it is ordered by length of partial
	* public identifier.</p>
	*
	* @param entry The DELEGATE catalog entry
	*/
	@:overload @:protected private function addDelegate(entry : com.sun.org.apache.xml.internal.resolver.CatalogEntry) : Void;
	
	
}
