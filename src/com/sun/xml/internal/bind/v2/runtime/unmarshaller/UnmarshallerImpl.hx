package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
extern class UnmarshallerImpl extends javax.xml.bind.helpers.AbstractUnmarshallerImpl implements javax.xml.bind.ValidationEventHandler implements java.io.Closeable
{
	/** Owning {@link JAXBContext} */
	private var context(default, null) : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	public var coordinator(default, null) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	@:overload public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, assoc : com.sun.xml.internal.bind.v2.runtime.AssociationMap<Dynamic>) : Void;
	
	@:overload override public function getUnmarshallerHandler() : javax.xml.bind.UnmarshallerHandler;
	
	/**
	* Creates and configures a new unmarshalling pipe line.
	* Depending on the setting, we put a validator as a filter.
	*
	* @return
	*      A component that implements both {@link UnmarshallerHandler}
	*      and {@link ValidationEventHandler}. All the parsing errors
	*      should be reported to this error handler for the unmarshalling
	*      process to work correctly.
	*
	*      Also, returned handler expects all the XML names to be interned.
	*
	*/
	@:overload @:final public function createUnmarshallerHandler(scanner : com.sun.xml.internal.bind.unmarshaller.InfosetScanner<Dynamic>, inplace : Bool, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor;
	
	@:overload public static function needsInterning(reader : org.xml.sax.XMLReader) : Bool;
	
	@:overload override private function unmarshal(reader : org.xml.sax.XMLReader, source : org.xml.sax.InputSource) : Dynamic;
	
	@:overload private function unmarshal<T>(reader : org.xml.sax.XMLReader, source : org.xml.sax.InputSource, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload override public function unmarshal<T>(source : javax.xml.transform.Source, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function unmarshal0(source : javax.xml.transform.Source, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : Dynamic;
	
	@:overload @:final override public function getEventHandler() : javax.xml.bind.ValidationEventHandler;
	
	/**
	* Returns true if an event handler is installed.
	* <p>
	* The default handler ignores any errors, and for that this method returns false.
	*/
	@:overload @:final public function hasEventHandler() : Bool;
	
	@:overload override public function unmarshal<T>(node : org.w3c.dom.Node, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload @:final override public function unmarshal(node : org.w3c.dom.Node) : Dynamic;
	
	@:overload @:final override public function unmarshal(source : javax.xml.transform.sax.SAXSource) : Dynamic;
	
	@:overload @:final public function unmarshal0(node : org.w3c.dom.Node, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : Dynamic;
	
	@:overload override public function unmarshal(reader : javax.xml.stream.XMLStreamReader) : Dynamic;
	
	@:overload override public function unmarshal<T>(reader : javax.xml.stream.XMLStreamReader, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload public function unmarshal0(reader : javax.xml.stream.XMLStreamReader, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : Dynamic;
	
	@:overload override public function unmarshal<T>(reader : javax.xml.stream.XMLEventReader, expectedType : Class<T>) : javax.xml.bind.JAXBElement<T>;
	
	@:overload override public function unmarshal(reader : javax.xml.stream.XMLEventReader) : Dynamic;
	
	@:overload public function unmarshal0(input : java.io.InputStream, expectedType : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>) : Dynamic;
	
	@:overload override public function getProperty(name : String) : Dynamic;
	
	@:overload override public function setProperty(name : String, value : Dynamic) : Void;
	
	public static var FACTORY(default, null) : String;
	
	@:overload override public function setSchema(schema : javax.xml.validation.Schema) : Void;
	
	@:overload override public function getSchema() : javax.xml.validation.Schema;
	
	@:overload override public function getAttachmentUnmarshaller() : javax.xml.bind.attachment.AttachmentUnmarshaller;
	
	@:overload override public function setAttachmentUnmarshaller(au : javax.xml.bind.attachment.AttachmentUnmarshaller) : Void;
	
	/**
	* @deprecated since 2.0
	*/
	@:overload override public function isValidating() : Bool;
	
	/**
	* @deprecated since 2.0
	*/
	@:overload override public function setValidating(validating : Bool) : Void;
	
	@:overload override public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	@:overload override public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	@:overload override public function createUnmarshalException(e : org.xml.sax.SAXException) : javax.xml.bind.UnmarshalException;
	
	/**
	* Default error handling behavior for {@link Unmarshaller}.
	*/
	@:overload public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	@:overload public function getBeanInfo<T>(clazz : Class<T>) : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<T>;
	
	@:overload override public function getListener() : javax.xml.bind.Unmarshaller.Unmarshaller_Listener;
	
	@:overload override public function setListener(listener : javax.xml.bind.Unmarshaller.Unmarshaller_Listener) : Void;
	
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	@:overload private function finalize() : Void;
	
	/**
	*  Must be called from same thread which created the UnmarshallerImpl instance.
	* @throws IOException
	*/
	@:overload public function close() : Void;
	
	
}
