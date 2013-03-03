package com.sun.xml.internal.xsom.impl.parser;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class NGCCRuntimeEx extends com.sun.xml.internal.xsom.impl.parser.state.NGCCRuntime implements com.sun.xml.internal.xsom.impl.parser.PatcherManager
{
	/** coordinator. */
	@:public @:final public var parser(default, null) : com.sun.xml.internal.xsom.impl.parser.ParserContext;
	
	/** The schema currently being parsed. */
	@:public public var currentSchema : com.sun.xml.internal.xsom.impl.SchemaImpl;
	
	/** The @finalDefault value of the current schema. */
	@:public public var finalDefault : Int;
	
	/** The @blockDefault value of the current schema. */
	@:public public var blockDefault : Int;
	
	/**
	* The @elementFormDefault value of the current schema.
	* True if local elements are qualified by default.
	*/
	@:public public var elementFormDefault : Bool;
	
	/**
	* The @attributeFormDefault value of the current schema.
	* True if local attributes are qualified by default.
	*/
	@:public public var attributeFormDefault : Bool;
	
	/**
	* True if the current schema is in a chameleon mode.
	* This changes the way QNames are interpreted.
	*
	* Life is very miserable with XML Schema, as you see.
	*/
	@:public public var chameleonMode : Bool;
	
	/**
	* Points to the {@link SchemaDocumentImpl} that represents the
	* schema document being parsed.
	*/
	@:public public var document : com.sun.xml.internal.xsom.impl.parser.SchemaDocumentImpl;
	
	@:overload @:public public function checkDoubleDefError(c : com.sun.xml.internal.xsom.XSDeclaration) : Void;
	
	@:overload @:public @:static public static function ignorableDuplicateComponent(c : com.sun.xml.internal.xsom.XSDeclaration) : Bool;
	
	/* registers a patcher that will run after all the parsing has finished. */
	@:overload @:public public function addPatcher(patcher : com.sun.xml.internal.xsom.impl.parser.Patch) : Void;
	
	@:overload @:public public function addErrorChecker(patcher : com.sun.xml.internal.xsom.impl.parser.Patch) : Void;
	
	@:overload @:public public function reportError(msg : String, loc : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function reportError(msg : String) : Void;
	
	/** Includes the specified schema. */
	@:overload @:public public function includeSchema(schemaLocation : String) : Void;
	
	/** Imports the specified schema. */
	@:overload @:public public function importSchema(ns : String, schemaLocation : String) : Void;
	
	/**
	* Called when a new document is being parsed and checks
	* if the document has already been parsed before.
	*
	* <p>
	* Used to avoid recursive inclusion. Note that the same
	* document will be parsed multiple times if they are for different
	* target namespaces.
	*
	* <h2>Document Graph Model</h2>
	* <p>
	* The challenge we are facing here is that you have a graph of
	* documents that reference each other. Each document has an unique
	* URI to identify themselves, and references are done by using those.
	* The graph may contain cycles.
	*
	* <p>
	* Our goal here is to parse all the documents in the graph, without
	* parsing the same document twice. This method implements this check.
	*
	* <p>
	* One complication is the chameleon schema; a document can be parsed
	* multiple times if they are under different target namespaces.
	*
	* <p>
	* Also, note that when you resolve relative URIs in the @schemaLocation,
	* their base URI is *NOT* the URI of the document.
	*
	* @return true if the document has already been processed and thus
	*      needs to be skipped.
	*/
	@:overload @:public public function hasAlreadyBeenRead() : Bool;
	
	/**
	* Parses the specified entity.
	*
	* @param importLocation
	*      The source location of the import/include statement.
	*      Used for reporting errors.
	*/
	@:overload @:public public function parseEntity(source : org.xml.sax.InputSource, includeMode : Bool, expectedNamespace : String, importLocation : org.xml.sax.Locator) : Void;
	
	/**
	* Creates a new instance of annotation parser.
	*/
	@:overload @:public public function createAnnotationParser() : com.sun.xml.internal.xsom.parser.AnnotationParser;
	
	/**
	* Gets the element name that contains the annotation element.
	* This method works correctly only when called by the annotation handler.
	*/
	@:overload @:public public function getAnnotationContextElementName() : String;
	
	/** Creates a copy of the current locator object. */
	@:overload @:public public function copyLocator() : org.xml.sax.Locator;
	
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public override public function onEnterElementConsumed(uri : String, localName : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function onLeaveElementConsumed(uri : String, localName : String, qname : String) : Void;
	
	/** Returns an immutable snapshot of the current context. */
	@:overload @:public public function createValidationContext() : org.relaxng.datatype.ValidationContext;
	
	@:overload @:public public function createXmlString(value : String) : com.sun.xml.internal.xsom.XmlString;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	/** Parses UName under the given context. */
	@:overload @:public public function parseUName(qname : String) : com.sun.xml.internal.xsom.impl.UName;
	
	@:overload @:public public function parseBoolean(v : String) : Bool;
	
	@:overload @:protected override private function unexpectedX(token : String) : Void;
	
	@:overload @:public public function parseForeignAttributes(next : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl) : com.sun.xml.internal.xsom.impl.ForeignAttributesImpl;
	
	@:public @:static @:final public static var XMLSchemaNSURI(default, null) : String;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$NGCCRuntimeEx$Context') @:internal extern class NGCCRuntimeEx_Context implements org.relaxng.datatype.ValidationContext
{
	@:overload @:public public function resolveNamespacePrefix(p : String) : String;
	
	@:overload @:public public function getBaseUri() : String;
	
	@:overload @:public public function isNotation(arg0 : String) : Bool;
	
	@:overload @:public public function isUnparsedEntity(arg0 : String) : Bool;
	
	
}
