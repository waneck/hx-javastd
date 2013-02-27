package com.sun.xml.internal.ws.wsdl;
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
@:internal extern class PayloadQNameBasedOperationFinder extends com.sun.xml.internal.ws.wsdl.WSDLOperationFinder
{
	public static var EMPTY_PAYLOAD_LOCAL(default, null) : String;
	
	public static var EMPTY_PAYLOAD_NSURI(default, null) : String;
	
	public static var EMPTY_PAYLOAD(default, null) : javax.xml.namespace.QName;
	
	@:overload public function new(wsdlModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, binding : com.sun.xml.internal.ws.api.WSBinding, seiModel : com.sun.xml.internal.ws.api.model.SEIModel) : Void;
	
	/**
	*
	* @return not null if it finds a unique handler for the request
	*         null if it cannot idenitify a unique wsdl operation from the Payload QName.
	*
	* @throws DispatchException if the payload itself is incorrect, this happens when the payload is not accepted by
	*          any operation in the port.
	*/
	@:overload override public function getWSDLOperationQName(request : com.sun.xml.internal.ws.api.message.Packet) : javax.xml.namespace.QName;
	
	
}
