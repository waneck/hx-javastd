package org.xml.sax;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// SAX entity resolver.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: EntityResolver.java,v 1.2 2004/11/03 22:44:52 jsuttor Exp $
extern interface EntityResolver
{
	/**
	* Allow the application to resolve external entities.
	*
	* <p>The parser will call this method before opening any external
	* entity except the top-level document entity.  Such entities include
	* the external DTD subset and external parameter entities referenced
	* within the DTD (in either case, only if the parser reads external
	* parameter entities), and external general entities referenced
	* within the document element (if the parser reads external general
	* entities).  The application may request that the parser locate
	* the entity itself, that it use an alternative URI, or that it
	* use data provided by the application (as a character or byte
	* input stream).</p>
	*
	* <p>Application writers can use this method to redirect external
	* system identifiers to secure and/or local URIs, to look up
	* public identifiers in a catalogue, or to read an entity from a
	* database or other input source (including, for example, a dialog
	* box).  Neither XML nor SAX specifies a preferred policy for using
	* public or system IDs to resolve resources.  However, SAX specifies
	* how to interpret any InputSource returned by this method, and that
	* if none is returned, then the system ID will be dereferenced as
	* a URL.  </p>
	*
	* <p>If the system identifier is a URL, the SAX parser must
	* resolve it fully before reporting it to the application.</p>
	*
	* @param publicId The public identifier of the external entity
	*        being referenced, or null if none was supplied.
	* @param systemId The system identifier of the external entity
	*        being referenced.
	* @return An InputSource object describing the new input source,
	*         or null to request that the parser open a regular
	*         URI connection to the system identifier.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException A Java-specific IO exception,
	*            possibly the result of creating a new InputStream
	*            or Reader for the InputSource.
	* @see org.xml.sax.InputSource
	*/
	@:overload @:public @:abstract public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	
}
