package com.sun.tools.internal.ws.resources;
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
extern class ModelerMessages
{
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_INVALID_SCHEMA_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring the mime:part. mime part: {0} can not be mapped to schema type: {1}
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_INVALID_SCHEMA_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_PARAMETERORDER_PARAMETER(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}" specified in the parameterOrder attribute of operation "{1}" is not a valid part of the message.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_PARAMETERORDER_PARAMETER(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_NO_SOAP_FAULT_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* soap:fault name not specified, wsdl:fault "{0}" in operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_NO_SOAP_FAULT_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NONCONFORMING_WSDL_IMPORT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Non conforming WS-I WSDL used for wsdl:import
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NONCONFORMING_WSDL_IMPORT() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_SOAP_BODY_MISSING_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* output message of binding operation "{0}" must specify a value for the "namespace" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_SOAP_BODY_MISSING_NAMESPACE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring encoded fault "{0}" in literal binding operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_INPUT_MISSING_SOAP_BODY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* input message of binding operation "{0}" does not have a SOAP body extension
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_INPUT_MISSING_SOAP_BODY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_SOAP_BINDING_NON_HTTP_TRANSPORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring SOAP port "{0}": unrecognized transport. try running wsimport with -extension switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_SOAP_BINDING_NON_HTTP_TRANSPORT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in binding "{1}", operation "{0}" does not match any operation in the corresponding port type
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_UNSUPPORTED_BINDING_MIME() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL MIME binding is not currently supported!
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_UNSUPPORTED_BINDING_MIME() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NO_ELEMENT_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header fault part="{0}" message="{1}" of operation {2}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NO_ELEMENT_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_NON_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid operation "{0}", can''t generate java method. Parameter: part "{2}" in wsdl:message "{1}", is a java keyword. Use customization to change the parameter name or change the wsdl:part name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_NON_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADERFAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid headerfault "{0}" of binding operation "{1}": not literal
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADERFAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_DIFFERENT_PART() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring the mime:part. Invalid mime:part, the mime:content has different part attribute.
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_DIFFERENT_PART() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_ERROR_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* part "{1}" of operation "{0}" could not be resolved!
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_ERROR_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADER_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid header "{0}" in operation {1}: part must specify a "element" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADER_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_OPERATION_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid operation "{0}", it''s java reserved word, can''t generate java method. Use customization to change the operation name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_OPERATION_NAME(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_OUTPUT_MISSING_SOAP_FAULT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in operation "{1}" does not have a SOAP fault extension
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_OUTPUT_MISSING_SOAP_FAULT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_ELEMENT_MESSAGE_PART(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": message part does not refer to a schema type declaration
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_ELEMENT_MESSAGE_PART(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODLER_WARNING_OPERATION_USE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The WSDL used has operations with literal and encoded use. -f:searchschema is not supported for this scenario.
	*
	*/
	@:overload @:public @:static public static function WSDLMODLER_WARNING_OPERATION_USE() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_NON_SOAP_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring port "{0}": not a standard SOAP port. try running wsimport with -extension switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_NON_SOAP_PORT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_MESSAGE_HAS_MORE_THAN_ONE_PART(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" refers to message "{1}", but the message has more than one parts
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_MESSAGE_HAS_MORE_THAN_ONE_PART(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NO_SERVICE_DEFINITIONS_FOUND() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSDL document does not define any services
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NO_SERVICE_DEFINITIONS_FOUND() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_FAULT_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring fault "{0}" of binding operation "{1}": cannot resolve message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_FAULT_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_JAXB_JAVATYPE_NOTFOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Schema descriptor {0} in message part "{1}" is not defined and could not be bound to Java. Perhaps the schema descriptor {0} is not defined in the schema imported/included in the WSDL. You can either add such imports/includes or run wsimport and provide the schema location using -b switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_JAXB_JAVATYPE_NOTFOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_PORT_SOAP_BINDING_MIXED_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* not a WS-I BP1.1 compliant SOAP port "{0}": the wsdl binding has mixed style, it must be rpc-literal or document-literal operation!
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_PORT_SOAP_BINDING_MIXED_STYLE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_DOCLITOPERATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid wsdl:operation "{0}": its a document-literal operation,  message part must refer to a schema element declaration
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_DOCLITOPERATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMODELER_NESTED_MODEL_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* modeler error: {0}
	*
	*/
	@:overload @:public @:static public static function MODELER_NESTED_MODEL_ERROR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_DUPLICATE_FAULT_SOAP_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring fault "{0}" of operation "{1}", soap:fault name "{2}" is not unique
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_DUPLICATE_FAULT_SOAP_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_WRONG_SOAP_FAULT_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* name of soap:fault "{0}" doesn''t match the name of wsdl:fault "{1}" in operation "{2}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_WRONG_SOAP_FAULT_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_NOT_LITERAL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring document-style operation "{0}": parameters are not literal
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_NOT_LITERAL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_DOCUMENT_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": cannot handle document-style operations
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_DOCUMENT_STYLE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring encoded fault "{0}" of binding operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_RPCLITOPERATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid wsdl:operation "{0}": its a rpc-literal operation,  message part must refer to a schema type declaration
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_RPCLITOPERATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOM_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid operation "{0}", can''t generate java method. Parameter,customized name "{1}"  is a java keyword.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOM_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_BINDING_OPERATION_MULTIPLE_PART_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Check the abstract operation "{0}" binding, part "{1}" has multiple binding. Will try to generated artiffacts anyway...
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_BINDING_OPERATION_MULTIPLE_PART_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_PORT_SOAP_BINDING_12(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* SOAP port "{0}": uses a non-standard SOAP 1.2 binding.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_PORT_SOAP_BINDING_12(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_PORT_TYPE_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in portType operation "{1}" does not match any fault in the corresponding binding operation
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_PORT_TYPE_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_PART_NAME_NOT_ALLOWED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* name attribute on wsdl:part in Operation "{0}" is ignored. Its not allowed as per WS-I AP 1.0.
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_PART_NAME_NOT_ALLOWED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_MIME_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring mime:part, cannot find part "{0}" referenced by the mime:content in the wsdl:operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_MIME_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_OPERATION_MORE_THAN_ONE_PART_IN_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ingoring operation "{0}": more than one part bound to body
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_OPERATION_MORE_THAN_ONE_PART_IN_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_NON_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", can''t generate java method. Parameter: part "{2}" in wsdl:message "{1}", is a java keyword. Use customization to change the parameter name or change the wsdl:part name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_NON_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_FAULT_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault message "{0}" in binding operation "{1}" could not be resolved
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_FAULT_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_EMPTY_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" refers to message "{1}", but the message has no parts
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_EMPTY_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_RPCLIT_UNKOWNSCHEMATYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XML type "{0}" could not be resolved, XML to JAVA binding failed! Please check the wsdl:part "{1}" in the wsdl:message "{2}".
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_RPCLIT_UNKOWNSCHEMATYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_HEADERFAULT_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* part "{1}" not found for the header fault "{0}", in binding "{2}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_HEADERFAULT_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_BODY_PARTS_ATTRIBUTE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": cannot handle "parts" attribute of "soap:body" element
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_BODY_PARTS_ATTRIBUTE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_NON_UNIQUE_BODY_ERROR(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Non unique body parts! In a port, as per BP 1.1 R2710 operations must have unique operation signaure on the wire for successful dispatch. In port {0}, Operations "{1}" and "{2}" have the same request body block {3}. Try running wsimport with -extension switch, runtime will try to dispatch using SOAPAction
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_NON_UNIQUE_BODY_ERROR(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_SOAP_BINDING_MIXED_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring port "{0}", its not WS-I BP 1.1 compliant: the wsdl binding has mixed style, it must be rpc-literal or document-literal operation. try running wsimport with -extension switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_SOAP_BINDING_MIXED_STYLE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_MISSING_TYPE_ATTRIBUTE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Missing type attribute in mime:content in operation "{0}". part attribute must be present in mime:content declaration.
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_MISSING_TYPE_ATTRIBUTE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_EMPTY_INPUT_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": input message is empty
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_EMPTY_INPUT_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NO_PORTS_IN_SERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Service "{0}" does not contain any usable ports. try running wsimport with -extension switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NO_PORTS_IN_SERVICE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_PARAMETER_ORDER_TOO_MANY_UNMENTIONED_PARTS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* more than one part left out in the parameterOrder attribute of operation "{0}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_PARAMETER_ORDER_TOO_MANY_UNMENTIONED_PARTS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_INPUT_SOAP_BODY_MISSING_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* input message of binding operation "{0}" must specify a value for the "namespace" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_INPUT_SOAP_BODY_MISSING_NAMESPACE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of binding operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_RESPONSEBEAN_NOTFOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsimport failed to generate async response bean for operation: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_RESPONSEBEAN_NOTFOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_20_RPCENC_NOT_SUPPORTED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* rpc/encoded wsdl's are not supported in JAXWS 2.0.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_20_RPCENC_NOT_SUPPORTED() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": part "{1}" not found
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_PART_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in message "{0}", part "{1}" must specify a "element" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_ERROR_PARTS_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parts "{0}" not found in the message "{1}", wrong WSDL
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_ERROR_PARTS_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_FAULT_NOT_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring literal fault "{0}" of binding operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_FAULT_NOT_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_NOT_SUPPORTED_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": not request-response or one-way
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_NOT_SUPPORTED_STYLE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_MESSAGE_PART_MUST_HAVE_TYPE_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in message "{0}", part "{1}" must specify a "type" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_MESSAGE_PART_MUST_HAVE_TYPE_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_MULTIPLE_OUTPUT_PARAMETERS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* multiple "out" parameters in operation: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_MULTIPLE_OUTPUT_PARAMETERS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_MULTIPLE_PART_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* abstract operation "{0}" binding, part "{1}" has multiple binding.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_MULTIPLE_PART_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL document
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_MULTIPLE_MATCHING_OPERATIONS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in binding "{1}", operation "{0}" does not reference a unique operation in the corresponding port type
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_MULTIPLE_MATCHING_OPERATIONS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of binding operation "{1}": cannot resolve message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOMIZED_OPERATION_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", can''t generate java method ,customized name "{1}" of the wsdl:operation is a java keyword.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOMIZED_OPERATION_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of binding operation "{1}": not literal
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_INPUT_HEADER_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* input header "{1}" of binding operation "{0}" must specify a value for the "namespace" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_INPUT_HEADER_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_MISSING_INPUT_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* binding operation "{0}" must specify a name for its input message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_MISSING_INPUT_NAME(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_NON_SOAP_PORT_NO_ADDRESS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring port "{0}": no SOAP address specified. try running wsimport with -extension switch.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_NON_SOAP_PORT_NO_ADDRESS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_RESULT_IS_IN_OUT_PARAMETER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* result is "inout" parameter in operation: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_RESULT_IS_IN_OUT_PARAMETER(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADER_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* header "{0}" of binding operation "{1}": not found
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADER_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_ELEMENT_PART_INVALID_ELEMENT_MIME_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* The mime:content part refers to wsdl:part "{0}", defined using element attribute. Please make sure the mime type: "{1}" is appropriate to serialize XML.
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_ELEMENT_PART_INVALID_ELEMENT_MIME_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADER_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid header "{0}" of binding operation "{1}": not literal
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADER_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_MESAGE_PART_ELEMENT_KIND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsdl:part element referenced by mime:content part attribute: {0} must be defined using type attribute!
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_MESAGE_PART_ELEMENT_KIND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_NOT_ENCODED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring RPC-style operation "{0}": parameters are not encoded
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_NOT_ENCODED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NONCONFORMING_WSDL_TYPES() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Non conforming WS-I WSDL used for wsdl:types
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NONCONFORMING_WSDL_TYPES() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_MORE_THAN_ONE_PART_IN_INPUT_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": more than one part in input message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_MORE_THAN_ONE_PART_IN_INPUT_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_EMPTY_OUTPUT_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": output message is empty
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_EMPTY_OUTPUT_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_R_2716_R_2726(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* R2716/R2726 WSI-BasicProfile ver. 1.0, namespace attribute not allowed in doc/lit or rpc/lit for {0}: "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_R_2716_R_2726(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NO_SOAP_ADDRESS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* port "{0}" is not a SOAP port, it has no soap:address
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NO_SOAP_ADDRESS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_FAULTS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring faults declared by operation "{0}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_FAULTS(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_MISSING_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in operation "{1}" must specify a value for the "name" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_MISSING_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_WARNING_IGNORINGINVALID_HEADER_PART_NOT_DECLARED_IN_ROOT_PART(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Headers not in root mime:part with soap:body, ignoring headers in operation "{0}"
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_WARNING_IGNORINGINVALID_HEADER_PART_NOT_DECLARED_IN_ROOT_PART(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_ERROR_LOADING_JAVA_CLASS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Couldn't find class "{0}" for mime type "{1}"
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_ERROR_LOADING_JAVA_CLASS() : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_NOT_IN_PORT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in binding "{1}", operation "{0}" does not appear in the corresponding port type
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_NOT_IN_PORT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CONFLICT_STYLE_IN_WSI_MODE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": binding style and operation style are conflicting
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CONFLICT_STYLE_IN_WSI_MODE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_MISSING_PART_ATTRIBUTE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", missing part attribute in mime:content. part attribute must be present in mime:content declaration.
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_MISSING_PART_ATTRIBUTE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_SEARCH_SCHEMA_UNRECOGNIZED_TYPES(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* encountered {0} unrecognized type(s)
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_SEARCH_SCHEMA_UNRECOGNIZED_TYPES(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOMIZED_OPERATION_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid operation "{0}", can''t generate java method ,customized name "{1}" of the wsdl:operation is a java keyword.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOMIZED_OPERATION_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADER_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* header "{0}" of binding operation "{1}": cannot resolve message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADER_CANT_RESOLVE_MESSAGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in operation "{1}" must specify a value for the "namespace" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_PART_MORE_THAN_ONE_SOAP_BODY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}". The Multipart/Related structure has invalid root part: more than one soap:body parts found
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_PART_MORE_THAN_ONE_SOAP_BODY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_INCONSISTENT_DEFINITION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of operation "{1}": part not found
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_INCONSISTENT_DEFINITION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in operation "{1}" does not match any fault in the corresponding port type operation
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOM_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", can''t generate java method. Parameter,customized name "{1}" is a java keyword.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_CUSTOM_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_UNRECOGNIZED_SCHEMA_EXTENSION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring schema element (unsupported version): {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_UNRECOGNIZED_SCHEMA_EXTENSION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header fault "{0}", cannot find part "{1}" in binding "{2}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_NON_UNIQUE_BODY_WARNING(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Non unique body parts! In a port, as per BP 1.1 R2710 operations must have unique operation signaure on the wire for successful dispatch. In port {0}, Operations "{1}" and "{2}" have the same request body block {3}. Method dispatching may fail, runtime will try to dispatch using SOAPAction
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_NON_UNIQUE_BODY_WARNING(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid operation "{0}", can''t generate java method parameter. Local name of the wrapper child "{1}" in the global element "{2}" is a java keyword. Use customization to change the parameter name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableMIMEMODELER_INVALID_MIME_CONTENT_UNKNOWN_SCHEMA_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Unknown schema type: {1} for mime:content part: {0}
	*
	*/
	@:overload @:public @:static public static function MIMEMODELER_INVALID_MIME_CONTENT_UNKNOWN_SCHEMA_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_R_2716(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* R2716 WSI-BasicProfile ver. 1.0, namespace attribute not allowed in doc/lit for {0}: "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_R_2716(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of binding operation "{1}": not found
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_NOT_FOUND(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_TYPE_MESSAGE_PART(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": message part does not refer to a schema element declaration
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_TYPE_MESSAGE_PART(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_PARAMETER_ORDER_INVALID_PARAMETER_ORDER(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parameterOrder attribute on operation "{0}" is invalid, ignoring parameterOrder hint
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_PARAMETER_ORDER_INVALID_PARAMETER_ORDER(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_MISSING_OUTPUT_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* binding operation "{0}" must specify a name for its output message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_MISSING_OUTPUT_NAME(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid operation: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_HEADER_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* output header "{1}" of binding operation "{0}" must specify a value for the "namespace" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_HEADER_MISSING_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_PART_FROM_BODY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* header part: "{0}" already bound by soapbind:body, illegal to bind the part twice
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_PART_FROM_BODY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_NOT_SUPPORTED_STYLE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL, wsdl:operation "{0}" in wsdl:portType "{1}": not request-response or one-way
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_NOT_SUPPORTED_STYLE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_NOT_NC_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", it has illegal character ''{1}'' in its name. Its rpc-literal operation - jaxws won't be able to serialize it!
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_NOT_NC_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_PARAMETER_DIFFERENT_TYPES(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parameter "{0}" of operation "{1}" appears with different types in the input and output messages
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_PARAMETER_DIFFERENT_TYPES(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_FAULT_DOCUMENT_OPERATION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring fault "{0}" of document-style operation "{1}"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_FAULT_DOCUMENT_OPERATION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NONCONFORMING_WSDL_USE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Processing WS-I non conforming operation "{0}" with RPC-Style and SOAP-encoded
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NONCONFORMING_WSDL_USE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NON_SOAP_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* port "{0}": not a standard SOAP port. The generated artifacts may not work with JAXWS runtime.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NON_SOAP_PORT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_HEADERFAULT_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid headerfault "{0}" for header {1} in operation {2}: part must specify a "element" attribute
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_HEADERFAULT_MESSAGE_PART_MUST_HAVE_ELEMENT_DESCRIPTOR(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_STATE_MODELING_OPERATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid state while modeling operation: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_STATE_MODELING_OPERATION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_OPERATION_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", it''s java reserved word, can''t generate java method. Use customization to change the operation name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_OPERATION_NAME(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_NOT_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header "{0}" of binding operation "{1}": not SOAP-encoded
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_NOT_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_DUPLICATE_FAULT_PART_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring fault "{0}" of operation "{1}", part name "{2}" is not unique
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_DUPLICATE_FAULT_PART_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_OPERATION_MORE_THAN_ONE_PART_IN_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* operation "{0}": more than one part bound to body
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_OPERATION_MORE_THAN_ONE_PART_IN_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_SOAP_BINDING_12(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring SOAP port "{0}": it uses non-standard SOAP 1.2 binding.
	* You must specify the "-extension" option to use this binding.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_SOAP_BINDING_12(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_FAULT_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* fault "{0}" in operation "{1}" matches more than one fault in the corresponding port type operation
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_FAULT_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_MISSING_SOAP_BODY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* output message of binding operation "{0}" does not have a SOAP body extension
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_INVALID_BINDING_OPERATION_OUTPUT_MISSING_SOAP_BODY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring header fault part="{0}" message="{1}" of operation {2}, use attribute MUST be "literal"
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_HEADER_FAULT_NOT_LITERAL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_MORE_THAN_ONE_PART_IN_OUTPUT_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring operation "{0}": more than one part in output message
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_CANNOT_HANDLE_MORE_THAN_ONE_PART_IN_OUTPUT_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_NO_OPERATIONS_IN_PORT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Port "{0}" does not contain any usable operations
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_NO_OPERATIONS_IN_PORT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring operation "{0}", can''t generate java method parameter. Local name of the wrapper child "{1}" in the global element "{2}" is a java keyword. Use customization to change the parameter name.
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_WARNING_IGNORING_OPERATION_JAVA_RESERVED_WORD_NOT_ALLOWED_WRAPPER_STYLE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSDLMODELER_UNSOLVABLE_NAMING_CONFLICTS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* the following naming conflicts occurred: {0}
	*
	*/
	@:overload @:public @:static public static function WSDLMODELER_UNSOLVABLE_NAMING_CONFLICTS(arg0 : Dynamic) : String;
	
	
}
