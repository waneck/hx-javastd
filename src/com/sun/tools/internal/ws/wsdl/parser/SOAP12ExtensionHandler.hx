package com.sun.tools.internal.ws.wsdl.parser;
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
extern class SOAP12ExtensionHandler extends com.sun.tools.internal.ws.wsdl.parser.SOAPExtensionHandler
{
	@:overload public function new(extensionHandlerMap : java.util.Map<String, com.sun.tools.internal.ws.wsdl.parser.AbstractExtensionHandler>) : Void;
	
	/*
	* @see SOAPExtensionHandler#getNamespaceURI()
	*/
	@:overload override public function getNamespaceURI() : String;
	
	/*
	* @see SOAPExtensionHandler#getAddressQName()
	*/
	@:overload override private function getAddressQName() : javax.xml.namespace.QName;
	
	/*
	* @see SOAPExtensionHandler#getBindingQName()
	*/
	@:overload override private function getBindingQName() : javax.xml.namespace.QName;
	
	@:overload override private function getSOAPBinding(location : org.xml.sax.Locator) : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBinding;
	
	/*
	* @see SOAPExtensionHandler#getBodyQName()
	*/
	@:overload override private function getBodyQName() : javax.xml.namespace.QName;
	
	/*
	* @see SOAPExtensionHandler#getFaultQName()
	*/
	@:overload override private function getFaultQName() : javax.xml.namespace.QName;
	
	/*
	* @see SOAPExtensionHandler#getHeaderfaultQName()
	*/
	@:overload override private function getHeaderfaultQName() : javax.xml.namespace.QName;
	
	/*
	* @see SOAPExtensionHandler#getHeaderQName()
	*/
	@:overload override private function getHeaderQName() : javax.xml.namespace.QName;
	
	/*
	* @see SOAPExtensionHandler#getOperationQName()
	*/
	@:overload override private function getOperationQName() : javax.xml.namespace.QName;
	
	
}
