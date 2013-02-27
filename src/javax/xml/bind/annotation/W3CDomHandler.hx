package javax.xml.bind.annotation;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class W3CDomHandler implements javax.xml.bind.annotation.DomHandler<org.w3c.dom.Element, javax.xml.transform.dom.DOMResult>
{
	/**
	* Default constructor.
	*
	* It is up to a JAXB provider to decide which DOM implementation
	* to use or how that is configured.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor that allows applications to specify which DOM implementation
	* to be used.
	*
	* @param builder
	*      must not be null. JAXB uses this {@link DocumentBuilder} to create
	*      a new element.
	*/
	@:overload public function new(builder : javax.xml.parsers.DocumentBuilder) : Void;
	
	@:overload public function getBuilder() : javax.xml.parsers.DocumentBuilder;
	
	@:overload public function setBuilder(builder : javax.xml.parsers.DocumentBuilder) : Void;
	
	@:overload public function createUnmarshaller(errorHandler : javax.xml.bind.ValidationEventHandler) : javax.xml.transform.dom.DOMResult;
	
	@:overload public function getElement(r : javax.xml.transform.dom.DOMResult) : org.w3c.dom.Element;
	
	@:overload public function marshal(element : org.w3c.dom.Element, errorHandler : javax.xml.bind.ValidationEventHandler) : javax.xml.transform.Source;
	
	
}
