package com.sun.xml.internal.ws.message.jaxb;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MarshallerBridge extends com.sun.xml.internal.bind.api.Bridge<Dynamic>
{
	/**
	* Used to adapt {@link Marshaller} into a {@link Bridge}.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function new(context : com.sun.xml.internal.bind.api.JAXBRIContext) : Void;
	
	@:overload @:public override public function marshal(m : javax.xml.bind.Marshaller, object : Dynamic, output : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function marshal(m : javax.xml.bind.Marshaller, object : Dynamic, output : java.io.OutputStream, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public override public function marshal(m : javax.xml.bind.Marshaller, object : Dynamic, output : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function marshal(m : javax.xml.bind.Marshaller, object : Dynamic, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public override public function marshal(m : javax.xml.bind.Marshaller, object : Dynamic, result : javax.xml.transform.Result) : Void;
	
	@:overload @:public override public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : javax.xml.stream.XMLStreamReader) : Dynamic;
	
	@:overload @:public override public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : javax.xml.transform.Source) : Dynamic;
	
	@:overload @:public override public function unmarshal(u : javax.xml.bind.Unmarshaller, _in : java.io.InputStream) : Dynamic;
	
	@:overload @:public override public function unmarshal(u : javax.xml.bind.Unmarshaller, n : org.w3c.dom.Node) : Dynamic;
	
	@:overload @:public override public function getTypeReference() : com.sun.xml.internal.bind.api.TypeReference;
	
	
}
