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
//// DeclHandler.java - Optional handler for DTD declaration events.
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: DeclHandler.java,v 1.2 2004/11/03 22:49:08 jsuttor Exp $
extern interface DeclHandler
{
	/**
	* Report an element type declaration.
	*
	* <p>The content model will consist of the string "EMPTY", the
	* string "ANY", or a parenthesised group, optionally followed
	* by an occurrence indicator.  The model will be normalized so
	* that all parameter entities are fully resolved and all whitespace
	* is removed,and will include the enclosing parentheses.  Other
	* normalization (such as removing redundant parentheses or
	* simplifying occurrence indicators) is at the discretion of the
	* parser.</p>
	*
	* @param name The element type name.
	* @param model The content model as a normalized string.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:abstract public function elementDecl(name : String, model : String) : Void;
	
	/**
	* Report an attribute type declaration.
	*
	* <p>Only the effective (first) declaration for an attribute will
	* be reported.  The type will be one of the strings "CDATA",
	* "ID", "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY",
	* "ENTITIES", a parenthesized token group with
	* the separator "|" and all whitespace removed, or the word
	* "NOTATION" followed by a space followed by a parenthesized
	* token group with all whitespace removed.</p>
	*
	* <p>The value will be the value as reported to applications,
	* appropriately normalized and with entity and character
	* references expanded.  </p>
	*
	* @param eName The name of the associated element.
	* @param aName The name of the attribute.
	* @param type A string representing the attribute type.
	* @param mode A string representing the attribute defaulting mode
	*        ("#IMPLIED", "#REQUIRED", or "#FIXED") or null if
	*        none of these applies.
	* @param value A string representing the attribute's default value,
	*        or null if there is none.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload @:abstract public function attributeDecl(eName : String, aName : String, type : String, mode : String, value : String) : Void;
	
	/**
	* Report an internal entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.  All parameter entities in the value
	* will be expanded, but general entities will not.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param value The replacement text of the entity.
	* @exception SAXException The application may raise an exception.
	* @see #externalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload @:abstract public function internalEntityDecl(name : String, value : String) : Void;
	
	/**
	* Report a parsed external entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.</p>
	*
	* <p>If the system identifier is a URL, the parser must resolve it
	* fully before passing it to the application.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param publicId The entity's public identifier, or null if none
	*        was given.
	* @param systemId The entity's system identifier.
	* @exception SAXException The application may raise an exception.
	* @see #internalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload @:abstract public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	
}
