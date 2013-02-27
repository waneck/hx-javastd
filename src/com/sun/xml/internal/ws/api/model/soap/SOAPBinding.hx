package com.sun.xml.internal.ws.api.model.soap;
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
extern class SOAPBinding
{
	/**
	* Models soap:binding in a WSDL document or a {@link javax.jws.soap.SOAPBinding} annotation. This
	* can be the return of {@link JavaMethod#getBinding()}.
	*
	* @author Vivek Pandey
	*/
	private var use : Use;
	
	private var style : Style;
	
	private var soapVersion : com.sun.xml.internal.ws.api.SOAPVersion;
	
	private var soapAction : String;
	
	/**
	* Get {@link Use} such as <code>literal</code> or <code>encoded</code>.
	*/
	@:overload public function getUse() : Use;
	
	/**
	* Get {@link Style} - such as <code>document</code> or <code>rpc</code>.
	*/
	@:overload public function getStyle() : Style;
	
	/**
	* Get the {@link SOAPVersion}
	*/
	@:overload public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	/**
	* Returns true if its document/literal
	*/
	@:overload public function isDocLit() : Bool;
	
	/**
	* Returns true if this is a rpc/literal binding
	*/
	@:overload public function isRpcLit() : Bool;
	
	/**
	* Value of <code>wsdl:binding/wsdl:operation/soap:operation@soapAction</code> attribute or
	* {@link WebMethod#action()} annotation.
	* <pre>
	* For example:
	* &lt;wsdl:binding name="HelloBinding" type="tns:Hello">
	*   &lt;soap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>
	*   &lt;wsdl:operation name="echoData">
	*       &lt;soap12:operation soapAction=""/>
	* ...
	* </pre>
	* It's always non-null. soap message serializer needs to generated SOAPAction HTTP header with
	* the return of this method enclosed in quotes("").
	*
	* @see com.sun.xml.internal.ws.api.message.Packet#soapAction
	*/
	@:overload public function getSOAPAction() : String;
	
	
}
