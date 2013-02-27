package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* The access point for the implementation classes of the factories defined in the
* SAAJ API. All of the <code>newInstance</code> methods defined on factories in
* SAAJ 1.3 defer to instances of this class to do the actual object creation.
* The implementations of <code>newInstance()</code> methods (in SOAPFactory and MessageFactory)
* that existed in SAAJ 1.2 have been updated to also delegate to the SAAJMetaFactory when the SAAJ 1.2
* defined lookup fails to locate the Factory implementation class name.
*
* <p>
* SAAJMetaFactory is a service provider interface. There are no public methods on this
* class.
*
* @author SAAJ RI Development Team
* @since SAAJ 1.3
*/
@:require(java3) extern class SAAJMetaFactory
{
	@:overload private function new() : Void;
	
	/**
	* Creates a <code>MessageFactory</code> object for
	* the given <code>String</code> protocol.
	*
	* @param protocol a <code>String</code> indicating the protocol
	* @exception SOAPException if there is an error in creating the
	*            MessageFactory
	* @see SOAPConstants#SOAP_1_1_PROTOCOL
	* @see SOAPConstants#SOAP_1_2_PROTOCOL
	* @see SOAPConstants#DYNAMIC_SOAP_PROTOCOL
	*/
	@:overload @:abstract private function newMessageFactory(protocol : String) : javax.xml.soap.MessageFactory;
	
	/**
	* Creates a <code>SOAPFactory</code> object for
	* the given <code>String</code> protocol.
	*
	* @param protocol a <code>String</code> indicating the protocol
	* @exception SOAPException if there is an error in creating the
	*            SOAPFactory
	* @see SOAPConstants#SOAP_1_1_PROTOCOL
	* @see SOAPConstants#SOAP_1_2_PROTOCOL
	* @see SOAPConstants#DYNAMIC_SOAP_PROTOCOL
	*/
	@:overload @:abstract private function newSOAPFactory(protocol : String) : javax.xml.soap.SOAPFactory;
	
	
}
