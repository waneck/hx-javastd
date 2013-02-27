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
extern class WsservletMessages
{
	@:overload public static function localizableERROR_WSDL_PUBLISHER_CANNOT_READ_CONFIGURATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET46: cannot read configuration
	*
	*/
	@:overload public static function ERROR_WSDL_PUBLISHER_CANNOT_READ_CONFIGURATION() : String;
	
	@:overload public static function localizableWSSERVLET_22_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Set endpoint with stub.setTargetEndpoint property
	*
	*/
	@:overload public static function WSSERVLET_22_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_33_DIAG_CAUSE_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* When publishing the service wsdl, the http location is patched with the deployed location/endpoint using XSLT transformation. The transformer could not be created to do the transformation.
	*
	*/
	@:overload public static function WSSERVLET_33_DIAG_CAUSE_2() : String;
	
	@:overload public static function localizableWSSERVLET_33_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* When publishing the service wsdl, the http location is patched with the deployed location/endpoint using XSLT transformation. The transformer could not be created to do the transformation.
	*
	*/
	@:overload public static function WSSERVLET_33_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_DUPLICATE_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET42: duplicate port name: {0}
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_DUPLICATE_NAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_FILE_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET45: file not found: {0}
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_FILE_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_TRACE_INVOKING_IMPLEMENTOR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET21: invoking implementor: {0}
	*
	*/
	@:overload public static function SERVLET_TRACE_INVOKING_IMPLEMENTOR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_17_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Two or more endpoints with the same name where found in the jaxrpc-ri.xml runtime descriptor
	*
	*/
	@:overload public static function WSSERVLET_17_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableHTML_NON_ROOT_PAGE_BODY_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>Invalid request URI.</p><p>Please check your deployment information.</p>
	*
	*/
	@:overload public static function HTML_NON_ROOT_PAGE_BODY_2() : String;
	
	@:overload public static function localizableHTML_NON_ROOT_PAGE_BODY_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>A Web Service is installed at this URL.</p>
	*
	*/
	@:overload public static function HTML_NON_ROOT_PAGE_BODY_1() : String;
	
	@:overload public static function localizablePUBLISHER_INFO_APPLYING_TRANSFORMATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET31: applying transformation with actual address: {0}
	*
	*/
	@:overload public static function PUBLISHER_INFO_APPLYING_TRANSFORMATION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_29_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Is the port valid? Unzip the war file and make sure the tie and serializers are present
	*
	*/
	@:overload public static function WSSERVLET_29_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_TRACE_GOT_REQUEST_FOR_ENDPOINT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET19: got request for endpoint: {0}
	*
	*/
	@:overload public static function SERVLET_TRACE_GOT_REQUEST_FOR_ENDPOINT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableERROR_SERVLET_INIT_CONFIG_PARAMETER_MISSING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET47: cannot find configuration parameter: "{0}"
	*
	*/
	@:overload public static function ERROR_SERVLET_INIT_CONFIG_PARAMETER_MISSING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_FACTORY_SERVANT_INIT_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET44: failed to initialize the service implementor for port "{0}"
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_FACTORY_SERVANT_INIT_FAILED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_13_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal web service shutdown
	*
	*/
	@:overload public static function WSSERVLET_13_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_31_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Transformation being applied
	*
	*/
	@:overload public static function WSSERVLET_31_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CHECK_3() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the server.xml file in the domain directory for failures
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CHECK_3() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_FACTORY_NO_INPUT_STREAM() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET37: no configuration specified
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_FACTORY_NO_INPUT_STREAM() : String;
	
	@:overload public static function localizableWSSERVLET_24_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAPFault message is being returned to the client.
	*
	*/
	@:overload public static function WSSERVLET_24_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CHECK_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Verify that Application server deployment descriptors are correct in the service war file
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CHECK_2() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Verify that sun-jaxws.xml and web.xml are correct in the service war file
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_43_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Make sure web service is available and public. Examine exception for more details
	*
	*/
	@:overload public static function WSSERVLET_43_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_15_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Services servlet shutdown.
	*
	*/
	@:overload public static function WSSERVLET_15_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_27_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Remove the implicit URL
	*
	*/
	@:overload public static function WSSERVLET_27_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_UNKNOWN_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET38: unknown port name: {0}
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_UNKNOWN_NAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_HTML_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <h1>404 Not Found: {0}</h1>
	*
	*/
	@:overload public static function SERVLET_HTML_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_TITLE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Service
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_TITLE() : String;
	
	@:overload public static function localizableWSSERVLET_20_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unzip the war, are the tie and serializer classes found?
	*
	*/
	@:overload public static function WSSERVLET_20_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableJAXRPCSERVLET_11_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSRuntimeInfoParser cauld not parse sun-jaxws.xml runtime descriptor
	*
	*/
	@:overload public static function JAXRPCSERVLET_11_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_11_DIAG_CHECK_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Please check the jaxrpc-ri.xml file to make sure it is present in the war file
	*
	*/
	@:overload public static function WSSERVLET_11_DIAG_CHECK_2() : String;
	
	@:overload public static function localizableWSSERVLET_11_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Please check the sun-jaxws.xml file to make sure it is correct
	*
	*/
	@:overload public static function WSSERVLET_11_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_22_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A request was invoked with no endpoint
	*
	*/
	@:overload public static function WSSERVLET_22_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_34_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the log file(s) for more detailed errors/exceptions.
	*
	*/
	@:overload public static function WSSERVLET_34_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableERROR_SERVLET_NO_IMPLEMENTOR_FOR_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET52: no implementor registered for port: {0}
	*
	*/
	@:overload public static function ERROR_SERVLET_NO_IMPLEMENTOR_FOR_PORT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_64_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Make sure the client request is using text/xml
	*
	*/
	@:overload public static function WSSERVLET_64_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_18_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* This may or may not be intentional. If not examine client program for errors.
	*
	*/
	@:overload public static function WSSERVLET_18_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_29_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A port is specified, but a corresponding service implementation is not found
	*
	*/
	@:overload public static function WSSERVLET_29_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableSERVLET_ERROR_NO_RESPONSE_MESSAGE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET23: no response message
	*
	*/
	@:overload public static function SERVLET_ERROR_NO_RESPONSE_MESSAGE() : String;
	
	@:overload public static function localizableSERVLET_HTML_STATUS_ERROR() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ERROR
	*
	*/
	@:overload public static function SERVLET_HTML_STATUS_ERROR() : String;
	
	@:overload public static function localizableLISTENER_INFO_INITIALIZE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET12: JAX-WS context listener initializing
	*
	*/
	@:overload public static function LISTENER_INFO_INITIALIZE() : String;
	
	@:overload public static function localizableSERVLET_HTML_NO_INFO_AVAILABLE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>No JAX-WS context information available.</p>
	*
	*/
	@:overload public static function SERVLET_HTML_NO_INFO_AVAILABLE() : String;
	
	@:overload public static function localizableSERVLET_HTML_INFORMATION_TABLE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <table border="0"><tr><td>Address:</td><td>{0}</td></tr><tr><td>WSDL:</td><td><a href="{0}?wsdl">{0}?wsdl</a></td></tr><tr><td>Implementation class:</td><td>{1}</td></tr></table>
	*
	*/
	@:overload public static function SERVLET_HTML_INFORMATION_TABLE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_TRACE_WRITING_FAULT_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET24: writing fault response
	*
	*/
	@:overload public static function SERVLET_TRACE_WRITING_FAULT_RESPONSE() : String;
	
	@:overload public static function localizableSERVLET_ERROR_NO_IMPLEMENTOR_FOR_ENDPOINT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET20: no implementor for endpoint: {0}
	*
	*/
	@:overload public static function SERVLET_ERROR_NO_IMPLEMENTOR_FOR_ENDPOINT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_13_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Context listener shutdown
	*
	*/
	@:overload public static function WSSERVLET_13_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CAUSE_3() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There may some Application Server initialization problems
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CAUSE_3() : String;
	
	@:overload public static function localizableWSSERVLET_32_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal Operation.
	*
	*/
	@:overload public static function WSSERVLET_32_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CAUSE_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Application server deployment descriptors may be incorrect
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CAUSE_2() : String;
	
	@:overload public static function localizableWSSERVLET_50_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WS runtime sun-jaxws.xml or web.xml may be incorrect
	*
	*/
	@:overload public static function WSSERVLET_50_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableSERVLET_HTML_STATUS_ACTIVE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ACTIVE
	*
	*/
	@:overload public static function SERVLET_HTML_STATUS_ACTIVE() : String;
	
	@:overload public static function localizableWSSERVLET_25_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Tracing message, normal response.
	*
	*/
	@:overload public static function WSSERVLET_25_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_43_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Instantiation of the web service failed.
	*
	*/
	@:overload public static function WSSERVLET_43_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_27_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Implicit URLS are not supported in this realease
	*
	*/
	@:overload public static function WSSERVLET_27_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableERROR_SERVLET_CAUGHT_THROWABLE_IN_INIT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET50: caught throwable during servlet initialization: {0}
	*
	*/
	@:overload public static function ERROR_SERVLET_CAUGHT_THROWABLE_IN_INIT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_HTML_ENDPOINT_TABLE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <table border="0"><tr><td>Service Name:</td><td>{0}</td></tr><tr><td>Port Name:</td><td>{1}</td></tr></table>
	*
	*/
	@:overload public static function SERVLET_HTML_ENDPOINT_TABLE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableERROR_SERVLET_CAUGHT_THROWABLE_WHILE_RECOVERING(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET51: caught throwable while recovering from a previous exception: {0}
	*
	*/
	@:overload public static function ERROR_SERVLET_CAUGHT_THROWABLE_WHILE_RECOVERING(arg0 : Dynamic) : String;
	
	@:overload public static function localizableNO_SUNJAXWS_XML(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Runtime descriptor "{0}" is mising
	*
	*/
	@:overload public static function NO_SUNJAXWS_XML(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_HTML_TITLE_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <h1>Web Services</h1>
	*
	*/
	@:overload public static function SERVLET_HTML_TITLE_2() : String;
	
	@:overload public static function localizableLISTENER_INFO_DESTROY() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET13: JAX-WS context listener destroyed
	*
	*/
	@:overload public static function LISTENER_INFO_DESTROY() : String;
	
	@:overload public static function localizableEXCEPTION_TEMPLATE_CREATION_FAILED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET35: failed to create a template object
	*
	*/
	@:overload public static function EXCEPTION_TEMPLATE_CREATION_FAILED() : String;
	
	@:overload public static function localizableWSSERVLET_20_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Implementation for this service can not be found
	*
	*/
	@:overload public static function WSSERVLET_20_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableTRACE_SERVLET_WRITING_FAULT_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET61: writing fault response
	*
	*/
	@:overload public static function TRACE_SERVLET_WRITING_FAULT_RESPONSE() : String;
	
	@:overload public static function localizableWSSERVLET_23_DIAG_CHECK_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The request may be malformed and be accepted by the service, yet did not generate a response
	*
	*/
	@:overload public static function WSSERVLET_23_DIAG_CHECK_2() : String;
	
	@:overload public static function localizableWSSERVLET_23_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* If a response was expected, check that a request message was actually sent
	*
	*/
	@:overload public static function WSSERVLET_23_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_WARNING_MISSING_CONTEXT_INFORMATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET16: missing context information
	*
	*/
	@:overload public static function SERVLET_WARNING_MISSING_CONTEXT_INFORMATION() : String;
	
	@:overload public static function localizableWSSERVLET_16_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unjar the service war file; check to see that the jaxrpc-ri-runtime.xml file is present
	*
	*/
	@:overload public static function WSSERVLET_16_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_34_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The location patching on the wsdl failed when attempting to transform.
	*
	*/
	@:overload public static function WSSERVLET_34_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableHTML_NON_ROOT_PAGE_TITLE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Service
	*
	*/
	@:overload public static function HTML_NON_ROOT_PAGE_TITLE() : String;
	
	@:overload public static function localizableSERVLET_HTML_COLUMN_HEADER_INFORMATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Information
	*
	*/
	@:overload public static function SERVLET_HTML_COLUMN_HEADER_INFORMATION() : String;
	
	@:overload public static function localizableWSSERVLET_18_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Message sent by client is empty
	*
	*/
	@:overload public static function WSSERVLET_18_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_64_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web service requests must be a content type text/xml: WSI BP 1.0
	*
	*/
	@:overload public static function WSSERVLET_64_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableINFO_SERVLET_INITIALIZING() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET56: JAX-WS servlet: init
	*
	*/
	@:overload public static function INFO_SERVLET_INITIALIZING() : String;
	
	@:overload public static function localizableSERVLET_INFO_EMPTY_REQUEST_MESSAGE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET18: got empty request message
	*
	*/
	@:overload public static function SERVLET_INFO_EMPTY_REQUEST_MESSAGE() : String;
	
	@:overload public static function localizableSERVLET_ERROR_NO_ENDPOINT_SPECIFIED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET22: no endpoint specified
	*
	*/
	@:overload public static function SERVLET_ERROR_NO_ENDPOINT_SPECIFIED() : String;
	
	@:overload public static function localizableWSSERVLET_11_DIAG_CAUSE_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The sun-jaxws.xml runtime deployment descriptor may be missing
	*
	*/
	@:overload public static function WSSERVLET_11_DIAG_CAUSE_2() : String;
	
	@:overload public static function localizableWSSERVLET_30_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* This could be due to a number of causes. Check the server log file for exceptions.
	*
	*/
	@:overload public static function WSSERVLET_30_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableEXCEPTION_CANNOT_CREATE_TRANSFORMER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET33: cannot create transformer
	*
	*/
	@:overload public static function EXCEPTION_CANNOT_CREATE_TRANSFORMER() : String;
	
	@:overload public static function localizableSERVLET_FAULTSTRING_INVALID_SOAP_ACTION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET65: Invalid Header SOAPAction required
	*
	*/
	@:overload public static function SERVLET_FAULTSTRING_INVALID_SOAP_ACTION() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_3_B() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* '>here.</a></p>
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_3_B() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_3_A() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>A WSDL description of these ports is available <a href='
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_3_A() : String;
	
	@:overload public static function localizableWSSERVLET_14_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal Web Service deployment. Deployment of service complete.
	*
	*/
	@:overload public static function WSSERVLET_14_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_32_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL being generated
	*
	*/
	@:overload public static function WSSERVLET_32_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_25_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAPMessage response is being returned to client
	*
	*/
	@:overload public static function WSSERVLET_25_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_44_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the exception for more details. Make sure all the configuration files are correct.
	*
	*/
	@:overload public static function WSSERVLET_44_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_28_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Set target endpoint with stub.setTargetEndpoint() property.
	*
	*/
	@:overload public static function WSSERVLET_28_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_INFO_INITIALIZE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET14: JAX-WS servlet initializing
	*
	*/
	@:overload public static function SERVLET_INFO_INITIALIZE() : String;
	
	@:overload public static function localizableERROR_SERVLET_INIT_CONFIG_FILE_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET48: config file: "{0}" not found
	*
	*/
	@:overload public static function ERROR_SERVLET_INIT_CONFIG_FILE_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableHTML_WSDL_PAGE_TITLE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Service
	*
	*/
	@:overload public static function HTML_WSDL_PAGE_TITLE() : String;
	
	@:overload public static function localizableSERVLET_HTML_COLUMN_HEADER_PORT_NAME() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Endpoint
	*
	*/
	@:overload public static function SERVLET_HTML_COLUMN_HEADER_PORT_NAME() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_2_B() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* </p>
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_2_B() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_2_A() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>It supports the following ports:
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_2_A() : String;
	
	@:overload public static function localizableWSSERVLET_21_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal web service invocation.
	*
	*/
	@:overload public static function WSSERVLET_21_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableERROR_SERVLET_NO_PORT_SPECIFIED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET53: no port specified in HTTP POST request URL
	*
	*/
	@:overload public static function ERROR_SERVLET_NO_PORT_SPECIFIED() : String;
	
	@:overload public static function localizableINFO_SERVLET_GOT_EMPTY_REQUEST_MESSAGE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET55: got empty request message
	*
	*/
	@:overload public static function INFO_SERVLET_GOT_EMPTY_REQUEST_MESSAGE() : String;
	
	@:overload public static function localizableWSSERVLET_51_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the server.xml log file for exception information
	*
	*/
	@:overload public static function WSSERVLET_51_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_23_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The request generated no response from the service
	*
	*/
	@:overload public static function WSSERVLET_23_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_16_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The jaxrpc-ri.xml file may be missing from the war file
	*
	*/
	@:overload public static function WSSERVLET_16_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_35_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* An exception was thrown during creation of the template. View exception and stacktrace for more details.
	*
	*/
	@:overload public static function WSSERVLET_35_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_65_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Add SOAPAction and appropriate value
	*
	*/
	@:overload public static function WSSERVLET_65_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableTRACE_SERVLET_HANDING_REQUEST_OVER_TO_IMPLEMENTOR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET59: handing request over to implementor: {0}
	*
	*/
	@:overload public static function TRACE_SERVLET_HANDING_REQUEST_OVER_TO_IMPLEMENTOR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_19_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Informational message only. Normal operation.
	*
	*/
	@:overload public static function WSSERVLET_19_DIAG_CHECK_1() : String;
	
	@:overload public static function localizablePUBLISHER_INFO_GENERATING_WSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET32: generating WSDL for endpoint: {0}
	*
	*/
	@:overload public static function PUBLISHER_INFO_GENERATING_WSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_WARNING_DUPLICATE_ENDPOINT_URL_PATTERN(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET26: duplicate URL pattern in endpoint: {0}
	*
	*/
	@:overload public static function SERVLET_WARNING_DUPLICATE_ENDPOINT_URL_PATTERN(arg0 : Dynamic) : String;
	
	@:overload public static function localizableHTML_NON_ROOT_PAGE_BODY_3_B() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* '>this page</a> for information about the deployed services.</p>
	*
	*/
	@:overload public static function HTML_NON_ROOT_PAGE_BODY_3_B() : String;
	
	@:overload public static function localizableWSSERVLET_49_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the server.xml log file for exception information
	*
	*/
	@:overload public static function WSSERVLET_49_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableHTML_NON_ROOT_PAGE_BODY_3_A() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>Please refer to <a href='
	*
	*/
	@:overload public static function HTML_NON_ROOT_PAGE_BODY_3_A() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_CANNOT_READ_CONFIGURATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET39: cannot read configuration
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_CANNOT_READ_CONFIGURATION() : String;
	
	@:overload public static function localizableTRACE_SERVLET_GOT_RESPONSE_FROM_IMPLEMENTOR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET60: got response from implementor: {0}
	*
	*/
	@:overload public static function TRACE_SERVLET_GOT_RESPONSE_FROM_IMPLEMENTOR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_INCOMPLETE_INFORMATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET41: configuration information is incomplete
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_INCOMPLETE_INFORMATION() : String;
	
	@:overload public static function localizableWSSERVLET_12_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal web service startup
	*
	*/
	@:overload public static function WSSERVLET_12_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_30_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There was a server error processing the request
	*
	*/
	@:overload public static function WSSERVLET_30_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableHTML_WSDL_PAGE_NO_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>No WSDL document available for publishing.</p><p>Please check your deployment information.</p>
	*
	*/
	@:overload public static function HTML_WSDL_PAGE_NO_WSDL() : String;
	
	@:overload public static function localizableWSSERVLET_14_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Services servlet starting up.
	*
	*/
	@:overload public static function WSSERVLET_14_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableINFO_SERVLET_DESTROYING() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET57: JAX-WS servlet: destroy
	*
	*/
	@:overload public static function INFO_SERVLET_DESTROYING() : String;
	
	@:overload public static function localizableERROR_SERVLET_NO_RESPONSE_WAS_PRODUCED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET54: no response was produced (internal error)
	*
	*/
	@:overload public static function ERROR_SERVLET_NO_RESPONSE_WAS_PRODUCED() : String;
	
	@:overload public static function localizableWSSERVLET_26_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* This may cause a problem, please remove duplicate endpoints
	*
	*/
	@:overload public static function WSSERVLET_26_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_HTML_TITLE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web Services
	*
	*/
	@:overload public static function SERVLET_HTML_TITLE() : String;
	
	@:overload public static function localizableWSSERVLET_44_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The web service was instantiated, however, it could not be initialized
	*
	*/
	@:overload public static function WSSERVLET_44_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_63_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Make sure that your HTTP client is using POST requests, not GET requests
	*
	*/
	@:overload public static function WSSERVLET_63_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_28_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Target endpoint is null
	*
	*/
	@:overload public static function WSSERVLET_28_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_FACTORY_NO_CONFIGURATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET36: no configuration specified
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_FACTORY_NO_CONFIGURATION() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_4() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>This endpoint is incorrectly configured. Please check the location and contents of the configuration file.</p>
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_4() : String;
	
	@:overload public static function localizableHTML_ROOT_PAGE_BODY_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* <p>A Web Service is installed at this URL.</p>
	*
	*/
	@:overload public static function HTML_ROOT_PAGE_BODY_1() : String;
	
	@:overload public static function localizableEXCEPTION_TRANSFORMATION_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET34: transformation failed : {0}
	*
	*/
	@:overload public static function EXCEPTION_TRANSFORMATION_FAILED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_HTML_METHOD() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET63: must use Post for this type of request
	*
	*/
	@:overload public static function SERVLET_HTML_METHOD() : String;
	
	@:overload public static function localizableSERVLET_FAULTSTRING_MISSING_PORT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET28: Missing port information
	*
	*/
	@:overload public static function SERVLET_FAULTSTRING_MISSING_PORT() : String;
	
	@:overload public static function localizableWSSERVLET_21_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The Web service is being invoked
	*
	*/
	@:overload public static function WSSERVLET_21_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableSERVLET_TRACE_WRITING_SUCCESS_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET25: writing success response
	*
	*/
	@:overload public static function SERVLET_TRACE_WRITING_SUCCESS_RESPONSE() : String;
	
	@:overload public static function localizableWSSERVLET_33_DIAG_CHECK_2() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There maybe a tranformation engine may not be supported or compatible. Check the server.xml file for exceptions.
	*
	*/
	@:overload public static function WSSERVLET_33_DIAG_CHECK_2() : String;
	
	@:overload public static function localizableWSSERVLET_33_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There maybe a tranformation engine being used that is not compatible. Make sure you are using the correct transformer and version.
	*
	*/
	@:overload public static function WSSERVLET_33_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_51_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service processing of the request generated an exception; while attempting to return a SOAPPFaultMessage a thowable was again generated
	*
	*/
	@:overload public static function WSSERVLET_51_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_24_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Tracing message fault recorded.
	*
	*/
	@:overload public static function WSSERVLET_24_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_17_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Note that this may cause problems with service deployment
	*
	*/
	@:overload public static function WSSERVLET_17_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableWSSERVLET_35_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* A XSLT stylesheet template is create for the wsdl location patching using transformation. Template create failed.
	*
	*/
	@:overload public static function WSSERVLET_35_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_19_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Client request for this endpoint arrived
	*
	*/
	@:overload public static function WSSERVLET_19_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_65_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAP Action is required
	*
	*/
	@:overload public static function WSSERVLET_65_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableLISTENER_PARSING_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET11: failed to parse runtime descriptor: {0}
	*
	*/
	@:overload public static function LISTENER_PARSING_FAILED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_WARNING_IGNORING_IMPLICIT_URL_PATTERN(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET27: unsupported implicit URL pattern in endpoint: {0}
	*
	*/
	@:overload public static function SERVLET_WARNING_IGNORING_IMPLICIT_URL_PATTERN(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_49_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service processing of the request generated an exception; while attempting to return a SOAPFaultMessage a thowable was again generated
	*
	*/
	@:overload public static function WSSERVLET_49_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_FACTORY_NEW_INSTANCE_FAILED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET43: failed to instantiate service implementor for port "{0}"
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_FACTORY_NEW_INSTANCE_FAILED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_12_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Context listener starting
	*
	*/
	@:overload public static function WSSERVLET_12_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableWSSERVLET_31_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal operation
	*
	*/
	@:overload public static function WSSERVLET_31_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_FAULTSTRING_INVALID_CONTENT_TYPE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET64: Invalid Content-Type, text/xml required
	*
	*/
	@:overload public static function SERVLET_FAULTSTRING_INVALID_CONTENT_TYPE() : String;
	
	@:overload public static function localizableERROR_SERVLET_CAUGHT_THROWABLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET49: caught throwable: {0}
	*
	*/
	@:overload public static function ERROR_SERVLET_CAUGHT_THROWABLE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableTRACE_SERVLET_WRITING_SUCCESS_RESPONSE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET62: writing success response
	*
	*/
	@:overload public static function TRACE_SERVLET_WRITING_SUCCESS_RESPONSE() : String;
	
	@:overload public static function localizableERROR_IMPLEMENTOR_REGISTRY_CLASS_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET40: class not found: {0}
	*
	*/
	@:overload public static function ERROR_IMPLEMENTOR_REGISTRY_CLASS_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_15_DIAG_CHECK_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Normal Web service undeployment. Undeployment complete.
	*
	*/
	@:overload public static function WSSERVLET_15_DIAG_CHECK_1() : String;
	
	@:overload public static function localizableSERVLET_FAULTSTRING_PORT_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET29: Port not found ({0})
	*
	*/
	@:overload public static function SERVLET_FAULTSTRING_PORT_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_INFO_DESTROY() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET15: JAX-WS servlet destroyed
	*
	*/
	@:overload public static function SERVLET_INFO_DESTROY() : String;
	
	@:overload public static function localizableSERVLET_FAULTSTRING_INTERNAL_SERVER_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET30: Internal server error ({0})
	*
	*/
	@:overload public static function SERVLET_FAULTSTRING_INTERNAL_SERVER_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSSERVLET_26_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The endpoint URL is a duplicate
	*
	*/
	@:overload public static function WSSERVLET_26_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableSERVLET_HTML_COLUMN_HEADER_STATUS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Status
	*
	*/
	@:overload public static function SERVLET_HTML_COLUMN_HEADER_STATUS() : String;
	
	@:overload public static function localizableWSSERVLET_63_DIAG_CAUSE_1() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Web service requests must use HTTP POST method: WSI BP 1.0
	*
	*/
	@:overload public static function WSSERVLET_63_DIAG_CAUSE_1() : String;
	
	@:overload public static function localizableSERVLET_WARNING_DUPLICATE_ENDPOINT_NAME() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET17: duplicate endpoint name
	*
	*/
	@:overload public static function SERVLET_WARNING_DUPLICATE_ENDPOINT_NAME() : String;
	
	@:overload public static function localizableTRACE_SERVLET_REQUEST_FOR_PORT_NAMED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSSERVLET58: got request for port: {0}
	*
	*/
	@:overload public static function TRACE_SERVLET_REQUEST_FOR_PORT_NAMED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableSERVLET_NO_ADDRESS_AVAILABLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* No address is available for {0}
	*
	*/
	@:overload public static function SERVLET_NO_ADDRESS_AVAILABLE(arg0 : Dynamic) : String;
	
	
}
