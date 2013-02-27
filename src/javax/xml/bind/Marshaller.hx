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
extern interface Marshaller
{
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into the specified
	* <tt>javax.xml.transform.Result</tt>.
	*
	* <p>
	* All JAXB Providers must at least support
	* {@link javax.xml.transform.dom.DOMResult},
	* {@link javax.xml.transform.sax.SAXResult}, and
	* {@link javax.xml.transform.stream.StreamResult}. It can
	* support other derived classes of <tt>Result</tt> as well.
	*
	* @param jaxbElement
	*      The root of content tree to be marshalled.
	* @param result
	*      XML will be sent to this Result
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload public function marshal(jaxbElement : Dynamic, result : javax.xml.transform.Result) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into an output stream.
	*
	* @param jaxbElement
	*      The root of content tree to be marshalled.
	* @param os
	*      XML will be added to this stream.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload public function marshal(jaxbElement : Dynamic, os : java.io.OutputStream) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into a file.
	*
	* @param jaxbElement
	*      The root of content tree to be marshalled.
	* @param output
	*      File to be written. If this file already exists, it will be overwritten.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	* @since JAXB2.1
	*/
	@:require(java1) @:overload public function marshal(jaxbElement : Dynamic, output : java.io.File) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into a Writer.
	*
	* @param jaxbElement
	*      The root of content tree to be marshalled.
	* @param writer
	*      XML will be sent to this writer.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload public function marshal(jaxbElement : Dynamic, writer : java.io.Writer) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into SAX2 events.
	*
	* @param jaxbElement
	*      The root of content tree to be marshalled.
	* @param handler
	*      XML will be sent to this handler as SAX2 events.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload public function marshal(jaxbElement : Dynamic, handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into a DOM tree.
	*
	* @param jaxbElement
	*      The content tree to be marshalled.
	* @param node
	*      DOM nodes will be added as children of this node.
	*      This parameter must be a Node that accepts children
	*      ({@link org.w3c.dom.Document},
	*      {@link  org.w3c.dom.DocumentFragment}, or
	*      {@link  org.w3c.dom.Element})
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>jaxbElement</tt> (or any
	*      object reachable from <tt>jaxbElement</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*/
	@:overload public function marshal(jaxbElement : Dynamic, node : org.w3c.dom.Node) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into a
	* {@link javax.xml.stream.XMLStreamWriter}.
	*
	* @param jaxbElement
	*      The content tree to be marshalled.
	* @param writer
	*      XML will be sent to this writer.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function marshal(jaxbElement : Dynamic, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Marshal the content tree rooted at <tt>jaxbElement</tt> into a
	* {@link javax.xml.stream.XMLEventWriter}.
	*
	* @param jaxbElement
	*      The content tree rooted at jaxbElement to be marshalled.
	* @param writer
	*      XML will be sent to this writer.
	*
	* @throws JAXBException
	*      If any unexpected problem occurs during the marshalling.
	* @throws MarshalException
	*      If the {@link ValidationEventHandler ValidationEventHandler}
	*      returns false from its <tt>handleEvent</tt> method or the
	*      <tt>Marshaller</tt> is unable to marshal <tt>obj</tt> (or any
	*      object reachable from <tt>obj</tt>).  See <a href="#elementMarshalling">
	*      Marshalling a JAXB element</a>.
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function marshal(jaxbElement : Dynamic, writer : javax.xml.stream.XMLEventWriter) : Void;
	
	/**
	* Get a DOM tree view of the content tree(Optional).
	*
	* If the returned DOM tree is updated, these changes are also
	* visible in the content tree.
	* Use {@link #marshal(Object, org.w3c.dom.Node)} to force
	* a deep copy of the content tree to a DOM representation.
	*
	* @param contentTree - JAXB Java representation of XML content
	*
	* @return the DOM tree view of the contentTree
	*
	* @throws UnsupportedOperationException
	*      If the JAXB provider implementation does not support a
	*      DOM view of the content tree
	*
	* @throws IllegalArgumentException
	*      If any of the method parameters are null
	*
	* @throws JAXBException
	*      If any unexpected problem occurs
	*
	*/
	@:overload public function getNode(contentTree : Dynamic) : org.w3c.dom.Node;
	
	/**
	* Set the particular property in the underlying implementation of
	* <tt>Marshaller</tt>.  This method can only be used to set one of
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
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get the particular property in the underlying implementation of
	* <tt>Marshaller</tt>.  This method can only be used to get one of
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
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* Allow an application to register a validation event handler.
	* <p>
	* The validation event handler will be called by the JAXB Provider if any
	* validation errors are encountered during calls to any of the marshal
	* API's.  If the client application does not register a validation event
	* handler before invoking one of the marshal methods, then validation
	* events will be handled by the default event handler which will terminate
	* the marshal operation after the first error or fatal error is encountered.
	* <p>
	* Calling this method with a null parameter will cause the Marshaller
	* to revert back to the default default event handler.
	*
	* @param handler the validation event handler
	* @throws JAXBException if an error was encountered while setting the
	*         event handler
	*/
	@:overload public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	/**
	* Return the current event handler or the default event handler if one
	* hasn't been set.
	*
	* @return the current ValidationEventHandler or the default event handler
	*         if it hasn't been set
	* @throws JAXBException if an error was encountered while getting the
	*         current event handler
	*/
	@:overload public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	* Associates a configured instance of {@link XmlAdapter} with this marshaller.
	*
	* <p>
	* This is a convenience method that invokes <code>setAdapter(adapter.getClass(),adapter);</code>.
	*
	* @see #setAdapter(Class,XmlAdapter)
	* @throws IllegalArgumentException
	*      if the adapter parameter is null.
	* @throws UnsupportedOperationException
	*      if invoked agains a JAXB 1.0 implementation.
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function setAdapter(adapter : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>) : Void;
	
	/**
	* Associates a configured instance of {@link XmlAdapter} with this marshaller.
	*
	* <p>
	* Every marshaller internally maintains a
	* {@link java.util.Map}&lt;{@link Class},{@link XmlAdapter}>,
	* which it uses for marshalling classes whose fields/methods are annotated
	* with {@link javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter}.
	*
	* <p>
	* This method allows applications to use a configured instance of {@link XmlAdapter}.
	* When an instance of an adapter is not given, a marshaller will create
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
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	/**
	* Gets the adapter associated with the specified type.
	*
	* This is the reverse operation of the {@link #setAdapter} method.
	*
	* @throws IllegalArgumentException
	*      if the type parameter is null.
	* @throws UnsupportedOperationException
	*      if invoked agains a JAXB 1.0 implementation.
	* @since JAXB 2.0
	*/
	@:require(java0) @:overload public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	/**
	* <p>Associate a context that enables binary data within an XML document
	* to be transmitted as XML-binary optimized attachment.
	* The attachment is referenced from the XML document content model
	* by content-id URIs(cid) references stored within the xml document.
	*
	* @throws IllegalStateException if attempt to concurrently call this
	*                               method during a marshal operation.
	*/
	@:overload public function setAttachmentMarshaller(am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload public function getAttachmentMarshaller() : javax.xml.bind.attachment.AttachmentMarshaller;
	
	/**
	* Specify the JAXP 1.3 {@link javax.xml.validation.Schema Schema}
	* object that should be used to validate subsequent marshal operations
	* against.  Passing null into this method will disable validation.
	*
	* <p>
	* This method allows the caller to validate the marshalled XML as it's marshalled.
	*
	* <p>
	* Initially this property is set to <tt>null</tt>.
	*
	* @param schema Schema object to validate marshal operations against or null to disable validation
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Marshaller created from a JAXBContext referencing
	*         JAXB 1.0 mapped classes
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	/**
	* Get the JAXP 1.3 {@link javax.xml.validation.Schema Schema} object
	* being used to perform marshal-time validation.  If there is no
	* Schema set on the marshaller, then this method will return null
	* indicating that marshal-time validation will not be performed.
	*
	* @return the Schema object being used to perform marshal-time
	*      validation or null if not present.
	* @throws UnsupportedOperationException could be thrown if this method is
	*         invoked on an Marshaller created from a JAXBContext referencing
	*         JAXB 1.0 mapped classes
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function getSchema() : javax.xml.validation.Schema;
	
	/**
	* <p>
	* Register marshal event callback {@link Listener} with this {@link Marshaller}.
	*
	* <p>
	* There is only one Listener per Marshaller. Setting a Listener replaces the previous set Listener.
	* One can unregister current Listener by setting listener to <tt>null</tt>.
	*
	* @param listener an instance of a class that implements {@link Listener}
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function setListener(listener : Marshaller_Listener) : Void;
	
	/**
	* <p>Return {@link Listener} registered with this {@link Marshaller}.
	*
	* @return registered {@link Listener} or <code>null</code> if no Listener is registered with this Marshaller.
	* @since JAXB2.0
	*/
	@:require(java0) @:overload public function getListener() : Marshaller_Listener;
	
	
}
/**
* <p/>
* Register an instance of an implementation of this class with a {@link Marshaller} to externally listen
* for marshal events.
* <p/>
* <p/>
* This class enables pre and post processing of each marshalled object.
* The event callbacks are called when marshalling from an instance that maps to an xml element or
* complex type definition. The event callbacks are not called when marshalling from an instance of a
* Java datatype that represents a simple type definition.
* <p/>
* <p/>
* External listener is one of two different mechanisms for defining marshal event callbacks.
* See <a href="Marshaller.html#marshalEventCallback">Marshal Event Callbacks</a> for an overview.
*
* @see Marshaller#setListener(Listener)
* @see Marshaller#getListener()
* @since JAXB2.0
*/
@:require(java0) @:native('javax$xml$bind$Marshaller$Listener') extern class Marshaller_Listener
{
	/**
	* <p/>
	* Callback method invoked before marshalling from <tt>source</tt> to XML.
	* <p/>
	* <p/>
	* This method is invoked just before marshalling process starts to marshal <tt>source</tt>.
	* Note that if the class of <tt>source</tt> defines its own <tt>beforeMarshal</tt> method,
	* the class specific callback method is invoked just before this method is invoked.
	*
	* @param source instance of JAXB mapped class prior to marshalling from it.
	*/
	@:overload public function beforeMarshal(source : Dynamic) : Void;
	
	/**
	* <p/>
	* Callback method invoked after marshalling <tt>source</tt> to XML.
	* <p/>
	* <p/>
	* This method is invoked after <tt>source</tt> and all its descendants have been marshalled.
	* Note that if the class of <tt>source</tt> defines its own <tt>afterMarshal</tt> method,
	* the class specific callback method is invoked just before this method is invoked.
	*
	* @param source instance of JAXB mapped class after marshalling it.
	*/
	@:overload public function afterMarshal(source : Dynamic) : Void;
	
	
}
