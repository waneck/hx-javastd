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
//// XMLReader.java - read an XML document.
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the Public Domain.
//// $Id: XMLReader.java,v 1.3 2004/11/03 22:55:32 jsuttor Exp $
extern interface XMLReader
{
	/**
	* Look up the value of a feature flag.
	*
	* <p>The feature name is any fully-qualified URI.  It is
	* possible for an XMLReader to recognize a feature name but
	* temporarily be unable to return its value.
	* Some feature values may be available only in specific
	* contexts, such as before, during, or after a parse.
	* Also, some feature values may not be programmatically accessible.
	* (In the case of an adapter for SAX1 {@link Parser}, there is no
	* implementation-independent way to expose whether the underlying
	* parser is performing validation, expanding external entities,
	* and so forth.) </p>
	*
	* <p>All XMLReaders are required to recognize the
	* http://xml.org/sax/features/namespaces and the
	* http://xml.org/sax/features/namespace-prefixes feature names.</p>
	*
	* <p>Typical usage is something like this:</p>
	*
	* <pre>
	* XMLReader r = new MySAXDriver();
	*
	*                         // try to activate validation
	* try {
	*   r.setFeature("http://xml.org/sax/features/validation", true);
	* } catch (SAXException e) {
	*   System.err.println("Cannot activate validation.");
	* }
	*
	*                         // register event handlers
	* r.setContentHandler(new MyContentHandler());
	* r.setErrorHandler(new MyErrorHandler());
	*
	*                         // parse the first document
	* try {
	*   r.parse("http://www.foo.com/mydoc.xml");
	* } catch (IOException e) {
	*   System.err.println("I/O exception reading XML document");
	* } catch (SAXException e) {
	*   System.err.println("XML exception reading document.");
	* }
	* </pre>
	*
	* <p>Implementors are free (and encouraged) to invent their own features,
	* using names built on their own URIs.</p>
	*
	* @param name The feature name, which is a fully-qualified URI.
	* @return The current value of the feature (true or false).
	* @exception org.xml.sax.SAXNotRecognizedException If the feature
	*            value can't be assigned or retrieved.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            XMLReader recognizes the feature name but
	*            cannot determine its value at this time.
	* @see #setFeature
	*/
	@:overload @:public public function getFeature(name : String) : Bool;
	
	/**
	* Set the value of a feature flag.
	*
	* <p>The feature name is any fully-qualified URI.  It is
	* possible for an XMLReader to expose a feature value but
	* to be unable to change the current value.
	* Some feature values may be immutable or mutable only
	* in specific contexts, such as before, during, or after
	* a parse.</p>
	*
	* <p>All XMLReaders are required to support setting
	* http://xml.org/sax/features/namespaces to true and
	* http://xml.org/sax/features/namespace-prefixes to false.</p>
	*
	* @param name The feature name, which is a fully-qualified URI.
	* @param value The requested value of the feature (true or false).
	* @exception org.xml.sax.SAXNotRecognizedException If the feature
	*            value can't be assigned or retrieved.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            XMLReader recognizes the feature name but
	*            cannot set the requested value.
	* @see #getFeature
	*/
	@:overload @:public public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* Look up the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for an XMLReader to recognize a property name but
	* temporarily be unable to return its value.
	* Some property values may be available only in specific
	* contexts, such as before, during, or after a parse.</p>
	*
	* <p>XMLReaders are not required to recognize any specific
	* property names, though an initial core set is documented for
	* SAX2.</p>
	*
	* <p>Implementors are free (and encouraged) to invent their own properties,
	* using names built on their own URIs.</p>
	*
	* @param name The property name, which is a fully-qualified URI.
	* @return The current value of the property.
	* @exception org.xml.sax.SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            XMLReader recognizes the property name but
	*            cannot determine its value at this time.
	* @see #setProperty
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/**
	* Set the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for an XMLReader to recognize a property name but
	* to be unable to change the current value.
	* Some property values may be immutable or mutable only
	* in specific contexts, such as before, during, or after
	* a parse.</p>
	*
	* <p>XMLReaders are not required to recognize setting
	* any specific property names, though a core set is defined by
	* SAX2.</p>
	*
	* <p>This method is also the standard mechanism for setting
	* extended handlers.</p>
	*
	* @param name The property name, which is a fully-qualified URI.
	* @param value The requested value for the property.
	* @exception org.xml.sax.SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            XMLReader recognizes the property name but
	*            cannot set the requested value.
	*/
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Allow an application to register an entity resolver.
	*
	* <p>If the application does not register an entity resolver,
	* the XMLReader will perform its own default resolution.</p>
	*
	* <p>Applications may register a new or different resolver in the
	* middle of a parse, and the SAX parser must begin using the new
	* resolver immediately.</p>
	*
	* @param resolver The entity resolver.
	* @see #getEntityResolver
	*/
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none
	*         has been registered.
	* @see #setEntityResolver
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Allow an application to register a DTD event handler.
	*
	* <p>If the application does not register a DTD handler, all DTD
	* events reported by the SAX parser will be silently ignored.</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The DTD handler.
	* @see #getDTDHandler
	*/
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Return the current DTD handler.
	*
	* @return The current DTD handler, or null if none
	*         has been registered.
	* @see #setDTDHandler
	*/
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Allow an application to register a content event handler.
	*
	* <p>If the application does not register a content handler, all
	* content events reported by the SAX parser will be silently
	* ignored.</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The content handler.
	* @see #getContentHandler
	*/
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Return the current content handler.
	*
	* @return The current content handler, or null if none
	*         has been registered.
	* @see #setContentHandler
	*/
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Allow an application to register an error event handler.
	*
	* <p>If the application does not register an error handler, all
	* error events reported by the SAX parser will be silently
	* ignored; however, normal processing may not continue.  It is
	* highly recommended that all SAX applications implement an
	* error handler to avoid unexpected bugs.</p>
	*
	* <p>Applications may register a new or different handler in the
	* middle of a parse, and the SAX parser must begin using the new
	* handler immediately.</p>
	*
	* @param handler The error handler.
	* @see #getErrorHandler
	*/
	@:overload @:public public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none
	*         has been registered.
	* @see #setErrorHandler
	*/
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Parse an XML document.
	*
	* <p>The application can use this method to instruct the XML
	* reader to begin parsing an XML document from any valid input
	* source (a character stream, a byte stream, or a URI).</p>
	*
	* <p>Applications may not invoke this method while a parse is in
	* progress (they should create a new XMLReader instead for each
	* nested XML document).  Once a parse is complete, an
	* application may reuse the same XMLReader object, possibly with a
	* different input source.
	* Configuration of the XMLReader object (such as handler bindings and
	* values established for feature flags and properties) is unchanged
	* by completion of a parse, unless the definition of that aspect of
	* the configuration explicitly specifies other behavior.
	* (For example, feature flags or properties exposing
	* characteristics of the document being parsed.)
	* </p>
	*
	* <p>During the parse, the XMLReader will provide information
	* about the XML document through the registered event
	* handlers.</p>
	*
	* <p>This method is synchronous: it will not return until parsing
	* has ended.  If a client application wants to terminate
	* parsing early, it should throw an exception.</p>
	*
	* @param input The input source for the top-level of the
	*        XML document.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	* @see org.xml.sax.InputSource
	* @see #parse(java.lang.String)
	* @see #setEntityResolver
	* @see #setDTDHandler
	* @see #setContentHandler
	* @see #setErrorHandler
	*/
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : Void;
	
	/**
	* Parse an XML document from a system identifier (URI).
	*
	* <p>This method is a shortcut for the common case of reading a
	* document from a system identifier.  It is the exact
	* equivalent of the following:</p>
	*
	* <pre>
	* parse(new InputSource(systemId));
	* </pre>
	*
	* <p>If the system identifier is a URL, it must be fully resolved
	* by the application before it is passed to the parser.</p>
	*
	* @param systemId The system identifier (URI).
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	* @see #parse(org.xml.sax.InputSource)
	*/
	@:overload @:public public function parse(systemId : String) : Void;
	
	
}
