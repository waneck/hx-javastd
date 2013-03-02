package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: TransformerFactoryImpl.java,v 1.8 2007/04/09 21:30:41 joehw Exp $
*/
extern class TransformerFactoryImpl extends javax.xml.transform.sax.SAXTransformerFactory implements com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader implements javax.xml.transform.ErrorListener
{
	/**
	* Implementation of a JAXP1.1 TransformerFactory for Translets.
	* @author G. Todd Miller
	* @author Morten Jorgensen
	* @author Santiago Pericas-Geertsen
	*/
	public static var TRANSLET_NAME(default, null) : String;
	
	public static var DESTINATION_DIRECTORY(default, null) : String;
	
	public static var PACKAGE_NAME(default, null) : String;
	
	public static var JAR_NAME(default, null) : String;
	
	public static var GENERATE_TRANSLET(default, null) : String;
	
	public static var AUTO_TRANSLET(default, null) : String;
	
	public static var USE_CLASSPATH(default, null) : String;
	
	public static var DEBUG(default, null) : String;
	
	public static var ENABLE_INLINING(default, null) : String;
	
	public static var INDENT_NUMBER(default, null) : String;
	
	/**
	* As Gregor Samsa awoke one morning from uneasy dreams he found himself
	* transformed in his bed into a gigantic insect. He was lying on his hard,
	* as it were armour plated, back, and if he lifted his head a little he
	* could see his big, brown belly divided into stiff, arched segments, on
	* top of which the bed quilt could hardly keep in position and was about
	* to slide off completely. His numerous legs, which were pitifully thin
	* compared to the rest of his bulk, waved helplessly before his eyes.
	* "What has happened to me?", he thought. It was no dream....
	*/
	private static var DEFAULT_TRANSLET_NAME(default, null) : String;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	*/
	@:overload public function new() : Void;
	
	@:overload public static function newTransformerFactoryNoServiceLoader() : javax.xml.transform.TransformerFactory;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Set the error event listener for the TransformerFactory, which is used
	* for the processing of transformation instructions, and not for the
	* transformation itself.
	*
	* @param listener The error listener to use with the TransformerFactory
	* @throws IllegalArgumentException
	*/
	@:overload public function setErrorListener(listener : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Get the error event handler for the TransformerFactory.
	*
	* @return The error listener used with the TransformerFactory
	*/
	@:overload public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Returns the value set for a TransformerFactory attribute
	*
	* @param name The attribute name
	* @return An object representing the attribute value
	* @throws IllegalArgumentException
	*/
	@:overload public function getAttribute(name : String) : Dynamic;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Sets the value for a TransformerFactory attribute.
	*
	* @param name The attribute name
	* @param value An object representing the attribute value
	* @throws IllegalArgumentException
	*/
	@:overload public function setAttribute(name : String, value : Dynamic) : Void;
	
	/**
	* <p>Set a feature for this <code>TransformerFactory</code> and <code>Transformer</code>s
	* or <code>Template</code>s created by this factory.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* An {@link TransformerConfigurationException} is thrown if this <code>TransformerFactory</code> or the
	* <code>Transformer</code>s or <code>Template</code>s it creates cannot support the feature.
	* It is possible for an <code>TransformerFactory</code> to expose a feature value but be unable to change its state.
	* </p>
	*
	* <p>See {@link javax.xml.transform.TransformerFactory} for full documentation of specific features.</p>
	*
	* @param name Feature name.
	* @param value Is feature state <code>true</code> or <code>false</code>.
	*
	* @throws TransformerConfigurationException if this <code>TransformerFactory</code>
	*   or the <code>Transformer</code>s or <code>Template</code>s it creates cannot support this feature.
	* @throws NullPointerException If the <code>name</code> parameter is null.
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Look up the value of a feature (to see if it is supported).
	* This method must be updated as the various methods and features of this
	* class are implemented.
	*
	* @param name The feature name
	* @return 'true' if feature is supported, 'false' if not
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload public function useServicesMechnism() : Bool;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Get the object that is used by default during the transformation to
	* resolve URIs used in document(), xsl:import, or xsl:include.
	*
	* @return The URLResolver used for this TransformerFactory and all
	* Templates and Transformer objects created using this factory
	*/
	@:overload public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Set the object that is used by default during the transformation to
	* resolve URIs used in document(), xsl:import, or xsl:include. Note that
	* this does not affect Templates and Transformers that are already
	* created with this factory.
	*
	* @param resolver The URLResolver used for this TransformerFactory and all
	* Templates and Transformer objects created using this factory
	*/
	@:overload public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Get the stylesheet specification(s) associated via the xml-stylesheet
	* processing instruction (see http://www.w3.org/TR/xml-stylesheet/) with
	* the document document specified in the source parameter, and that match
	* the given criteria.
	*
	* @param source The XML source document.
	* @param media The media attribute to be matched. May be null, in which
	* case the prefered templates will be used (i.e. alternate = no).
	* @param title The value of the title attribute to match. May be null.
	* @param charset The value of the charset attribute to match. May be null.
	* @return A Source object suitable for passing to the TransformerFactory.
	* @throws TransformerConfigurationException
	*/
	@:overload public function getAssociatedStylesheet(source : javax.xml.transform.Source, media : String, title : String, charset : String) : javax.xml.transform.Source;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Create a Transformer object that copies the input document to the result.
	*
	* @return A Transformer object that simply copies the source to the result.
	* @throws TransformerConfigurationException
	*/
	@:overload public function newTransformer() : javax.xml.transform.Transformer;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Process the Source into a Templates object, which is a a compiled
	* representation of the source. Note that this method should not be
	* used with XSLTC, as the time-consuming compilation is done for each
	* and every transformation.
	*
	* @return A Templates object that can be used to create Transformers.
	* @throws TransformerConfigurationException
	*/
	@:overload public function newTransformer(source : javax.xml.transform.Source) : javax.xml.transform.Transformer;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Process the Source into a Templates object, which is a a compiled
	* representation of the source.
	*
	* @param source The input stylesheet - DOMSource not supported!!!
	* @return A Templates object that can be used to create Transformers.
	* @throws TransformerConfigurationException
	*/
	@:overload public function newTemplates(source : javax.xml.transform.Source) : javax.xml.transform.Templates;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Get a TemplatesHandler object that can process SAX ContentHandler
	* events into a Templates object.
	*
	* @return A TemplatesHandler object that can handle SAX events
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newTemplatesHandler() : javax.xml.transform.sax.TemplatesHandler;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events into a Result. This method will return a pure copy transformer.
	*
	* @return A TransformerHandler object that can handle SAX events
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newTransformerHandler() : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events into a Result, based on the transformation instructions
	* specified by the argument.
	*
	* @param src The source of the transformation instructions.
	* @return A TransformerHandler object that can handle SAX events
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newTransformerHandler(src : javax.xml.transform.Source) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events into a Result, based on the transformation instructions
	* specified by the argument.
	*
	* @param templates Represents a pre-processed stylesheet
	* @return A TransformerHandler object that can handle SAX events
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newTransformerHandler(templates : javax.xml.transform.Templates) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Create an XMLFilter that uses the given source as the
	* transformation instructions.
	*
	* @param src The source of the transformation instructions.
	* @return An XMLFilter object, or null if this feature is not supported.
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newXMLFilter(src : javax.xml.transform.Source) : org.xml.sax.XMLFilter;
	
	/**
	* javax.xml.transform.sax.SAXTransformerFactory implementation.
	* Create an XMLFilter that uses the given source as the
	* transformation instructions.
	*
	* @param templates The source of the transformation instructions.
	* @return An XMLFilter object, or null if this feature is not supported.
	* @throws TransformerConfigurationException
	*/
	@:overload override public function newXMLFilter(templates : javax.xml.transform.Templates) : org.xml.sax.XMLFilter;
	
	/**
	* Receive notification of a recoverable error.
	* The transformer must continue to provide normal parsing events after
	* invoking this method. It should still be possible for the application
	* to process the document through to the end.
	*
	* @param e The warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (always does in our case).
	*/
	@:overload public function error(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	* The application must assume that the transformation cannot continue
	* after the Transformer has invoked this method, and should continue
	* (if at all) only to collect addition error messages. In fact,
	* Transformers are free to stop reporting events once this method has
	* been invoked.
	*
	* @param e warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (always does in our case).
	*/
	@:overload public function fatalError(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a warning.
	* Transformers can use this method to report conditions that are not
	* errors or fatal errors. The default behaviour is to take no action.
	* After invoking this method, the Transformer must continue with the
	* transformation. It should still be possible for the application to
	* process the document through to the end.
	*
	* @param e The warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (never does in our case).
	*/
	@:overload public function warning(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* This method implements XSLTC's SourceLoader interface. It is used to
	* glue a TrAX URIResolver to the XSLTC compiler's Input and Import classes.
	*
	* @param href The URI of the document to load
	* @param context The URI of the currently loaded document
	* @param xsltc The compiler that resuests the document
	* @return An InputSource with the loaded document
	*/
	@:overload public function loadSource(href : String, context : String, xsltc : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC) : org.xml.sax.InputSource;
	
	/**
	* Returns the Class object the provides the XSLTC DTM Manager service.
	*/
	@:overload private function getDTMManagerClass() : Class<Dynamic>;
	
	
}
/**
* The above hashtable stores objects of this class.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$trax$TransformerFactoryImpl$PIParamWrapper') @:internal extern class TransformerFactoryImpl_PIParamWrapper
{
	public var _media : String;
	
	public var _title : String;
	
	public var _charset : String;
	
	@:overload public function new(media : String, title : String, charset : String) : Void;
	
	
}
