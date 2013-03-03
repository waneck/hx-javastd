package javax.xml.ws.wsaddressing;
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
extern class W3CEndpointReference extends javax.xml.ws.EndpointReference
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Creates an EPR from infoset representation
	*
	* @param source A source object containing valid XmlInfoset
	* instance consistent with the W3C WS-Addressing Core
	* recommendation.
	*
	* @throws WebServiceException
	*   If the source does NOT contain a valid W3C WS-Addressing
	*   EndpointReference.
	* @throws NullPointerException
	*   If the <code>null</code> <code>source</code> value is given
	*/
	@:overload @:public public function new(source : javax.xml.transform.Source) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function writeTo(result : javax.xml.transform.Result) : Void;
	
	@:protected @:static @:final private static var NS(default, null) : String;
	
	
}
@:native('javax$xml$ws$wsaddressing$W3CEndpointReference$Address') @:internal extern class W3CEndpointReference_Address
{
	@:overload @:protected private function new() : Void;
	
	
}
@:native('javax$xml$ws$wsaddressing$W3CEndpointReference$Elements') @:internal extern class W3CEndpointReference_Elements
{
	@:overload @:protected private function new() : Void;
	
	
}
