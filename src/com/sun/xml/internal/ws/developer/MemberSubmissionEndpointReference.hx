package com.sun.xml.internal.ws.developer;
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
extern class MemberSubmissionEndpointReference extends javax.xml.ws.EndpointReference implements com.sun.xml.internal.ws.addressing.v200408.MemberSubmissionAddressingConstants
{
	@:overload @:public public function new() : Void;
	
	/**
	* construct an EPR from infoset representation
	*
	* @param source A source object containing valid XmlInfoset
	*               instance consistent with the Member Submission WS-Addressing
	* @throws javax.xml.ws.WebServiceException
	*                              if the source does not contain a valid W3C WS-Addressing
	*                              EndpointReference.
	* @throws WebServiceException if the <code>null</code> <code>source</code> value is given
	*/
	@:overload @:public public function new(source : javax.xml.transform.Source) : Void;
	
	@:overload @:public override public function writeTo(result : javax.xml.transform.Result) : Void;
	
	/**
	* Constructs a Source containing the wsdl from the MemberSubmissionEndpointReference
	*
	* @return Source A source object containing the wsdl in the MemeberSubmissionEndpointReference, if present.
	*/
	@:overload @:public public function toWSDLSource() : javax.xml.transform.Source;
	
	@:public public var addr : com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_Address;
	
	@:public public var referenceProperties : com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_Elements;
	
	@:public public var referenceParameters : com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_Elements;
	
	@:public public var portTypeName : com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_AttributedQName;
	
	@:public public var serviceName : com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_ServiceNameType;
	
	@:public public var attributes : java.util.Map<javax.xml.namespace.QName, String>;
	
	@:public public var elements : java.util.List<org.w3c.dom.Element>;
	
	@:protected @:static @:final private static var MSNS(default, null) : String;
	
	
}
@:native('com$sun$xml$internal$ws$developer$MemberSubmissionEndpointReference$Address') extern class MemberSubmissionEndpointReference_Address
{
	@:overload @:public public function new() : Void;
	
	@:public public var uri : String;
	
	@:public public var attributes : java.util.Map<javax.xml.namespace.QName, String>;
	
	
}
@:native('com$sun$xml$internal$ws$developer$MemberSubmissionEndpointReference$Elements') extern class MemberSubmissionEndpointReference_Elements
{
	@:overload @:public public function new() : Void;
	
	@:public public var elements : java.util.List<org.w3c.dom.Element>;
	
	
}
@:native('com$sun$xml$internal$ws$developer$MemberSubmissionEndpointReference$AttributedQName') extern class MemberSubmissionEndpointReference_AttributedQName
{
	@:overload @:public public function new() : Void;
	
	@:public public var name : javax.xml.namespace.QName;
	
	@:public public var attributes : java.util.Map<javax.xml.namespace.QName, String>;
	
	
}
@:native('com$sun$xml$internal$ws$developer$MemberSubmissionEndpointReference$ServiceNameType') extern class MemberSubmissionEndpointReference_ServiceNameType extends com.sun.xml.internal.ws.developer.MemberSubmissionEndpointReference.MemberSubmissionEndpointReference_AttributedQName
{
	@:overload @:public public function new() : Void;
	
	@:public public var portName : String;
	
	
}
