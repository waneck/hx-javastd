package com.sun.xml.internal.ws.resources;
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
extern class ServerMessages
{
	@:overload public static function localizableRUNTIME_PARSER_WSDL_INCORRECTSERVICE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* could not get binding from WSDL! service: {0} not found in the WSDL {1}.
	* It could be because service name does not match WSDL''s wsdl:service name:
	*  1. service name is not there in deployment descriptor OR
	*  2. Either there is a typo in deployment descriptor''s service name OR
	*  3. The computed names from @WebService do not match wsdl:service name
	* OR
	*  1. There is an error while parsing the wsdl and Service with name {0} is not found in the WSDLModel.
	* Suggest doing the following:
	*  1. Add/Correct entries for service name in deployment descriptor OR
	*  2. Specify targetNamespace, serviceName in @WebService on the endpoint class
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_INCORRECTSERVICE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_MISSING_ATTRIBUTE_NO_LINE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing attribute "{2}" in element "{1}" of runtime descriptor
	*
	*/
	@:overload public static function RUNTIME_PARSER_MISSING_ATTRIBUTE_NO_LINE() : String;
	
	@:overload public static function localizableSTATEFUL_COOKIE_HEADER_INCORRECT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid/expired {0} header value: {1}
	*
	*/
	@:overload public static function STATEFUL_COOKIE_HEADER_INCORRECT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableNOT_IMPLEMENT_PROVIDER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" doesn't implement Provider
	*
	*/
	@:overload public static function NOT_IMPLEMENT_PROVIDER(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTATEFUL_REQURES_ADDRESSING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Stateful web service {0} requires the WS-Addressing support to be enabled. Perhaps you are missing @Addressing
	*
	*/
	@:overload public static function STATEFUL_REQURES_ADDRESSING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSOAPDECODER_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error in decoding SOAP Message
	*
	*/
	@:overload public static function SOAPDECODER_ERR() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_INVALID_READER_STATE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error parsing runtime descriptor: {0}
	*
	*/
	@:overload public static function RUNTIME_PARSER_INVALID_READER_STATE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableGENERATE_NON_STANDARD_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Generating non-standard WSDL for the specified binding
	*
	*/
	@:overload public static function GENERATE_NON_STANDARD_WSDL() : String;
	
	@:overload public static function localizableDISPATCH_CANNOT_FIND_METHOD(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot find dispatch method for {0}
	*
	*/
	@:overload public static function DISPATCH_CANNOT_FIND_METHOD(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNO_CONTENT_TYPE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Request doesn't have a Content-Type
	*
	*/
	@:overload public static function NO_CONTENT_TYPE() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_INVALID_VERSION_NUMBER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported runtime descriptor version: {2}
	*
	*/
	@:overload public static function RUNTIME_PARSER_INVALID_VERSION_NUMBER() : String;
	
	@:overload public static function localizablePROVIDER_INVALID_PARAMETER_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" implements Provider but its type parameter {1} is incorrect
	*
	*/
	@:overload public static function PROVIDER_INVALID_PARAMETER_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWRONG_NO_PARAMETERS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Incorrect no of arguments for method "{0}"
	*
	*/
	@:overload public static function WRONG_NO_PARAMETERS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableANNOTATION_ONLY_ONCE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Only one method should have the annotation "{0}"
	*
	*/
	@:overload public static function ANNOTATION_ONLY_ONCE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableALREADY_HTTPS_SERVER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There is already a HTTPS server at : {0}
	*
	*/
	@:overload public static function ALREADY_HTTPS_SERVER(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_XML_READER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error parsing runtime descriptor: {0}
	*
	*/
	@:overload public static function RUNTIME_PARSER_XML_READER(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_INCORRECTSERVICEPORT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* could not get binding from WSDL! service: {0} or port {1} not found in the WSDL {2}.
	* It could be because service and port names do not match WSDL''s wsdl:service and wsdl:port names:
	*  1. service and port names are not there in deployment descriptor OR
	*  2. Either there is a typo in deployment descriptor''s service and port names OR
	*  3. The computed names from @WebService do not match wsdl:service and wsdl:port names
	* Suggest doing the following:
	*  1. Add/Correct entries for service and port names in deployment descriptor OR
	*  2. Specify targetNamespace, serviceName, portName in @WebService on the endpoint class
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_INCORRECTSERVICEPORT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableSERVER_RT_ERR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Server Runtime Error: {0}
	*
	*/
	@:overload public static function SERVER_RT_ERR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid value for attribute "{2}" of element "{1}" in runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableNO_CURRENT_PACKET() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* This thread is not currently processing any web service request.
	*
	*/
	@:overload public static function NO_CURRENT_PACKET() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_UNEXPECTED_CONTENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unexpected content in runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_UNEXPECTED_CONTENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTATEFUL_COOKIE_HEADER_REQUIRED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* This is a stateful web service and {0} header is required.
	*
	*/
	@:overload public static function STATEFUL_COOKIE_HEADER_REQUIRED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNULL_IMPLEMENTOR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Implementor cannot be null
	*
	*/
	@:overload public static function NULL_IMPLEMENTOR() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* exception during WSDL parsing: {0}
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSOAPENCODER_ERR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error in encoding SOAP Message
	*
	*/
	@:overload public static function SOAPENCODER_ERR() : String;
	
	@:overload public static function localizableWSDL_REQUIRED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsdl is required
	*
	*/
	@:overload public static function WSDL_REQUIRED() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_NOSERVICE_IN_WSDLMODEL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There is an error in processing the WSDL {0} and no valid services are found.
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_NOSERVICE_IN_WSDLMODEL(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePORT_NAME_REQUIRED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Port QName is not found
	*
	*/
	@:overload public static function PORT_NAME_REQUIRED() : String;
	
	@:overload public static function localizableWRONG_TNS_FOR_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Port namespace {0} doesn't match Service namespace {1}
	*
	*/
	@:overload public static function WRONG_TNS_FOR_PORT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_MULTIPLEBINDING(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* multiple bindings found for binding ID {0} for service {1} in WSDL {2}
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_MULTIPLEBINDING(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableNOT_KNOW_HTTP_CONTEXT_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Doesn''t support Endpoint.publish({0}). Known context types are {1}, and {2}
	*
	*/
	@:overload public static function NOT_KNOW_HTTP_CONTEXT_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableNON_UNIQUE_DISPATCH_QNAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Non unique body parts! In a port, as per BP 1.1 R2710 operations must have unique operation signature on the wire for successful dispatch. Methods {0} have the same request body block {1}. Method dispatching may fail, runtime will try to dispatch using SOAPAction. Another option is to enable AddressingFeature to enabled runtime to uniquely identify WSDL operation using wsa:Action header.
	*
	*/
	@:overload public static function NON_UNIQUE_DISPATCH_QNAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableALREADY_HTTP_SERVER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There is already a HTTP server at : {0}
	*
	*/
	@:overload public static function ALREADY_HTTP_SERVER(arg0 : Dynamic) : String;
	
	@:overload public static function localizableCAN_NOT_GENERATE_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Cannot generate WSDL for binding "{0}"
	*
	*/
	@:overload public static function CAN_NOT_GENERATE_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid attribute value "{1}" in runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WRONG_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* found element "{1}", expected "{2}" in runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_WRONG_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIMEMODELER_INVALIDANNOTATION_ON_IMPL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid annotation: {0} on endpoint implementation class "{1}" - will be ignored. "{1}" is annotated with @WebService(endpointInterface="{2}"}, it MUST NOT be annotated with {0}, to fix it - put this annotation on the SEI {2}.
	*
	*/
	@:overload public static function RUNTIMEMODELER_INVALIDANNOTATION_ON_IMPL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_NOSERVICE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* can't apply binding! service {0} not found in the WSDL {1}
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_NOSERVICE() : String;
	
	@:overload public static function localizableSERVICE_NAME_REQUIRED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service QName is not found
	*
	*/
	@:overload public static function SERVICE_NAME_REQUIRED() : String;
	
	@:overload public static function localizablePROVIDER_NOT_PARAMETERIZED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" implements Provider but doesn't specify the type parameter
	*
	*/
	@:overload public static function PROVIDER_NOT_PARAMETERIZED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_WSDL_PATCHER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error while patching WSDL related document
	*
	*/
	@:overload public static function RUNTIME_WSDL_PATCHER() : String;
	
	@:overload public static function localizableRUNTIME_SAXPARSER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0}
	* {1}
	*
	*/
	@:overload public static function RUNTIME_SAXPARSER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is not found in the WAR file. Package it in the WAR file or correct it in sun-jaxws.xml.
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWRONG_PARAMETER_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Incorrect argument types for method "{0}"
	*
	*/
	@:overload public static function WRONG_PARAMETER_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* class not found in runtime descriptor: {0}
	*
	*/
	@:overload public static function RUNTIME_PARSER_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableUNSUPPORTED_CHARSET(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unsupported charset "{0}" in the received message''s Content-Type
	*
	*/
	@:overload public static function UNSUPPORTED_CHARSET(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTATIC_RESOURCE_INJECTION_ONLY(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Static resource {0} cannot be injected to non-static "{1}"
	*
	*/
	@:overload public static function STATIC_RESOURCE_INJECTION_ONLY(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableNOT_ZERO_PARAMETERS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Method "{0}" shouldn''t have any arguments
	*
	*/
	@:overload public static function NOT_ZERO_PARAMETERS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableDUPLICATE_PRIMARY_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Metadata has more than one WSDL that has Service definiton for the endpoint. WSDL={0} is one such WSDL.
	*
	*/
	@:overload public static function DUPLICATE_PRIMARY_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableDUPLICATE_ABSTRACT_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Metadata has more than one WSDL that has PortType definiton for the endpoint. WSDL={0} is one such WSDL.
	*
	*/
	@:overload public static function DUPLICATE_ABSTRACT_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSTATEFUL_INVALID_WEBSERVICE_CONTEXT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Not a WebServiceContext from JAX-WS RI: {0}
	*
	*/
	@:overload public static function STATEFUL_INVALID_WEBSERVICE_CONTEXT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_WSDL_NOBINDING() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* can't apply binding! no binding found for binding ID {0] for service {1} in WSDL {2}
	*
	*/
	@:overload public static function RUNTIME_PARSER_WSDL_NOBINDING() : String;
	
	@:overload public static function localizableRUNTIME_PARSER_INVALID_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid element "{1}" in runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_INVALID_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableRUNTIME_PARSER_MISSING_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing attribute "{2}" in element "{1}" of runtime descriptor (line {0})
	*
	*/
	@:overload public static function RUNTIME_PARSER_MISSING_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableWRONG_FIELD_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Incorrect type for field "{0}"
	*
	*/
	@:overload public static function WRONG_FIELD_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableDUPLICATE_PORT_KNOWN_HEADER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Received SOAP message contains duplicate header: {0} for a bound parameter
	*
	*/
	@:overload public static function DUPLICATE_PORT_KNOWN_HEADER(arg0 : Dynamic) : String;
	
	@:overload public static function localizableUNSUPPORTED_CONTENT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unsupported Content-Type: {0} Supported ones are: {1}
	*
	*/
	@:overload public static function UNSUPPORTED_CONTENT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableFAILED_TO_INSTANTIATE_INSTANCE_RESOLVER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unable to instantiate {0} (which is specified in {1} on {2})
	*
	*/
	@:overload public static function FAILED_TO_INSTANTIATE_INSTANCE_RESOLVER(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableDD_MTOM_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Error in Deployment Descriptor : MTOM Configuration in binding {0} conflicts with enable-mtom attribute value {1}
	*
	*/
	@:overload public static function DD_MTOM_CONFLICT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	
}
