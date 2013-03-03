package com.sun.xml.internal.bind.api;
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
extern class Bridge<T>
{
	/**
	* Mini-marshaller/unmarshaller that is specialized for a particular
	* element name and a type.
	*
	* <p>
	* Instances of this class is stateless and multi-thread safe.
	* They are reentrant.
	*
	* <p>
	* All the marshal operation generates fragments.
	*
	* <p>
	* <b>Subject to change without notice</b>.
	*
	* @since JAXB 2.0 EA1
	* @author Kohsuke Kawaguchi
	*/
	@:require(java0) @:overload @:protected private function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : Void;
	
	@:protected @:final private var context(default, null) : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	/**
	* Gets the {@link JAXBRIContext} to which this object belongs.
	*
	* @since 2.1
	*/
	@:require(java1) @:overload @:public public function getContext() : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	/**
	*
	* @throws JAXBException
	*      if there was an error while marshalling.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:public @:final public function marshal(object : T, output : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public @:final public function marshal(object : T, output : javax.xml.stream.XMLStreamWriter, am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload @:public @:final public function marshal(context : com.sun.xml.internal.bind.api.BridgeContext, object : T, output : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public @:abstract public function marshal(m : javax.xml.bind.Marshaller, object : T, output : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Marshals the specified type object with the implicit element name
	* associated with this instance of {@link Bridge}.
	*
	* @param nsContext
	*      if this marshalling is done to marshal a subelement, this {@link NamespaceContext}
	*      represents in-scope namespace bindings available for that element. Can be null,
	*      in which case JAXB assumes no in-scope namespaces.
	* @throws JAXBException
	*      if there was an error while marshalling.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:public public function marshal(object : T, output : java.io.OutputStream, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	/**
	* @since 2.0.2
	*/
	@:require(java0) @:overload @:public public function marshal(object : T, output : java.io.OutputStream, nsContext : javax.xml.namespace.NamespaceContext, am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload @:public @:final public function marshal(context : com.sun.xml.internal.bind.api.BridgeContext, object : T, output : java.io.OutputStream, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public @:abstract public function marshal(m : javax.xml.bind.Marshaller, object : T, output : java.io.OutputStream, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public @:final public function marshal(object : T, output : org.w3c.dom.Node) : Void;
	
	@:overload @:public @:final public function marshal(context : com.sun.xml.internal.bind.api.BridgeContext, object : T, output : org.w3c.dom.Node) : Void;
	
	@:overload @:public @:abstract public function marshal(m : javax.xml.bind.Marshaller, object : T, output : org.w3c.dom.Node) : Void;
	
	/**
	* @since 2.0 EA4
	*/
	@:require(java0) @:overload @:public @:final public function marshal(object : T, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* @since 2.0.2
	*/
	@:require(java0) @:overload @:public @:final public function marshal(object : T, contentHandler : org.xml.sax.ContentHandler, am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload @:public @:final public function marshal(context : com.sun.xml.internal.bind.api.BridgeContext, object : T, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public @:abstract public function marshal(m : javax.xml.bind.Marshaller, object : T, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* @since 2.0 EA4
	*/
	@:require(java0) @:overload @:public @:final public function marshal(object : T, result : javax.xml.transform.Result) : Void;
	
	@:overload @:public @:final public function marshal(context : com.sun.xml.internal.bind.api.BridgeContext, object : T, result : javax.xml.transform.Result) : Void;
	
	@:overload @:public @:abstract public function marshal(m : javax.xml.bind.Marshaller, object : T, result : javax.xml.transform.Result) : Void;
	
	/**
	* Unmarshals the specified type object.
	*
	* @param in
	*      the parser must be pointing at a start tag
	*      that encloses the XML type that this {@link Bridge} is
	*      instanciated for.
	*
	* @return
	*      never null.
	*
	* @throws JAXBException
	*      if there was an error while unmarshalling.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(_in : javax.xml.stream.XMLStreamReader) : T;
	
	/**
	* @since 2.0.3
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(_in : javax.xml.stream.XMLStreamReader, au : javax.xml.bind.attachment.AttachmentUnmarshaller) : T;
	
	@:overload @:public @:final public function unmarshal(context : com.sun.xml.internal.bind.api.BridgeContext, _in : javax.xml.stream.XMLStreamReader) : T;
	
	@:overload @:public @:abstract public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : javax.xml.stream.XMLStreamReader) : T;
	
	/**
	* Unmarshals the specified type object.
	*
	* @param in
	*      the parser must be pointing at a start tag
	*      that encloses the XML type that this {@link Bridge} is
	*      instanciated for.
	*
	* @return
	*      never null.
	*
	* @throws JAXBException
	*      if there was an error while unmarshalling.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(_in : javax.xml.transform.Source) : T;
	
	/**
	* @since 2.0.3
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(_in : javax.xml.transform.Source, au : javax.xml.bind.attachment.AttachmentUnmarshaller) : T;
	
	@:overload @:public @:final public function unmarshal(context : com.sun.xml.internal.bind.api.BridgeContext, _in : javax.xml.transform.Source) : T;
	
	@:overload @:public @:abstract public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : javax.xml.transform.Source) : T;
	
	/**
	* Unmarshals the specified type object.
	*
	* @param in
	*      the parser must be pointing at a start tag
	*      that encloses the XML type that this {@link Bridge} is
	*      instanciated for.
	*
	* @return
	*      never null.
	*
	* @throws JAXBException
	*      if there was an error while unmarshalling.
	*
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(_in : java.io.InputStream) : T;
	
	@:overload @:public @:final public function unmarshal(context : com.sun.xml.internal.bind.api.BridgeContext, _in : java.io.InputStream) : T;
	
	@:overload @:public @:abstract public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : java.io.InputStream) : T;
	
	/**
	* Unmarshals the specified type object.
	*
	* @param n
	*      Node to be unmarshalled.
	*
	* @return
	*      never null.
	*
	* @throws JAXBException
	*      if there was an error while unmarshalling.
	*
	* @since 2.0 FCS
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(n : org.w3c.dom.Node) : T;
	
	/**
	* @since 2.0.3
	*/
	@:require(java0) @:overload @:public @:final public function unmarshal(n : org.w3c.dom.Node, au : javax.xml.bind.attachment.AttachmentUnmarshaller) : T;
	
	@:overload @:public @:final public function unmarshal(context : com.sun.xml.internal.bind.api.BridgeContext, n : org.w3c.dom.Node) : T;
	
	@:overload @:public @:abstract public function unmarshal(context : javax.xml.bind.Unmarshaller, n : org.w3c.dom.Node) : T;
	
	/**
	* Gets the {@link TypeReference} from which this bridge was created.
	*/
	@:overload @:public @:abstract public function getTypeReference() : com.sun.xml.internal.bind.api.TypeReference;
	
	
}
