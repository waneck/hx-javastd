package org.xml.sax.ext;
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
//// LexicalHandler.java - optional handler for lexical parse events.
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: LexicalHandler.java,v 1.2 2004/11/03 22:49:08 jsuttor Exp $
extern interface LexicalHandler
{
	/**
	* Report the start of DTD declarations, if any.
	*
	* <p>This method is intended to report the beginning of the
	* DOCTYPE declaration; if the document has no DOCTYPE declaration,
	* this method will not be invoked.</p>
	*
	* <p>All declarations reported through
	* {@link org.xml.sax.DTDHandler DTDHandler} or
	* {@link org.xml.sax.ext.DeclHandler DeclHandler} events must appear
	* between the startDTD and {@link #endDTD endDTD} events.
	* Declarations are assumed to belong to the internal DTD subset
	* unless they appear between {@link #startEntity startEntity}
	* and {@link #endEntity endEntity} events.  Comments and
	* processing instructions from the DTD should also be reported
	* between the startDTD and endDTD events, in their original
	* order of (logical) occurrence; they are not required to
	* appear in their correct locations relative to DTDHandler
	* or DeclHandler events, however.</p>
	*
	* <p>Note that the start/endDTD events will appear within
	* the start/endDocument events from ContentHandler and
	* before the first
	* {@link org.xml.sax.ContentHandler#startElement startElement}
	* event.</p>
	*
	* @param name The document type name.
	* @param publicId The declared public identifier for the
	*        external DTD subset, or null if none was declared.
	* @param systemId The declared system identifier for the
	*        external DTD subset, or null if none was declared.
	*        (Note that this is not resolved against the document
	*        base URI.)
	* @exception SAXException The application may raise an
	*            exception.
	* @see #endDTD
	* @see #startEntity
	*/
	@:overload @:public @:abstract public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Report the end of DTD declarations.
	*
	* <p>This method is intended to report the end of the
	* DOCTYPE declaration; if the document has no DOCTYPE declaration,
	* this method will not be invoked.</p>
	*
	* @exception SAXException The application may raise an exception.
	* @see #startDTD
	*/
	@:overload @:public @:abstract public function endDTD() : Void;
	
	/**
	* Report the beginning of some internal and external XML entities.
	*
	* <p>The reporting of parameter entities (including
	* the external DTD subset) is optional, and SAX2 drivers that
	* report LexicalHandler events may not implement it; you can use the
	* <code
	* >http://xml.org/sax/features/lexical-handler/parameter-entities</code>
	* feature to query or control the reporting of parameter entities.</p>
	*
	* <p>General entities are reported with their regular names,
	* parameter entities have '%' prepended to their names, and
	* the external DTD subset has the pseudo-entity name "[dtd]".</p>
	*
	* <p>When a SAX2 driver is providing these events, all other
	* events must be properly nested within start/end entity
	* events.  There is no additional requirement that events from
	* {@link org.xml.sax.ext.DeclHandler DeclHandler} or
	* {@link org.xml.sax.DTDHandler DTDHandler} be properly ordered.</p>
	*
	* <p>Note that skipped entities will be reported through the
	* {@link org.xml.sax.ContentHandler#skippedEntity skippedEntity}
	* event, which is part of the ContentHandler interface.</p>
	*
	* <p>Because of the streaming event model that SAX uses, some
	* entity boundaries cannot be reported under any
	* circumstances:</p>
	*
	* <ul>
	* <li>general entities within attribute values</li>
	* <li>parameter entities within declarations</li>
	* </ul>
	*
	* <p>These will be silently expanded, with no indication of where
	* the original entity boundaries were.</p>
	*
	* <p>Note also that the boundaries of character references (which
	* are not really entities anyway) are not reported.</p>
	*
	* <p>All start/endEntity events must be properly nested.
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%', and if it is the
	*        external DTD subset, it will be "[dtd]".
	* @exception SAXException The application may raise an exception.
	* @see #endEntity
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl
	*/
	@:overload @:public @:abstract public function startEntity(name : String) : Void;
	
	/**
	* Report the end of an entity.
	*
	* @param name The name of the entity that is ending.
	* @exception SAXException The application may raise an exception.
	* @see #startEntity
	*/
	@:overload @:public @:abstract public function endEntity(name : String) : Void;
	
	/**
	* Report the start of a CDATA section.
	*
	* <p>The contents of the CDATA section will be reported through
	* the regular {@link org.xml.sax.ContentHandler#characters
	* characters} event; this event is intended only to report
	* the boundary.</p>
	*
	* @exception SAXException The application may raise an exception.
	* @see #endCDATA
	*/
	@:overload @:public @:abstract public function startCDATA() : Void;
	
	/**
	* Report the end of a CDATA section.
	*
	* @exception SAXException The application may raise an exception.
	* @see #startCDATA
	*/
	@:overload @:public @:abstract public function endCDATA() : Void;
	
	/**
	* Report an XML comment anywhere in the document.
	*
	* <p>This callback will be used for comments inside or outside the
	* document element, including comments in the external DTD
	* subset (if read).  Comments in the DTD must be properly
	* nested inside start/endDTD and start/endEntity events (if
	* used).</p>
	*
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:public @:abstract public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
