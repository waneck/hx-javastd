package com.sun.xml.internal.ws.fault;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SOAPFaultBuilder
{
	@:overload public function getFirstDetailEntryName() : javax.xml.namespace.QName;
	
	/**
	* This should be called from the client side to throw an {@link Exception} for a given soap mesage
	*/
	@:overload public function createException(exceptions : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.model.CheckedExceptionImpl>) : java.lang.Throwable;
	
	/**
	* To be called to convert a  {@link ProtocolException} and faultcode for a given {@link SOAPVersion} in to a {@link Message}.
	*
	* @param soapVersion {@link SOAPVersion#SOAP_11} or {@link SOAPVersion#SOAP_12}
	* @param ex a ProtocolException
	* @param faultcode soap faultcode. Its ignored if the {@link ProtocolException} instance is {@link SOAPFaultException} and it has a
	* faultcode present in the underlying {@link SOAPFault}.
	* @return {@link Message} representing SOAP fault
	*/
	@:overload public static function createSOAPFaultMessage(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, ex : javax.xml.ws.ProtocolException, faultcode : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* To be called by the server runtime in the situations when there is an Exception that needs to be transformed in
	* to a soapenv:Fault payload.
	*
	* @param ceModel     {@link CheckedExceptionImpl} model that provides useful informations such as the detail tagname
	*                    and the Exception associated with it. Caller of this constructor should get the CheckedException
	*                    model by calling {@link JavaMethodImpl#getCheckedException(Class)}, where
	*                    Class is t.getClass().
	*                    <p>
	*                    If its null then this is not a checked exception  and in that case the soap fault will be
	*                    serialized only from the exception as described below.
	* @param ex          Exception that needs to be translated into soapenv:Fault, always non-null.
	*                    <ul>
	*                    <li>If t is instance of {@link SOAPFaultException} then its serilaized as protocol exception.
	*                    <li>If t.getCause() is instance of {@link SOAPFaultException} and t is a checked exception then
	*                    the soap fault detail is serilaized from t and the fault actor/string/role is taken from t.getCause().
	*                    </ul>
	* @param soapVersion non-null
	*/
	@:overload public static function createSOAPFaultMessage(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, ceModel : com.sun.xml.internal.ws.model.CheckedExceptionImpl, ex : java.lang.Throwable) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Create the Message with the specified faultCode
	*
	* @see #createSOAPFaultMessage(SOAPVersion, CheckedExceptionImpl, Throwable)
	*/
	@:overload public static function createSOAPFaultMessage(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, ceModel : com.sun.xml.internal.ws.model.CheckedExceptionImpl, ex : java.lang.Throwable, faultCode : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Server runtime will call this when there is some internal error not resulting from an exception.
	*
	* @param soapVersion {@link SOAPVersion#SOAP_11} or {@link SOAPVersion#SOAP_12}
	* @param faultString must be non-null
	* @param faultCode   For SOAP 1.1, it must be one of
	*                    <ul>
	*                    <li>{@link SOAPVersion#faultCodeClient}
	*                    <li>{@link SOAPVersion#faultCodeServer}
	*                    <li>{@link SOAPConstants#FAULT_CODE_MUST_UNDERSTAND}
	*                    <li>{@link SOAPConstants#FAULT_CODE_VERSION_MISMATCH}
	*                    </ul>
	*
	*                    For SOAP 1.2
	*                    <ul>
	*                    <li>{@link SOAPVersion#faultCodeClient}
	*                    <li>{@link SOAPVersion#faultCodeServer}
	*                    <li>{@link SOAP12Constants#FAULT_CODE_MUST_UNDERSTAND}
	*                    <li>{@link SOAP12Constants#FAULT_CODE_VERSION_MISMATCH}
	*                    <li>{@link SOAP12Constants#FAULT_CODE_DATA_ENCODING_UNKNOWN}
	*                    </ul>
	* @return non-null {@link Message}
	*/
	@:overload public static function createSOAPFaultMessage(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, faultString : String, faultCode : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload public static function createSOAPFaultMessage(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, fault : javax.xml.soap.SOAPFault) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:abstract private function getProtocolException() : java.lang.Throwable;
	
	/**
	* Parses a fault {@link Message} and returns it as a {@link SOAPFaultBuilder}.
	*
	* @return always non-null valid object.
	* @throws JAXBException if the parsing fails.
	*/
	@:overload public static function create(msg : com.sun.xml.internal.ws.api.message.Message) : SOAPFaultBuilder;
	
	/**
	* Set to false if you don't want the generated faults to have stack trace in it.
	*/
	@:native('captureStackTrace') public static var _captureStackTrace : Bool;
	
	
}
