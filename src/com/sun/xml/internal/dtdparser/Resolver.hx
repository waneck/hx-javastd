package com.sun.xml.internal.dtdparser;
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
extern class Resolver implements org.xml.sax.EntityResolver
{
	/**
	* Constructs a resolver.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns an input source, using the MIME type information and URL
	* scheme to statically determine the correct character encoding if
	* possible and otherwise autodetecting it.  MIME carefully specifies
	* the character encoding defaults, and how attributes of the content
	* type can change it.  XML further specifies two mandatory encodings
	* (UTF-8 and UTF-16), and includes an XML declaration which can be
	* used to internally label most documents encoded using US-ASCII
	* supersets (such as Shift_JIS, EUC-JP, ISO-2022-*, ISO-8859-*, and
	* more).
	* <p/>
	* <P> This method can be used to access XML documents which do not
	* have URIs (such as servlet input streams, or most JavaMail message
	* entities) and to support access methods such as HTTP POST or PUT.
	* (URLs normally return content using the GET method.)
	* <p/>
	* <P> <em> The caller should set the system ID in order for relative URIs
	* found in this document to be interpreted correctly.</em> In some cases,
	* a custom resolver will need to be used; for example, documents
	* may be grouped in a single MIME "multipart/related" bundle, and
	* relative URLs would refer to other documents in that bundle.
	*
	* @param contentType The MIME content type for the source for which
	*                    an InputSource is desired, such as <em>text/xml;charset=utf-8</em>.
	* @param stream      The input byte stream for the input source.
	* @param checkType   If true, this verifies that the content type is known
	*                    to support XML documents, such as <em>application/xml</em>.
	* @param scheme      Unless this is "file", unspecified MIME types
	*                    default to US-ASCII.  Files are always autodetected since most
	*                    file systems discard character encoding information.
	*/
	@:overload @:public @:static public static function createInputSource(contentType : String, stream : java.io.InputStream, checkType : Bool, scheme : String) : org.xml.sax.InputSource;
	
	/**
	* Creates an input source from a given URI.
	*
	* @param uri       the URI (system ID) for the entity
	* @param checkType if true, the MIME content type for the entity
	*                  is checked for document type and character set encoding.
	*/
	@:overload @:static @:public public static function createInputSource(uri : java.net.URL, checkType : Bool) : org.xml.sax.InputSource;
	
	/**
	* Creates an input source from a given file, autodetecting
	* the character encoding.
	*/
	@:overload @:static @:public public static function createInputSource(file : java.io.File) : org.xml.sax.InputSource;
	
	/**
	* <b>SAX:</b>
	* Resolve the given entity into an input source.  If the name can't
	* be mapped to a preferred form of the entity, the URI is used.  To
	* resolve the entity, first a local catalog mapping names to URIs is
	* consulted.  If no mapping is found there, a catalog mapping names
	* to java resources is consulted.  Finally, if neither mapping found
	* a copy of the entity, the specified URI is used.
	* <p/>
	* <P> When a URI is used, <a href="#createInputSource">
	* createInputSource</a> is used to correctly deduce the character
	* encoding used by this entity.  No MIME type checking is done.
	*
	* @param name Used to find alternate copies of the entity, when
	*             this value is non-null; this is the XML "public ID".
	* @param uri  Used when no alternate copy of the entity is found;
	*             this is the XML "system ID", normally a URI.
	*/
	@:overload @:public public function resolveEntity(name : String, uri : String) : org.xml.sax.InputSource;
	
	/**
	* Returns true if this resolver is ignoring MIME types in the documents
	* it returns, to work around bugs in how servers have reported the
	* documents' MIME types.
	*/
	@:overload @:public public function isIgnoringMIME() : Bool;
	
	/**
	* Tells the resolver whether to ignore MIME types in the documents it
	* retrieves.  Many web servers incorrectly assign text documents a
	* default character encoding, even when that is incorrect.  For example,
	* all HTTP text documents default to use ISO-8859-1 (used for Western
	* European languages), and other MIME sources default text documents
	* to use US-ASCII (a seven bit encoding).  For XML documents which
	* include text encoding declarations (as most should do), these server
	* bugs can be worked around by ignoring the MIME type entirely.
	*/
	@:overload @:public public function setIgnoringMIME(value : Bool) : Void;
	
	/**
	* Registers the given public ID as corresponding to a particular
	* URI, typically a local copy.  This URI will be used in preference
	* to ones provided as system IDs in XML entity declarations.  This
	* mechanism would most typically be used for Document Type Definitions
	* (DTDs), where the public IDs are formally managed and versioned.
	*
	* @param publicId The managed public ID being mapped
	* @param uri      The URI of the preferred copy of that entity
	*/
	@:overload @:public public function registerCatalogEntry(publicId : String, uri : String) : Void;
	
	/**
	* Registers a given public ID as corresponding to a particular Java
	* resource in a given class loader, typically distributed with a
	* software package.  This resource will be preferred over system IDs
	* included in XML documents.  This mechanism should most typically be
	* used for Document Type Definitions (DTDs), where the public IDs are
	* formally managed and versioned.
	* <p/>
	* <P> If a mapping to a URI has been provided, that mapping takes
	* precedence over this one.
	*
	* @param publicId     The managed public ID being mapped
	* @param resourceName The name of the Java resource
	* @param loader       The class loader holding the resource, or null if
	*                     it is a system resource.
	*/
	@:overload @:public public function registerCatalogEntry(publicId : String, resourceName : String, loader : java.lang.ClassLoader) : Void;
	
	
}
