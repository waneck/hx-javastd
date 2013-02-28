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
extern class AbstractMarshallerImpl implements javax.xml.bind.Marshaller
{
	@:overload @:final public function marshal(obj : Dynamic, os : java.io.OutputStream) : Void;
	
	@:overload public function marshal(jaxbElement : Dynamic, output : java.io.File) : Void;
	
	@:overload @:final public function marshal(obj : Dynamic, w : java.io.Writer) : Void;
	
	@:overload @:final public function marshal(obj : Dynamic, handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:final public function marshal(obj : Dynamic, node : org.w3c.dom.Node) : Void;
	
	/**
	* By default, the getNode method is unsupported and throw
	* an {@link java.lang.UnsupportedOperationException}.
	*
	* Implementations that choose to support this method must
	* override this method.
	*/
	@:overload public function getNode(obj : Dynamic) : org.w3c.dom.Node;
	
	/**
	* Convenience method for getting the current output encoding.
	*
	* @return the current encoding or "UTF-8" if it hasn't been set.
	*/
	@:overload private function getEncoding() : String;
	
	/**
	* Convenience method for setting the output encoding.
	*
	* @param encoding a valid encoding as specified in the Marshaller class
	* documentation
	*/
	@:overload private function setEncoding(encoding : String) : Void;
	
	/**
	* Convenience method for getting the current schemaLocation.
	*
	* @return the current schemaLocation or null if it hasn't been set
	*/
	@:overload private function getSchemaLocation() : String;
	
	/**
	* Convenience method for setting the schemaLocation.
	*
	* @param location the schemaLocation value
	*/
	@:overload private function setSchemaLocation(location : String) : Void;
	
	/**
	* Convenience method for getting the current noNamespaceSchemaLocation.
	*
	* @return the current noNamespaceSchemaLocation or null if it hasn't
	* been set
	*/
	@:overload private function getNoNSSchemaLocation() : String;
	
	/**
	* Convenience method for setting the noNamespaceSchemaLocation.
	*
	* @param location the noNamespaceSchemaLocation value
	*/
	@:overload private function setNoNSSchemaLocation(location : String) : Void;
	
	/**
	* Convenience method for getting the formatted output flag.
	*
	* @return the current value of the formatted output flag or false if
	* it hasn't been set.
	*/
	@:overload private function isFormattedOutput() : Bool;
	
	/**
	* Convenience method for setting the formatted output flag.
	*
	* @param v value of the formatted output flag.
	*/
	@:overload private function setFormattedOutput(v : Bool) : Void;
	
	/**
	* Convenience method for getting the fragment flag.
	*
	* @return the current value of the fragment flag or false if
	* it hasn't been set.
	*/
	@:overload private function isFragment() : Bool;
	
	/**
	* Convenience method for setting the fragment flag.
	*
	* @param v value of the fragment flag.
	*/
	@:overload private function setFragment(v : Bool) : Void;
	
	/**
	* Gets the corresponding Java encoding name from an IANA name.
	*
	* This method is a helper method for the derived class to convert
	* encoding names.
	*
	* @exception UnsupportedEncodingException
	*      If this implementation couldn't find the Java encoding name.
	*/
	@:overload private function getJavaEncoding(encoding : String) : String;
	
	/**
	* Default implementation of the setProperty method handles
	* the four defined properties in Marshaller. If a provider
	* needs to handle additional properties, it should override
	* this method in a derived class.
	*/
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Default implementation of the getProperty method handles
	* the four defined properties in Marshaller.  If a provider
	* needs to support additional provider specific properties,
	* it should override this method in a derived class.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* @see javax.xml.bind.Marshaller#getEventHandler()
	*/
	@:overload public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	* @see javax.xml.bind.Marshaller#setEventHandler(ValidationEventHandler)
	*/
	@:overload public function setEventHandler(handler : javax.xml.bind.ValidationEventHandler) : Void;
	
	@:overload public function marshal(obj : Dynamic, writer : javax.xml.stream.XMLEventWriter) : Void;
	
	@:overload public function marshal(obj : Dynamic, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	@:overload public function getSchema() : javax.xml.validation.Schema;
	
	@:overload public function setAdapter(adapter : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>) : Void;
	
	@:overload public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	@:overload public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	@:overload public function setAttachmentMarshaller(am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload public function getAttachmentMarshaller() : javax.xml.bind.attachment.AttachmentMarshaller;
	
	@:overload public function setListener(listener : javax.xml.bind.Marshaller.Marshaller_Listener) : Void;
	
	@:overload public function getListener() : javax.xml.bind.Marshaller.Marshaller_Listener;
	
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
	
	
}
