package com.sun.xml.internal.messaging.saaj.soap;
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
extern class SOAPFactoryImpl extends javax.xml.soap.SOAPFactory
{
	private static var log(default, null) : java.util.logging.Logger;
	
	@:overload @:abstract private function createDocument() : com.sun.xml.internal.messaging.saaj.soap.SOAPDocumentImpl;
	
	@:overload override public function createElement(tagName : String) : javax.xml.soap.SOAPElement;
	
	@:overload override public function createElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPElement;
	
	@:overload override public function createElement(qname : javax.xml.namespace.QName) : javax.xml.soap.SOAPElement;
	
	@:overload override public function createElement(localName : String, prefix : String, uri : String) : javax.xml.soap.SOAPElement;
	
	@:overload override public function createName(localName : String, prefix : String, uri : String) : javax.xml.soap.Name;
	
	@:overload override public function createName(localName : String) : javax.xml.soap.Name;
	
	@:overload override public function createElement(domElement : org.w3c.dom.Element) : javax.xml.soap.SOAPElement;
	
	@:overload override public function createDetail() : javax.xml.soap.Detail;
	
	@:overload override public function createFault(reasonText : String, faultCode : javax.xml.namespace.QName) : javax.xml.soap.SOAPFault;
	
	@:overload override public function createFault() : javax.xml.soap.SOAPFault;
	
	
}
