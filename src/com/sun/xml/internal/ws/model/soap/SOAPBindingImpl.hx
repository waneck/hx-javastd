package com.sun.xml.internal.ws.model.soap;
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
extern class SOAPBindingImpl extends com.sun.xml.internal.ws.api.model.soap.SOAPBinding
{
	/**
	* A wsdl:opeartion binding object that represents soap:binding. This can be
	* the return of {@link com.sun.xml.internal.ws.api.model.JavaMethod#getBinding()}.
	* <p/>
	* the default values are always document/literal and SoapVersion is SOAP 1.1.
	*
	* @author Vivek Pandey
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(sb : com.sun.xml.internal.ws.api.model.soap.SOAPBinding) : Void;
	
	/**
	* @param style The style to set.
	*/
	@:overload @:public public function setStyle(style : Style) : Void;
	
	/**
	* @param version
	*/
	@:overload @:public public function setSOAPVersion(version : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	/**
	* @param soapAction The soapAction to set.
	*/
	@:overload @:public public function setSOAPAction(soapAction : String) : Void;
	
	
}
