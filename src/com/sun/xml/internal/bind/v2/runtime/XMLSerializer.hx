package com.sun.xml.internal.bind.v2.runtime;
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
extern class XMLSerializer extends com.sun.xml.internal.bind.v2.runtime.Coordinator
{
	/**
	* Receives XML serialization event and writes to {@link XmlOutput}.
	*
	* <p>
	* This object coordinates the overall marshalling efforts across different
	* content-tree objects and different target formats.
	*
	* <p>
	* The following CFG gives the proper sequence of method invocation.
	*
	* <pre>
	* MARSHALLING  :=  ELEMENT
	* ELEMENT      :=  "startElement" NSDECL* "endNamespaceDecls"
	*                        ATTRIBUTE* "endAttributes" BODY "endElement"
	*
	* NSDECL       :=  "declareNamespace"
	*
	* ATTRIBUTE    :=  "attribute"
	* ATTVALUES    :=  "text"*
	*
	*
	* BODY         :=  ( "text" | ELEMENT )*
	* </pre>
	*
	* <p>
	* A marshalling of one element consists of two stages. The first stage is
	* for marshalling attributes and collecting namespace declarations.
	* The second stage is for marshalling characters/child elements of that element.
	*
	* <p>
	* Observe that multiple invocation of "text" is allowed.
	*
	* <p>
	* Also observe that the namespace declarations are allowed only between
	* "startElement" and "endAttributes".
	*
	* <h2>Exceptions in marshaller</h2>
	* <p>
	* {@link IOException}, {@link SAXException}, and {@link XMLStreamException}
	* are thrown from {@link XmlOutput}. They are always considered fatal, and
	* therefore caught only by {@link MarshallerImpl}.
	* <p>
	* {@link AccessorException} can be thrown when an access to a property/field
	* fails, and this is considered as a recoverable error, so it's caught everywhere.
	*
	* @author  Kohsuke Kawaguchi
	*/
	public var grammar(default, null) : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	public var nameList(default, null) : com.sun.xml.internal.bind.v2.runtime.NameList;
	
	public var knownUri2prefixIndexMap(default, null) : java.NativeArray<Int>;
	
	public var attachmentMarshaller : javax.xml.bind.attachment.AttachmentMarshaller;
	
	/**
	* Gets the cached instance of {@link Base64Data}.
	*
	* @deprecated
	*      {@link Base64Data} is no longer cached, so that
	*      XMLStreamWriterEx impl can retain the data, like JAX-WS does.
	*/
	@:overload public function getCachedBase64DataInstance() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.Base64Data;
	
	@:overload public function reportError(ve : javax.xml.bind.ValidationEvent) : Void;
	
	/**
	* Report an error found as an exception.
	*
	* @param fieldName
	*      the name of the property being processed when an error is found.
	*/
	@:overload @:final public function reportError(fieldName : String, t : java.lang.Throwable) : Void;
	
	@:overload public function startElement(tagName : com.sun.xml.internal.bind.v2.runtime.Name, outerPeer : Dynamic) : Void;
	
	@:overload public function startElement(nsUri : String, localName : String, preferredPrefix : String, outerPeer : Dynamic) : Void;
	
	/**
	* Variation of {@link #startElement(String, String, String, Object)} that forces
	* a specific prefix. Needed to preserve the prefix when marshalling DOM.
	*/
	@:overload public function startElementForce(nsUri : String, localName : String, forcedPrefix : String, outerPeer : Dynamic) : Void;
	
	@:overload public function endNamespaceDecls(innerPeer : Dynamic) : Void;
	
	/**
	* Switches to the "marshal child texts/elements" mode.
	* This method has to be called after the 1st pass is completed.
	*/
	@:overload public function endAttributes() : Void;
	
	/**
	* Ends marshalling of an element.
	* Pops the internal stack.
	*/
	@:overload public function endElement() : Void;
	
	@:overload public function leafElement(tagName : com.sun.xml.internal.bind.v2.runtime.Name, data : String, fieldName : String) : Void;
	
	@:overload public function leafElement(tagName : com.sun.xml.internal.bind.v2.runtime.Name, data : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, fieldName : String) : Void;
	
	@:overload public function leafElement(tagName : com.sun.xml.internal.bind.v2.runtime.Name, data : Int, fieldName : String) : Void;
	
	/**
	* Marshalls text.
	*
	* <p>
	* This method can be called after the {@link #endAttributes()}
	* method to marshal texts inside elements.
	* If the method is called more than once, those texts are considered
	* as separated by whitespaces. For example,
	*
	* <pre>
	* c.startElement("","foo");
	* c.endAttributes();
	* c.text("abc");
	* c.text("def");
	*   c.startElement("","bar");
	*   c.endAttributes();
	*   c.endElement();
	* c.text("ghi");
	* c.endElement();
	* </pre>
	*
	* will generate <code>&lt;foo>abc def&lt;bar/>ghi&lt;/foo></code>.
	*/
	@:overload public function text(text : String, fieldName : String) : Void;
	
	/**
	* The {@link #text(String, String)} method that takes {@link Pcdata}.
	*/
	@:overload public function text(text : com.sun.xml.internal.bind.v2.runtime.output.Pcdata, fieldName : String) : Void;
	
	@:overload public function attribute(uri : String, local : String, value : String) : Void;
	
	@:overload public function attribute(name : com.sun.xml.internal.bind.v2.runtime.Name, value : java.lang.CharSequence) : Void;
	
	@:overload public function getNamespaceContext() : com.sun.xml.internal.bind.v2.runtime.NamespaceContext2;
	
	@:overload public function onID(owner : Dynamic, value : String) : String;
	
	@:overload public function onIDREF(obj : Dynamic) : String;
	
	@:overload public function childAsRoot(obj : Dynamic) : Void;
	
	/**
	* The equivalent of:
	*
	* <pre>
	* childAsURIs(child, fieldName);
	* endNamespaceDecls();
	* childAsAttributes(child, fieldName);
	* endAttributes();
	* childAsBody(child, fieldName);
	* </pre>
	*
	* This produces the given child object as the sole content of
	* an element.
	* Used to reduce the code size in the generated marshaller.
	*/
	@:overload @:final public function childAsSoleContent(child : Dynamic, fieldName : String) : Void;
	
	/**
	* This method is called when a type child object is found.
	*
	* <p>
	* This method produces events of the following form:
	* <pre>
	* NSDECL* "endNamespaceDecls" ATTRIBUTE* "endAttributes" BODY
	* </pre>
	* optionally including @xsi:type if necessary.
	*
	* @param child
	*      Object to be marshalled. The {@link JaxBeanInfo} for
	*      this object must return a type name.
	* @param expected
	*      Expected type of the object.
	* @param fieldName
	*      property name of the parent objeect from which 'o' comes.
	*      Used as a part of the error message in case anything goes wrong
	*      with 'o'.
	*/
	@:overload @:final public function childAsXsiType(child : Dynamic, fieldName : String, expected : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<Dynamic>, nillable : Bool) : Void;
	
	@:overload public function attWildcardAsURIs(attributes : java.util.Map<javax.xml.namespace.QName, String>, fieldName : String) : Void;
	
	@:overload public function attWildcardAsAttributes(attributes : java.util.Map<javax.xml.namespace.QName, String>, fieldName : String) : Void;
	
	/**
	* Short for the following call sequence:
	*
	* <pre>
	getNamespaceContext().declareNamespace(WellKnownNamespace.XML_SCHEMA_INSTANCE,"xsi",true);
	endNamespaceDecls();
	attribute(WellKnownNamespace.XML_SCHEMA_INSTANCE,"nil","true");
	endAttributes();
	* </pre>
	*/
	@:overload @:final public function writeXsiNilTrue() : Void;
	
	@:overload public function writeDom<E>(element : E, domHandler : javax.xml.bind.annotation.DomHandler<E, Dynamic>, parentBean : Dynamic, fieldName : String) : Void;
	
	@:overload public function getIdentityTransformer() : javax.xml.transform.Transformer;
	
	@:overload public function setPrefixMapper(prefixMapper : com.sun.xml.internal.bind.marshaller.NamespacePrefixMapper) : Void;
	
	/**
	* Reset this object to write to the specified output.
	*
	* @param schemaLocation
	*      if non-null, this value is printed on the root element as xsi:schemaLocation
	* @param noNsSchemaLocation
	*      Similar to 'schemaLocation' but this one works for xsi:noNamespaceSchemaLocation
	*/
	@:overload public function startDocument(out : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput, fragment : Bool, schemaLocation : String, noNsSchemaLocation : String) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function close() : Void;
	
	/**
	* This method can be called after {@link #startDocument} is called
	* but before the marshalling begins, to set the currently in-scope namespace
	* bindings.
	*
	* <p>
	* This method is useful to avoid redundant namespace declarations when
	* the marshalling is producing a sub-document.
	*/
	@:overload public function addInscopeBinding(nsUri : String, prefix : String) : Void;
	
	/**
	* Gets the MIME type with which the binary content shall be printed.
	*
	* <p>
	* This method shall be used from those {@link RuntimeBuiltinLeafInfo} that are
	* bound to base64Binary.
	*
	* @see JAXBContextImpl#getXMIMEContentType(Object)
	*/
	@:overload public function getXMIMEContentType() : String;
	
	/**
	* This method is used by {@link MimeTypedTransducer} to set the expected MIME type
	* for the encapsulated {@link Transducer}.
	*/
	@:overload public function setExpectedMimeType(expectedMimeType : javax.activation.MimeType) : javax.activation.MimeType;
	
	@:overload public function setInlineBinaryFlag(value : Bool) : Bool;
	
	@:overload public function getInlineBinaryFlag() : Bool;
	
	@:overload public function setSchemaType(st : javax.xml.namespace.QName) : javax.xml.namespace.QName;
	
	@:overload public function getSchemaType() : javax.xml.namespace.QName;
	
	@:overload public function setObjectIdentityCycleDetection(val : Bool) : Void;
	
	@:overload public function getObjectIdentityCycleDetection() : Bool;
	
	@:overload public function handleError(e : java.lang.Exception) : Bool;
	
	@:overload public function handleError(e : java.lang.Exception, source : Dynamic, fieldName : String) : Bool;
	
	@:overload public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	/**
	* Called when a referenced object doesn't have an ID.
	*/
	@:overload public function errorMissingId(obj : Dynamic) : Void;
	
	@:overload public function getCurrentLocation(fieldName : String) : javax.xml.bind.ValidationEventLocator;
	
	@:overload private function getLocation() : javax.xml.bind.ValidationEventLocator;
	
	/**
	* May return null when the property hasn't been set.
	* Introduced based on Jersey requirements.
	*/
	@:overload public function getCurrentProperty() : com.sun.xml.internal.bind.v2.runtime.property.Property<Dynamic>;
	
	/**
	* Takes care of cleaning the currentProperty. Must be called from the same thread that created the XMLSerializer.
	*/
	@:overload public function clearCurrentProperty() : Void;
	
	/**
	* When called from within the realm of the marshaller, this method
	* returns the current {@link XMLSerializer} in charge.
	*/
	@:overload public static function getInstance() : com.sun.xml.internal.bind.v2.runtime.XMLSerializer;
	
	
}
