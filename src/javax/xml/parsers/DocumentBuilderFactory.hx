package javax.xml.parsers;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DocumentBuilderFactory
{
	/**
	* <p>Protected constructor to prevent instantiation.
	* Use {@link #newInstance()}.</p>
	*/
	@:overload private function new() : Void;
	
	/**
	* Obtain a new instance of a
	* <code>DocumentBuilderFactory</code>. This static method creates
	* a new factory instance.
	* This method uses the following ordered lookup procedure to determine
	* the <code>DocumentBuilderFactory</code> implementation class to
	* load:
	* <ul>
	* <li>
	* Use the <code>javax.xml.parsers.DocumentBuilderFactory</code> system
	* property.
	* </li>
	* <li>
	* Use the properties file "lib/jaxp.properties" in the JRE directory.
	* This configuration file is in standard <code>java.util.Properties
	* </code> format and contains the fully qualified name of the
	* implementation class with the key being the system property defined
	* above.
	*
	* The jaxp.properties file is read only once by the JAXP implementation
	* and it's values are then cached for future use.  If the file does not exist
	* when the first attempt is made to read from it, no further attempts are
	* made to check for its existence.  It is not possible to change the value
	* of any property in jaxp.properties after it has been read for the first time.
	* </li>
	* <li>
	* Use the Services API (as detailed in the JAR specification), if
	* available, to determine the classname. The Services API will look
	* for a classname in the file
	* <code>META-INF/services/javax.xml.parsers.DocumentBuilderFactory</code>
	* in jars available to the runtime.
	* </li>
	* <li>
	* Platform default <code>DocumentBuilderFactory</code> instance.
	* </li>
	* </ul>
	*
	* Once an application has obtained a reference to a
	* <code>DocumentBuilderFactory</code> it can use the factory to
	* configure and obtain parser instances.
	*
	*
	* <h2>Tip for Trouble-shooting</h2>
	* <p>Setting the <code>jaxp.debug</code> system property will cause
	* this method to print a lot of debug messages
	* to <code>System.err</code> about what it is doing and where it is looking at.</p>
	*
	* <p> If you have problems loading {@link DocumentBuilder}s, try:</p>
	* <pre>
	* java -Djaxp.debug=1 YourProgram ....
	* </pre>
	*
	* @return New instance of a <code>DocumentBuilderFactory</code>
	*
	* @throws FactoryConfigurationError if the implementation is not
	*   available or cannot be instantiated.
	*/
	@:overload public static function newInstance() : DocumentBuilderFactory;
	
	/**
	* <p>Obtain a new instance of a <code>DocumentBuilderFactory</code> from class name.
	* This function is useful when there are multiple providers in the classpath.
	* It gives more control to the application as it can specify which provider
	* should be loaded.</p>
	*
	* <p>Once an application has obtained a reference to a <code>DocumentBuilderFactory</code>
	* it can use the factory to configure and obtain parser instances.</p>
	*
	*
	* <h2>Tip for Trouble-shooting</h2>
	* <p>Setting the <code>jaxp.debug</code> system property will cause
	* this method to print a lot of debug messages
	* to <code>System.err</code> about what it is doing and where it is looking at.</p>
	*
	* <p> If you have problems try:</p>
	* <pre>
	* java -Djaxp.debug=1 YourProgram ....
	* </pre>
	*
	* @param factoryClassName fully qualified factory class name that provides implementation of <code>javax.xml.parsers.DocumentBuilderFactory</code>.
	*
	* @param classLoader <code>ClassLoader</code> used to load the factory class. If <code>null</code>
	*                     current <code>Thread</code>'s context classLoader is used to load the factory class.
	*
	* @return New instance of a <code>DocumentBuilderFactory</code>
	*
	* @throws FactoryConfigurationError if <code>factoryClassName</code> is <code>null</code>, or
	*                                   the factory class cannot be loaded, instantiated.
	*
	* @see #newInstance()
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public static function newInstance(factoryClassName : String, classLoader : java.lang.ClassLoader) : DocumentBuilderFactory;
	
	/**
	* Creates a new instance of a {@link javax.xml.parsers.DocumentBuilder}
	* using the currently configured parameters.
	*
	* @return A new instance of a DocumentBuilder.
	*
	* @throws ParserConfigurationException if a DocumentBuilder
	*   cannot be created which satisfies the configuration requested.
	*/
	@:overload @:abstract public function newDocumentBuilder() : javax.xml.parsers.DocumentBuilder;
	
	/**
	* Specifies that the parser produced by this code will
	* provide support for XML namespaces. By default the value of this is set
	* to <code>false</code>
	*
	* @param awareness true if the parser produced will provide support
	*                  for XML namespaces; false otherwise.
	*/
	@:overload public function setNamespaceAware(awareness : Bool) : Void;
	
	/**
	* Specifies that the parser produced by this code will
	* validate documents as they are parsed. By default the value of this
	* is set to <code>false</code>.
	*
	* <p>
	* Note that "the validation" here means
	* <a href="http://www.w3.org/TR/REC-xml#proc-types">a validating
	* parser</a> as defined in the XML recommendation.
	* In other words, it essentially just controls the DTD validation.
	* (except the legacy two properties defined in JAXP 1.2.)
	* </p>
	*
	* <p>
	* To use modern schema languages such as W3C XML Schema or
	* RELAX NG instead of DTD, you can configure your parser to be
	* a non-validating parser by leaving the {@link #setValidating(boolean)}
	* method <code>false</code>, then use the {@link #setSchema(Schema)}
	* method to associate a schema to a parser.
	* </p>
	*
	* @param validating true if the parser produced will validate documents
	*                   as they are parsed; false otherwise.
	*/
	@:overload public function setValidating(validating : Bool) : Void;
	
	/**
	* Specifies that the parsers created by this  factory must eliminate
	* whitespace in element content (sometimes known loosely as
	* 'ignorable whitespace') when parsing XML documents (see XML Rec
	* 2.10). Note that only whitespace which is directly contained within
	* element content that has an element only content model (see XML
	* Rec 3.2.1) will be eliminated. Due to reliance on the content model
	* this setting requires the parser to be in validating mode. By default
	* the value of this is set to <code>false</code>.
	*
	* @param whitespace true if the parser created must eliminate whitespace
	*                   in the element content when parsing XML documents;
	*                   false otherwise.
	*/
	@:overload public function setIgnoringElementContentWhitespace(whitespace : Bool) : Void;
	
	/**
	* Specifies that the parser produced by this code will
	* expand entity reference nodes. By default the value of this is set to
	* <code>true</code>
	*
	* @param expandEntityRef true if the parser produced will expand entity
	*                        reference nodes; false otherwise.
	*/
	@:overload public function setExpandEntityReferences(expandEntityRef : Bool) : Void;
	
	/**
	* <p>Specifies that the parser produced by this code will
	* ignore comments. By default the value of this is set to <code>false
	* </code>.</p>
	*
	* @param ignoreComments <code>boolean</code> value to ignore comments during processing
	*/
	@:overload public function setIgnoringComments(ignoreComments : Bool) : Void;
	
	/**
	* Specifies that the parser produced by this code will
	* convert CDATA nodes to Text nodes and append it to the
	* adjacent (if any) text node. By default the value of this is set to
	* <code>false</code>
	*
	* @param coalescing  true if the parser produced will convert CDATA nodes
	*                    to Text nodes and append it to the adjacent (if any)
	*                    text node; false otherwise.
	*/
	@:overload public function setCoalescing(coalescing : Bool) : Void;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which are namespace aware.
	*
	* @return  true if the factory is configured to produce parsers which
	*          are namespace aware; false otherwise.
	*/
	@:overload public function isNamespaceAware() : Bool;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which validate the XML content during parse.
	*
	* @return  true if the factory is configured to produce parsers
	*          which validate the XML content during parse; false otherwise.
	*/
	@:overload public function isValidating() : Bool;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which ignore ignorable whitespace in element content.
	*
	* @return  true if the factory is configured to produce parsers
	*          which ignore ignorable whitespace in element content;
	*          false otherwise.
	*/
	@:overload public function isIgnoringElementContentWhitespace() : Bool;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which expand entity reference nodes.
	*
	* @return  true if the factory is configured to produce parsers
	*          which expand entity reference nodes; false otherwise.
	*/
	@:overload public function isExpandEntityReferences() : Bool;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which ignores comments.
	*
	* @return  true if the factory is configured to produce parsers
	*          which ignores comments; false otherwise.
	*/
	@:overload public function isIgnoringComments() : Bool;
	
	/**
	* Indicates whether or not the factory is configured to produce
	* parsers which converts CDATA nodes to Text nodes and appends it to
	* the adjacent (if any) Text node.
	*
	* @return  true if the factory is configured to produce parsers
	*          which converts CDATA nodes to Text nodes and appends it to
	*          the adjacent (if any) Text node; false otherwise.
	*/
	@:overload public function isCoalescing() : Bool;
	
	/**
	* Allows the user to set specific attributes on the underlying
	* implementation.
	*
	* @param name The name of the attribute.
	* @param value The value of the attribute.
	*
	* @throws IllegalArgumentException thrown if the underlying
	*   implementation doesn't recognize the attribute.
	*/
	@:overload @:abstract public function setAttribute(name : String, value : Dynamic) : Void;
	
	/**
	* Allows the user to retrieve specific attributes on the underlying
	* implementation.
	*
	* @param name The name of the attribute.
	*
	* @return value The value of the attribute.
	*
	* @throws IllegalArgumentException thrown if the underlying
	*   implementation doesn't recognize the attribute.
	*/
	@:overload @:abstract public function getAttribute(name : String) : Dynamic;
	
	/**
	* <p>Set a feature for this <code>DocumentBuilderFactory</code> and <code>DocumentBuilder</code>s created by this factory.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* A {@link ParserConfigurationException} is thrown if this <code>DocumentBuilderFactory</code> or the
	* <code>DocumentBuilder</code>s it creates cannot support the feature.
	* It is possible for a <code>DocumentBuilderFactory</code> to expose a feature value but be unable to change its state.
	* </p>
	*
	* <p>
	* All implementations are required to support the {@link javax.xml.XMLConstants#FEATURE_SECURE_PROCESSING} feature.
	* When the feature is:</p>
	* <ul>
	*   <li>
	*     <code>true</code>: the implementation will limit XML processing to conform to implementation limits.
	*     Examples include enity expansion limits and XML Schema constructs that would consume large amounts of resources.
	*     If XML processing is limited for security reasons, it will be reported via a call to the registered
	*    {@link org.xml.sax.ErrorHandler#fatalError(SAXParseException exception)}.
	*     See {@link  DocumentBuilder#setErrorHandler(org.xml.sax.ErrorHandler errorHandler)}.
	*   </li>
	*   <li>
	*     <code>false</code>: the implementation will processing XML according to the XML specifications without
	*     regard to possible implementation limits.
	*   </li>
	* </ul>
	*
	* @param name Feature name.
	* @param value Is feature state <code>true</code> or <code>false</code>.
	*
	* @throws ParserConfigurationException if this <code>DocumentBuilderFactory</code> or the <code>DocumentBuilder</code>s
	*   it creates cannot support this feature.
	* @throws NullPointerException If the <code>name</code> parameter is null.
	*/
	@:overload @:abstract public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* <p>Get the state of the named feature.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* An {@link ParserConfigurationException} is thrown if this <code>DocumentBuilderFactory</code> or the
	* <code>DocumentBuilder</code>s it creates cannot support the feature.
	* It is possible for an <code>DocumentBuilderFactory</code> to expose a feature value but be unable to change its state.
	* </p>
	*
	* @param name Feature name.
	*
	* @return State of the named feature.
	*
	* @throws ParserConfigurationException if this <code>DocumentBuilderFactory</code>
	*   or the <code>DocumentBuilder</code>s it creates cannot support this feature.
	*/
	@:overload @:abstract public function getFeature(name : String) : Bool;
	
	/**
	* Gets the {@link Schema} object specified through
	* the {@link #setSchema(Schema schema)} method.
	*
	* @return
	*      the {@link Schema} object that was last set through
	*      the {@link #setSchema(Schema)} method, or null
	*      if the method was not invoked since a {@link DocumentBuilderFactory}
	*      is created.
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getSchema() : javax.xml.validation.Schema;
	
	/**
	* <p>Set the {@link Schema} to be used by parsers created
	* from this factory.
	*
	* <p>
	* When a {@link Schema} is non-null, a parser will use a validator
	* created from it to validate documents before it passes information
	* down to the application.
	*
	* <p>When errors are found by the validator, the parser is responsible
	* to report them to the user-specified {@link org.xml.sax.ErrorHandler}
	* (or if the error handler is not set, ignore them or throw them), just
	* like any other errors found by the parser itself.
	* In other words, if the user-specified {@link org.xml.sax.ErrorHandler}
	* is set, it must receive those errors, and if not, they must be
	* treated according to the implementation specific
	* default error handling rules.
	*
	* <p>
	* A validator may modify the outcome of a parse (for example by
	* adding default values that were missing in documents), and a parser
	* is responsible to make sure that the application will receive
	* modified DOM trees.
	*
	* <p>
	* Initialy, null is set as the {@link Schema}.
	*
	* <p>
	* This processing will take effect even if
	* the {@link #isValidating()} method returns <code>false</code>.
	*
	* <p>It is an error to use
	* the <code>http://java.sun.com/xml/jaxp/properties/schemaSource</code>
	* property and/or the <code>http://java.sun.com/xml/jaxp/properties/schemaLanguage</code>
	* property in conjunction with a {@link Schema} object.
	* Such configuration will cause a {@link ParserConfigurationException}
	* exception when the {@link #newDocumentBuilder()} is invoked.</p>
	*
	*
	* <h4>Note for implmentors</h4>
	*
	* <p>
	* A parser must be able to work with any {@link Schema}
	* implementation. However, parsers and schemas are allowed
	* to use implementation-specific custom mechanisms
	* as long as they yield the result described in the specification.
	* </p>
	*
	* @param schema <code>Schema</code> to use or <code>null</code>
	*   to remove a schema.
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	/**
	* <p>Set state of XInclude processing.</p>
	*
	* <p>If XInclude markup is found in the document instance, should it be
	* processed as specified in <a href="http://www.w3.org/TR/xinclude/">
	* XML Inclusions (XInclude) Version 1.0</a>.</p>
	*
	* <p>XInclude processing defaults to <code>false</code>.</p>
	*
	* @param state Set XInclude processing to <code>true</code> or
	*   <code>false</code>
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function setXIncludeAware(state : Bool) : Void;
	
	/**
	* <p>Get state of XInclude processing.</p>
	*
	* @return current state of XInclude processing
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function isXIncludeAware() : Bool;
	
	
}
