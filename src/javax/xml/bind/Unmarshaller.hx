package javax.xml.bind;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface Unmarshaller
{
	/**
	* Unmarshal XML data from the specified file and return the resulting
	* content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param f the file to unmarshal XML data from
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the file parameter is null
	*/
	@:overload @:public public function unmarshal(f : java.io.File) : Dynamic;
	
	/**
	* Unmarshal XML data from the specified InputStream and return the
	* resulting content tree.  Validation event location information may
	* be incomplete when using this form of the unmarshal API.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param is the InputStream to unmarshal XML data from
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the InputStream parameter is null
	*/
	@:overload @:public public function unmarshal(is : java.io.InputStream) : Dynamic;
	
	/**
	* Unmarshal XML data from the specified Reader and return the
	* resulting content tree.  Validation event location information may
	* be incomplete when using this form of the unmarshal API,
	* because a Reader does not provide the system ID.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param reader the Reader to unmarshal XML data from
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the InputStream parameter is null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function unmarshal(reader : java.io.Reader) : Dynamic;
	
	/**
	* Unmarshal XML data from the specified URL and return the resulting
	* content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param url the url to unmarshal XML data from
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the URL parameter is null
	*/
	@:overload @:public public function unmarshal(url : java.net.URL) : Dynamic;
	
	/**
	* Unmarshal XML data from the specified SAX InputSource and return the
	* resulting content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param source the input source to unmarshal XML data from
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the InputSource parameter is null
	*/
	@:overload @:public public function unmarshal(source : org.xml.sax.InputSource) : Dynamic;
	
	/**
	* Unmarshal global XML data from the specified DOM tree and return the resulting
	* content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* @param node
	*      the document/element to unmarshal XML data from.
	*      The caller must support at least Document and Element.
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the Node parameter is null
	* @see #unmarshal(org.w3c.dom.Node, Class)
	*/
	@:overload @:public @:public public function unmarshal(node : org.w3c.dom.Node) : Dynamic;
	
	/**
	* Unmarshal XML data by JAXB mapped <tt>declaredType</tt>
	* and return the resulting content tree.
	*
	* <p>
	* Implements <a href="#unmarshalByDeclaredType">Unmarshal by Declared Type</a>
	*
	* @param node
	*      the document/element to unmarshal XML data from.
	*      The caller must support at least Document and Element.
	* @param declaredType
	*      appropriate JAXB mapped class to hold <tt>node</tt>'s XML data.
	*
	* @return <a href="#unmarshalDeclaredTypeReturn">JAXB Element</a> representation of <tt>node</tt>
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If any parameter is null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function unmarshal<T>(node : org.w3c.dom.Node, declaredType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	/**
	* Unmarshal XML data from the specified XML Source and return the
	* resulting content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* <p>
	* <a name="saxParserPlugable"></a>
	* <b>SAX 2.0 Parser Pluggability</b>
	* <p>
	* A client application can choose not to use the default parser mechanism
	* supplied with their JAXB provider.  Any SAX 2.0 compliant parser can be
	* substituted for the JAXB provider's default mechanism.  To do so, the
	* client application must properly configure a <tt>SAXSource</tt> containing
	* an <tt>XMLReader</tt> implemented by the SAX 2.0 parser provider.  If the
	* <tt>XMLReader</tt> has an <tt>org.xml.sax.ErrorHandler</tt> registered
	* on it, it will be replaced by the JAXB Provider so that validation errors
	* can be reported via the <tt>ValidationEventHandler</tt> mechanism of
	* JAXB.  If the <tt>SAXSource</tt> does not contain an <tt>XMLReader</tt>,
	* then the JAXB provider's default parser mechanism will be used.
	* <p>
	* This parser replacement mechanism can also be used to replace the JAXB
	* provider's unmarshal-time validation engine.  The client application
	* must properly configure their SAX 2.0 compliant parser to perform
	* validation (as shown in the example above).  Any <tt>SAXParserExceptions
	* </tt> encountered by the parser during the unmarshal operation will be
	* processed by the JAXB provider and converted into JAXB
	* <tt>ValidationEvent</tt> objects which will be reported back to the
	* client via the <tt>ValidationEventHandler</tt> registered with the
	* <tt>Unmarshaller</tt>.  <i>Note:</i> specifying a substitute validating
	* SAX 2.0 parser for unmarshalling does not necessarily replace the
	* validation engine used by the JAXB provider for performing on-demand
	* validation.
	* <p>
	* The only way for a client application to specify an alternate parser
	* mechanism to be used during unmarshal is via the
	* <tt>unmarshal(SAXSource)</tt> API.  All other forms of the unmarshal
	* method (File, URL, Node, etc) will use the JAXB provider's default
	* parser and validator mechanisms.
	*
	* @param source the XML Source to unmarshal XML data from (providers are
	*        only required to support SAXSource, DOMSource, and StreamSource)
	* @return the newly created root object of the java content tree
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the Source parameter is null
	* @see #unmarshal(javax.xml.transform.Source, Class)
	*/
	@:overload @:public public function unmarshal(source : javax.xml.transform.Source) : Dynamic;
	
	/**
	* Unmarshal XML data from the specified XML Source by <tt>declaredType</tt> and return the
	* resulting content tree.
	*
	* <p>
	* Implements <a href="#unmarshalByDeclaredType">Unmarshal by Declared Type</a>
	*
	* <p>
	* See <a href="#saxParserPlugable">SAX 2.0 Parser Pluggability</a>
	*
	* @param source the XML Source to unmarshal XML data from (providers are
	*        only required to support SAXSource, DOMSource, and StreamSource)
	* @param declaredType
	*      appropriate JAXB mapped class to hold <tt>source</tt>'s xml root element
	* @return Java content rooted by <a href="#unmarshalDeclaredTypeReturn">JAXB Element</a>
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If any parameter is null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function unmarshal<T>(source : javax.xml.transform.Source, declaredType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	/**
	* Unmarshal XML data from the specified pull parser and return the
	* resulting content tree.
	*
	* <p>
	* Implements <a href="#unmarshalGlobal">Unmarshal Global Root Element</a>.
	*
	* <p>
	* This method assumes that the parser is on a START_DOCUMENT or
	* START_ELEMENT event.  Unmarshalling will be done from this
	* start event to the corresponding end event.  If this method
	* returns successfully, the <tt>reader</tt> will be pointing at
	* the token right after the end event.
	*
	* @param reader
	*      The parser to be read.
	* @return
	*      the newly created root object of the java content tree.
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the <tt>reader</tt> parameter is null
	* @throws IllegalStateException
	*      If <tt>reader</tt> is not pointing to a START_DOCUMENT or
	*      START_ELEMENT  event.
	* @since JAXB2.0
	* @see #unmarshal(javax.xml.stream.XMLStreamReader, Class)
	*/
	@:require(java0) @:overload @:public public function unmarshal(reader : javax.xml.stream.XMLStreamReader) : Dynamic;
	
	/**
	* Unmarshal root element to JAXB mapped <tt>declaredType</tt>
	* and return the resulting content tree.
	*
	* <p>
	* This method implements <a href="#unmarshalByDeclaredType">unmarshal by declaredType</a>.
	* <p>
	* This method assumes that the parser is on a START_DOCUMENT or
	* START_ELEMENT event. Unmarshalling will be done from this
	* start event to the corresponding end event.  If this method
	* returns successfully, the <tt>reader</tt> will be pointing at
	* the token right after the end event.
	*
	* @param reader
	*      The parser to be read.
	* @param declaredType
	*      appropriate JAXB mapped class to hold <tt>reader</tt>'s START_ELEMENT XML data.
	*
	* @return   content tree rooted by <a href="#unmarshalDeclaredTypeReturn">JAXB Element representation</a>
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If any parameter is null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function unmarshal<T>(reader : javax.xml.stream.XMLStreamReader, declaredType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	/**
	* Unmarshal XML data from the specified pull parser and return the
	* resulting content tree.
	*
	* <p>
	* This method is an <a href="#unmarshalGlobal">Unmarshal Global Root method</a>.
	*
	* <p>
	* This method assumes that the parser is on a START_DOCUMENT or
	* START_ELEMENT event.  Unmarshalling will be done from this
	* start event to the corresponding end event.  If this method
	* returns successfully, the <tt>reader</tt> will be pointing at
	* the token right after the end event.
	*
	* @param reader
	*      The parser to be read.
	* @return
	*      the newly created root object of the java content tree.
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If the <tt>reader</tt> parameter is null
	* @throws IllegalStateException
	*      If <tt>reader</tt> is not pointing to a START_DOCUMENT or
	*      START_ELEMENT event.
	* @since JAXB2.0
	* @see #unmarshal(javax.xml.stream.XMLEventReader, Class)
	*/
	@:require(java0) @:overload @:public public function unmarshal(reader : javax.xml.stream.XMLEventReader) : Dynamic;
	
	/**
	* Unmarshal root element to JAXB mapped <tt>declaredType</tt>
	* and return the resulting content tree.
	*
	* <p>
	* This method implements <a href="#unmarshalByDeclaredType">unmarshal by declaredType</a>.
	*
	* <p>
	* This method assumes that the parser is on a START_DOCUMENT or
	* START_ELEMENT event. Unmarshalling will be done from this
	* start event to the corresponding end event.  If this method
	* returns successfully, the <tt>reader</tt> will be pointing at
	* the token right after the end event.
	*
	* @param reader
	*      The parser to be read.
	* @param declaredType
	*      appropriate JAXB mapped class to hold <tt>reader</tt>'s START_ELEMENT XML data.
	*
	* @return   content tree rooted by <a href="#unmarshalDeclaredTypeReturn">JAXB Element representation</a>
	*
	* @throws JAXBException
	*     If any unexpected errors occur while unmarshalling
	* @throws UnmarshalException
	*     If the {@link ValidationEventHandler ValidationEventHandler}
	*     returns false from its <tt>handleEvent</tt> method or the
	*     <tt>Unmarshaller</tt> is unable to perform the XML to Java
	*     binding.  See <a href="#unmarshalEx">Unmarshalling XML Data</a>
	* @throws IllegalArgumentException
	*      If any parameter is null
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function unmarshal<T>(reader : javax.xml.stream.XMLEventReader, declaredType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	/**
	* Get an unmarshaller handler object that can be used as a component in
	* an XML pipeline.
	*
	* <p>
	* The JAXB Provider can return the same handler object for multiple
	* invocations of this method. In other words, this method does not
	* necessarily create a new instance of <tt>UnmarshallerHandler</tt>. If the
	* application needs to use more than one <tt>UnmarshallerHandler</tt>, it
	* should create more than one <tt>Unmarshaller</tt>.
	*
	* @return the unmarshaller handler object
	* @see UnmarshallerHandler
	*/
	@:overload @:public @:public public function getUnmarshallerHandler() : javax.xml.bind.UnmarshallerHandler;
	
	/**
	* Specifies whether or not the default validation mechanism of the
	* <tt>Unmarshaller</tt> should validate during unmarshal operations.
	* By default, the <tt>Unmarshaller</tt> does not validate.
	* <p>
	* This method may only be invoked before or after calling one of the
	* unmarshal methods.
	* <p>
	* This method only controls the JAXB Provider's default unmarshal-time
	* validation mechanism - it has no impact on clients that specify their
	* own validating SAX 2.0 compliant parser.  Clients that specify their
	* own unmarshal-time validation mechanism may wish to turn off the JAXB
	* Provider's default validation mechanism via this API to avoid "double
	* validation".
	* <p>
	* This method is deprecated as of JAXB 2.0 - please use the new
	* {@link #setSchema(javax.xml.validation.Schema)} API.
	*
	* @param validating true if the Unmarshaller should validate during
	*        unmarshal, false otherwise
	* @throws JAXBException if an error occurred while enabling or disabling
	*         validation at unmarshal time
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Unmarshaller created from a JAXBContext referencing
	*         JAXB 2.0 mapped classes
	* @deprecated since JAXB2.0, please see {@link #setSchema(javax.xml.validation.Schema)}
	*/
	@:overload @:public public function setValidating(validating : Bool) : Void;
	
	/**
	* Indicates whether or not the <tt>Unmarshaller</tt> is configured to
	* validate during unmarshal operations.
	* <p>
	* This API returns the state of the JAXB Provider's default unmarshal-time
	* validation mechanism.
	* <p>
	* This method is deprecated as of JAXB 2.0 - please use the new
	* {@link #getSchema()} API.
	*
	* @return true if the Unmarshaller is configured to validate during
	*         unmarshal operations, false otherwise
	* @throws JAXBException if an error occurs while retrieving the validating
	*         flag
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Unmarshaller created from a JAXBContext referencing
	*         JAXB 2.0 mapped classes
	* @deprecated since JAXB2.0, please see {@link #getSchema()}
	*/
	@:overload @:public public function isValidating() : Bool;
	
	/**
	* Allow an application to register a <tt>ValidationEventHandler</tt>.
	* <p>
	* The <tt>ValidationEventHandler</tt> will be called by the JAXB Provider
	* if any validation errors are encountered during calls to any of the
	* unmarshal methods.  If the client application does not register a
	* <tt>ValidationEventHandler</tt> before invoking the unmarshal methods,
	* then <tt>ValidationEvents</tt> will be handled by the default event
	* handler which will terminate the unmarshal operation after the first
	* error or fatal error is encountered.
	* <p>
	* Calling this method with a null parameter will cause the Unmarshaller
	* to revert back to the default event handler.
	*
	* @param handler the validation event handler
	* @throws JAXBException if an error was encountered while setting the
	*         event handler
	*/
	@:overload @:public public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	/**
	* Return the current event handler or the default event handler if one
	* hasn't been set.
	*
	* @return the current ValidationEventHandler or the default event handler
	*         if it hasn't been set
	* @throws JAXBException if an error was encountered while getting the
	*         current event handler
	*/
	@:overload @:public public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	* Set the particular property in the underlying implementation of
	* <tt>Unmarshaller</tt>.  This method can only be used to set one of
	* the standard JAXB defined properties above or a provider specific
	* property.  Attempting to set an undefined property will result in
	* a PropertyException being thrown.  See <a href="#supportedProps">
	* Supported Properties</a>.
	*
	* @param name the name of the property to be set. This value can either
	*              be specified using one of the constant fields or a user
	*              supplied string.
	* @param value the value of the property to be set
	*
	* @throws PropertyException when there is an error processing the given
	*                            property or value
	* @throws IllegalArgumentException
	*      If the name parameter is null
	*/
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get the particular property in the underlying implementation of
	* <tt>Unmarshaller</tt>.  This method can only be used to get one of
	* the standard JAXB defined properties above or a provider specific
	* property.  Attempting to get an undefined property will result in
	* a PropertyException being thrown.  See <a href="#supportedProps">
	* Supported Properties</a>.
	*
	* @param name the name of the property to retrieve
	* @return the value of the requested property
	*
	* @throws PropertyException
	*      when there is an error retrieving the given property or value
	*      property name
	* @throws IllegalArgumentException
	*      If the name parameter is null
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/**
	* Specify the JAXP 1.3 {@link javax.xml.validation.Schema Schema}
	* object that should be used to validate subsequent unmarshal operations
	* against.  Passing null into this method will disable validation.
	* <p>
	* This method replaces the deprecated {@link #setValidating(boolean) setValidating(boolean)}
	* API.
	*
	* <p>
	* Initially this property is set to <tt>null</tt>.
	*
	* @param schema Schema object to validate unmarshal operations against or null to disable validation
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Unmarshaller created from a JAXBContext referencing
	*         JAXB 1.0 mapped classes
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	/**
	* Get the JAXP 1.3 {@link javax.xml.validation.Schema Schema} object
	* being used to perform unmarshal-time validation.  If there is no
	* Schema set on the unmarshaller, then this method will return null
	* indicating that unmarshal-time validation will not be performed.
	* <p>
	* This method provides replacement functionality for the deprecated
	* {@link #isValidating()} API as well as access to the Schema object.
	* To determine if the Unmarshaller has validation enabled, simply
	* test the return type for null:
	* <p>
	* <code>
	*   boolean isValidating = u.getSchema()!=null;
	* </code>
	*
	* @return the Schema object being used to perform unmarshal-time
	*      validation or null if not present
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Unmarshaller created from a JAXBContext referencing
	*         JAXB 1.0 mapped classes
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function getSchema() : javax.xml.validation.Schema;
	
	/**
	* Associates a configured instance of {@link XmlAdapter} with this unmarshaller.
	*
	* <p>
	* This is a convenience method that invokes <code>setAdapter(adapter.getClass(),adapter);</code>.
	*
	* @see #setAdapter(Class,XmlAdapter)
	* @throws IllegalArgumentException
	*      if the adapter parameter is null.
	* @throws UnsupportedOperationException
	*      if invoked agains a JAXB 1.0 implementation.
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function setAdapter(adapter : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>) : Void;
	
	/**
	* Associates a configured instance of {@link XmlAdapter} with this unmarshaller.
	*
	* <p>
	* Every unmarshaller internally maintains a
	* {@link java.util.Map}&lt;{@link Class},{@link XmlAdapter}>,
	* which it uses for unmarshalling classes whose fields/methods are annotated
	* with {@link javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter}.
	*
	* <p>
	* This method allows applications to use a configured instance of {@link XmlAdapter}.
	* When an instance of an adapter is not given, an unmarshaller will create
	* one by invoking its default constructor.
	*
	* @param type
	*      The type of the adapter. The specified instance will be used when
	*      {@link javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter#value()}
	*      refers to this type.
	* @param adapter
	*      The instance of the adapter to be used. If null, it will un-register
	*      the current adapter set for this type.
	* @throws IllegalArgumentException
	*      if the type parameter is null.
	* @throws UnsupportedOperationException
	*      if invoked agains a JAXB 1.0 implementation.
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	/**
	* Gets the adapter associated with the specified type.
	*
	* This is the reverse operation of the {@link #setAdapter} method.
	*
	* @throws IllegalArgumentException
	*      if the type parameter is null.
	* @throws UnsupportedOperationException
	*      if invoked agains a JAXB 1.0 implementation.
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	/**
	* <p>Associate a context that resolves cid's, content-id URIs, to
	* binary data passed as attachments.</p>
	* <p/>
	* <p>Unmarshal time validation, enabled via {@link #setSchema(Schema)},
	* must be supported even when unmarshaller is performing XOP processing.
	* </p>
	*
	* @throws IllegalStateException if attempt to concurrently call this
	*                               method during a unmarshal operation.
	*/
	@:overload public function setAttachmentUnmarshaller(au : javax.xml.bind.attachment.AttachmentUnmarshaller) : Void;
	
	@:overload public function getAttachmentUnmarshaller() : javax.xml.bind.attachment.AttachmentUnmarshaller;
	
	/**
	* <p>
	* Register unmarshal event callback {@link Listener} with this {@link Unmarshaller}.
	*
	* <p>
	* There is only one Listener per Unmarshaller. Setting a Listener replaces the previous set Listener.
	* One can unregister current Listener by setting listener to <tt>null</tt>.
	*
	* @param listener  provides unmarshal event callbacks for this {@link Unmarshaller}
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function setListener(listener : javax.xml.bind.Unmarshaller.Unmarshaller_Listener) : Void;
	
	/**
	* <p>Return {@link Listener} registered with this {@link Unmarshaller}.
	*
	* @return registered {@link Listener} or <code>null</code> if no Listener is registered with this Unmarshaller.
	* @since JAXB2.0
	*/
	@:require(java0) @:overload @:public public function getListener() : javax.xml.bind.Unmarshaller.Unmarshaller_Listener;
	
	
}
/**
* <p/>
* Register an instance of an implementation of this class with {@link Unmarshaller} to externally listen
* for unmarshal events.
* <p/>
* <p/>
* This class enables pre and post processing of an instance of a JAXB mapped class
* as XML data is unmarshalled into it. The event callbacks are called when unmarshalling
* XML content into a JAXBElement instance or a JAXB mapped class that represents a complex type definition.
* The event callbacks are not called when unmarshalling to an instance of a
* Java datatype that represents a simple type definition.
* <p/>
* <p/>
* External listener is one of two different mechanisms for defining unmarshal event callbacks.
* See <a href="Unmarshaller.html#unmarshalEventCallback">Unmarshal Event Callbacks</a> for an overview.
* <p/>
* (@link #setListener(Listener)}
* (@link #getListener()}
*
* @since JAXB2.0
*/
@:require(java0) @:native('javax$xml$bind$Unmarshaller$Listener') extern class Unmarshaller_Listener
{
	/**
	* <p/>
	* Callback method invoked before unmarshalling into <tt>target</tt>.
	* <p/>
	* <p/>
	* This method is invoked immediately after <tt>target</tt> was created and
	* before the unmarshalling of this object begins. Note that
	* if the class of <tt>target</tt> defines its own <tt>beforeUnmarshal</tt> method,
	* the class specific callback method is invoked before this method is invoked.
	*
	* @param target non-null instance of JAXB mapped class prior to unmarshalling into it.
	* @param parent instance of JAXB mapped class that will eventually reference <tt>target</tt>.
	*               <tt>null</tt> when <tt>target</tt> is root element.
	*/
	@:overload @:public public function beforeUnmarshal(target : Dynamic, parent : Dynamic) : Void;
	
	/**
	* <p/>
	* Callback method invoked after unmarshalling XML data into <tt>target</tt>.
	* <p/>
	* <p/>
	* This method is invoked after all the properties (except IDREF) are unmarshalled into <tt>target</tt>,
	* but before <tt>target</tt> is set into its <tt>parent</tt> object.
	* Note that if the class of <tt>target</tt> defines its own <tt>afterUnmarshal</tt> method,
	* the class specific callback method is invoked before this method is invoked.
	*
	* @param target non-null instance of JAXB mapped class prior to unmarshalling into it.
	* @param parent instance of JAXB mapped class that will reference <tt>target</tt>.
	*               <tt>null</tt> when <tt>target</tt> is root element.
	*/
	@:overload @:public public function afterUnmarshal(target : Dynamic, parent : Dynamic) : Void;
	
	
}
