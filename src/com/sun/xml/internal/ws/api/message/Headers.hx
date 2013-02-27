package com.sun.xml.internal.ws.api.message;
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
extern class Headers
{
	/**
	* @deprecated
	*      Use {@link #create(JAXBRIContext, Object)} instead.
	*/
	@:overload public static function create(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, m : javax.xml.bind.Marshaller, o : Dynamic) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a {@link Header} backed a by a JAXB bean.
	*/
	@:overload public static function create(context : com.sun.xml.internal.bind.api.JAXBRIContext, o : Dynamic) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a {@link Header} backed a by a JAXB bean, with the given tag name.
	*
	* See {@link #create(SOAPVersion, Marshaller, Object)} for the meaning
	* of other parameters.
	*
	* @param tagName
	*      The name of the newly created header. Must not be null.
	* @param o
	*      The JAXB bean that represents the contents of the header. Must not be null.
	*/
	@:overload public static function create(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, m : javax.xml.bind.Marshaller, tagName : javax.xml.namespace.QName, o : Dynamic) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a {@link Header} backed a by a JAXB bean.
	*/
	@:overload public static function create(bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, jaxbObject : Dynamic) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a new {@link Header} backed by a SAAJ object.
	*/
	@:overload public static function create(header : javax.xml.soap.SOAPHeaderElement) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a new {@link Header} backed by an {@link Element}.
	*/
	@:overload public static function create(node : org.w3c.dom.Element) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* @deprecated
	*      Use {@link #create(Element)}
	*/
	@:overload public static function create(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, node : org.w3c.dom.Element) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a new {@link Header} that reads from {@link XMLStreamReader}.
	*
	* <p>
	* Note that the header implementation will read the entire data
	* into memory anyway, so this might not be as efficient as you might hope.
	*/
	@:overload public static function create(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a new {@link Header} that that has a single text value in it
	* (IOW, of the form &lt;foo>text&lt;/foo>.)
	*
	* @param name QName of the header element
	* @param value text value of the header
	*/
	@:overload public static function create(name : javax.xml.namespace.QName, value : String) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Creates a new {@link Header} that that has a single text value in it
	* (IOW, of the form &lt;foo>text&lt;/foo>.)
	*
	* @param name QName of the header element
	* @param value text value of the header
	*/
	@:overload public static function createMustUnderstand(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, name : javax.xml.namespace.QName, value : String) : com.sun.xml.internal.ws.api.message.Header;
	
	
}
