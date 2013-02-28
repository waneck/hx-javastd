package javax.xml.bind.helpers;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractUnmarshallerImpl implements javax.xml.bind.Unmarshaller
{
	/** whether or not the unmarshaller will validate */
	private var validating : Bool;
	
	/**
	* Obtains a configured XMLReader.
	*
	* This method is used when the client-specified
	* {@link SAXSource} object doesn't have XMLReader.
	*
	* {@link Unmarshaller} is not re-entrant, so we will
	* only use one instance of XMLReader.
	*/
	@:overload private function getXMLReader() : org.xml.sax.XMLReader;
	
	@:overload public function unmarshal(source : javax.xml.transform.Source) : Dynamic;
	
	/**
	* Unmarshals an object by using the specified XMLReader and the InputSource.
	*
	* The callee should call the setErrorHandler method of the XMLReader
	* so that errors are passed to the client-specified ValidationEventHandler.
	*/
	@:overload @:abstract private function unmarshal(reader : org.xml.sax.XMLReader, source : org.xml.sax.InputSource) : Dynamic;
	
	@:overload @:final public function unmarshal(source : org.xml.sax.InputSource) : Dynamic;
	
	@:overload @:final public function unmarshal(url : java.net.URL) : Dynamic;
	
	@:overload @:final public function unmarshal(f : java.io.File) : Dynamic;
	
	@:overload @:final public function unmarshal(is : java.io.InputStream) : Dynamic;
	
	@:overload @:final public function unmarshal(reader : java.io.Reader) : Dynamic;
	
	/**
	* Indicates whether or not the Unmarshaller is configured to validate
	* during unmarshal operations.
	* <p>
	* <i><b>Note:</b> I named this method isValidating() to stay in-line
	* with JAXP, as opposed to naming it getValidating(). </i>
	*
	* @return true if the Unmarshaller is configured to validate during
	*        unmarshal operations, false otherwise
	* @throws JAXBException if an error occurs while retrieving the validating
	*        flag
	*/
	@:overload public function isValidating() : Bool;
	
	/**
	* Allow an application to register a validation event handler.
	* <p>
	* The validation event handler will be called by the JAXB Provider if any
	* validation errors are encountered during calls to any of the
	* <tt>unmarshal</tt> methods.  If the client application does not register
	* a validation event handler before invoking the unmarshal methods, then
	* all validation events will be silently ignored and may result in
	* unexpected behaviour.
	*
	* @param handler the validation event handler
	* @throws JAXBException if an error was encountered while setting the
	*        event handler
	*/
	@:overload public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	/**
	* Specifies whether or not the Unmarshaller should validate during
	* unmarshal operations.  By default, the <tt>Unmarshaller</tt> does
	* not validate.
	* <p>
	* This method may only be invoked before or after calling one of the
	* unmarshal methods.
	*
	* @param validating true if the Unmarshaller should validate during
	*       unmarshal, false otherwise
	* @throws JAXBException if an error occurred while enabling or disabling
	* validation at unmarshal time
	*/
	@:overload public function setValidating(validating : Bool) : Void;
	
	/**
	* Return the current event handler or the default event handler if one
	* hasn't been set.
	*
	* @return the current ValidationEventHandler or the default event handler
	*        if it hasn't been set
	* @throws JAXBException if an error was encountered while getting the
	*        current event handler
	*/
	@:overload public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	* Creates an UnmarshalException from a SAXException.
	*
	* This is an utility method provided for the derived classes.
	*
	* <p>
	* When a provider-implemented ContentHandler wants to throw a
	* JAXBException, it needs to wrap the exception by a SAXException.
	* If the unmarshaller implementation blindly wrap SAXException
	* by JAXBException, such an exception will be a JAXBException
	* wrapped by a SAXException wrapped by another JAXBException.
	* This is silly.
	*
	* <p>
	* This method checks the nested exception of SAXException
	* and reduce those excessive wrapping.
	*
	* @return the resulting UnmarshalException
	*/
	@:overload private function createUnmarshalException(e : org.xml.sax.SAXException) : javax.xml.bind.UnmarshalException;
	
	/**
	* Default implementation of the setProperty method always
	* throws PropertyException since there are no required
	* properties. If a provider needs to handle additional
	* properties, it should override this method in a derived class.
	*/
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Default implementation of the getProperty method always
	* throws PropertyException since there are no required
	* properties. If a provider needs to handle additional
	* properties, it should override this method in a derived class.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function unmarshal(reader : javax.xml.stream.XMLEventReader) : Dynamic;
	
	@:overload public function unmarshal(reader : javax.xml.stream.XMLStreamReader) : Dynamic;
	
	@:overload public function unmarshal<T>(node : org.w3c.dom.Node, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function unmarshal<T>(source : javax.xml.transform.Source, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function unmarshal<T>(reader : javax.xml.stream.XMLStreamReader, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function unmarshal<T>(reader : javax.xml.stream.XMLEventReader, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	@:overload public function getSchema() : javax.xml.validation.Schema;
	
	@:overload public function setAdapter(adapter : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>) : Void;
	
	@:overload public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	@:overload public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	@:overload public function setAttachmentUnmarshaller(au : javax.xml.bind.attachment.AttachmentUnmarshaller) : Void;
	
	@:overload public function getAttachmentUnmarshaller() : javax.xml.bind.attachment.AttachmentUnmarshaller;
	
	@:overload public function setListener(listener : javax.xml.bind.Unmarshaller.Unmarshaller_Listener) : Void;
	
	@:overload public function getListener() : javax.xml.bind.Unmarshaller.Unmarshaller_Listener;
	
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
	@:overload @:public public function unmarshal(node : org.w3c.dom.Node) : Dynamic;
	
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
	@:overload @:public public function getUnmarshallerHandler() : javax.xml.bind.UnmarshallerHandler;
	
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
	@:require(java0) @:overload @:public public function setListener(listener : Unmarshaller_Listener) : Void;
	
	
}
