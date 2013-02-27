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
extern class MarshallerImpl extends javax.xml.bind.helpers.AbstractMarshallerImpl implements javax.xml.bind.ValidationEventHandler
{
	private var serializer(default, null) : com.sun.xml.internal.bind.v2.runtime.XMLSerializer;
	
	/**
	* @param assoc
	*      non-null if the marshaller is working inside {@link BinderImpl}.
	*/
	@:overload public function new(c : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, assoc : com.sun.xml.internal.bind.v2.runtime.AssociationMap<Dynamic>) : Void;
	
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl;
	
	/**
	* Marshals to {@link OutputStream} with the given in-scope namespaces
	* taken into account.
	*
	* @since 2.1.5
	*/
	@:require(java1) @:overload public function marshal(obj : Dynamic, out : java.io.OutputStream, inscopeNamespace : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload override public function marshal(obj : Dynamic, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function marshal(obj : Dynamic, writer : javax.xml.stream.XMLEventWriter) : Void;
	
	@:overload public function marshal(obj : Dynamic, output : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput) : Void;
	
	@:overload override public function marshal(target : Dynamic, result : javax.xml.transform.Result) : Void;
	
	/**
	* Used by {@link BridgeImpl} to write an arbitrary object as a fragment.
	*/
	@:overload @:final private function write<T>(rootTagName : com.sun.xml.internal.bind.v2.runtime.Name, bi : com.sun.xml.internal.bind.v2.runtime.JaxBeanInfo<T>, obj : T, out : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput, postInitAction : java.lang.Runnable) : Void;
	
	@:overload private function createEscapeHandler(encoding : String) : com.sun.xml.internal.bind.marshaller.CharacterEscapeHandler;
	
	@:overload public function createWriter(w : java.io.Writer, encoding : String) : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput;
	
	@:overload public function createWriter(w : java.io.Writer) : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput;
	
	@:overload public function createWriter(os : java.io.OutputStream) : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput;
	
	@:overload public function createWriter(os : java.io.OutputStream, encoding : String) : com.sun.xml.internal.bind.v2.runtime.output.XmlOutput;
	
	@:overload override public function getProperty(name : String) : Dynamic;
	
	@:overload override public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload override public function setAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>, adapter : A) : Void;
	
	@:overload override public function getAdapter<A : javax.xml.bind.annotation.adapters.XmlAdapter<Dynamic, Dynamic>>(type : Class<A>) : A;
	
	@:overload override public function setAttachmentMarshaller(am : javax.xml.bind.attachment.AttachmentMarshaller) : Void;
	
	@:overload override public function getAttachmentMarshaller() : javax.xml.bind.attachment.AttachmentMarshaller;
	
	@:overload override public function getSchema() : javax.xml.validation.Schema;
	
	@:overload override public function setSchema(s : javax.xml.validation.Schema) : Void;
	
	/**
	* Default error handling behavior fot {@link Marshaller}.
	*/
	@:overload public function handleEvent(event : javax.xml.bind.ValidationEvent) : Bool;
	
	@:overload override public function getListener() : Listener;
	
	@:overload override public function setListener(listener : Listener) : Void;
	
	private static var INDENT_STRING(default, null) : String;
	
	private static var PREFIX_MAPPER(default, null) : String;
	
	private static var ENCODING_HANDLER(default, null) : String;
	
	private static var ENCODING_HANDLER2(default, null) : String;
	
	private static var XMLDECLARATION(default, null) : String;
	
	private static var XML_HEADERS(default, null) : String;
	
	private static var C14N(default, null) : String;
	
	private static var OBJECT_IDENTITY_CYCLE_DETECTION(default, null) : String;
	
	
}
