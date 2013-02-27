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
extern class WsdlMessages
{
	@:overload public static function localizablePARSING_ELEMENT_EXPECTED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unexpected non-element found
	*
	*/
	@:overload public static function PARSING_ELEMENT_EXPECTED() : String;
	
	@:overload public static function localizableENTITY_NOT_FOUND_BINDING(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsdl:binding "{0}" referenced by wsdl:port "{1}", but it's not found in the wsdl
	*
	*/
	@:overload public static function ENTITY_NOT_FOUND_BINDING(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_UNABLE_TO_GET_METADATA(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0}
	*
	* {1}
	*
	*/
	@:overload public static function PARSING_UNABLE_TO_GET_METADATA(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_PARSE_FAILED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  Failed to parse the WSDL.
	*
	*/
	@:overload public static function PARSING_PARSE_FAILED() : String;
	
	@:overload public static function localizableVALIDATION_INVALID_PREFIX(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* undeclared namespace prefix: "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_PREFIX(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid value "{1}" for attribute "{0}"
	*
	*/
	@:overload public static function PARSING_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid value "{1}" for attribute "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_ATTRIBUTE_VALUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_RANGE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid range found (min: {0}, max: {1})
	*
	*/
	@:overload public static function VALIDATION_INVALID_RANGE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_TAG(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* expected element "{1}", found "{0}"
	*
	*/
	@:overload public static function PARSING_INVALID_TAG(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableENTITY_NOT_FOUND_PORT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* wsdl:portType "{0}" referenced by wsdl:binding "{1}", but it's not found in the wsdl
	*
	*/
	@:overload public static function ENTITY_NOT_FOUND_PORT_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_MISSING_REQUIRED_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing required attribute "{1}" of element "{0}"
	*
	*/
	@:overload public static function PARSING_MISSING_REQUIRED_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid element: "{0}" (in namespace "{1}")
	*
	*/
	@:overload public static function PARSING_INVALID_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid element: "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_TWO_VERSION_ATTRIBUTES() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  Both jaxws:version and version are present
	*
	*/
	@:overload public static function INTERNALIZER_TWO_VERSION_ATTRIBUTES() : String;
	
	@:overload public static function localizableVALIDATION_DUPLICATE_PART_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL, duplicate parts in a wsdl:message is not allowed.
	* wsdl:message {0} has a duplicated part name: "{1}"
	*
	*/
	@:overload public static function VALIDATION_DUPLICATE_PART_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_WSDL_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL element: "{0}"
	*
	*/
	@:overload public static function PARSING_INVALID_WSDL_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_COMPLEX_TYPE_IN_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid element: "{1}", has named complexType: "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_COMPLEX_TYPE_IN_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_NON_WHITESPACE_TEXT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* found unexpected non-whitespace text: "{0}"
	*
	*/
	@:overload public static function PARSING_NON_WHITESPACE_TEXT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_TARGET_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  No target found for the wsdlLocation: {0}
	*
	*/
	@:overload public static function INTERNALIZER_TARGET_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_NOT_SIMPLE_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* not a simple type: "{0}"
	*
	*/
	@:overload public static function VALIDATION_NOT_SIMPLE_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_SAX_EXCEPTION_WITH_SYSTEM_ID(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL file! failed to parse document at "{0}"
	*
	*/
	@:overload public static function PARSING_SAX_EXCEPTION_WITH_SYSTEM_ID(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_REQUIRED_EXTENSIBILITY_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unknown required extensibility element "{0}" (in namespace "{1}")
	*
	*/
	@:overload public static function PARSING_REQUIRED_EXTENSIBILITY_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableENTITY_NOT_FOUND_BY_ID(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid entity id: "{0}"
	*
	*/
	@:overload public static function ENTITY_NOT_FOUND_BY_ID(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_EXCLUSIVE_ATTRIBUTES(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* exclusive attributes: "{0}", "{1}"
	*
	*/
	@:overload public static function VALIDATION_EXCLUSIVE_ATTRIBUTES(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_MISSING_REQUIRED_SUB_ENTITY(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing required sub-entity "{0}" of element "{1}"
	*
	*/
	@:overload public static function VALIDATION_MISSING_REQUIRED_SUB_ENTITY(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_INCORRECT_VERSION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  JAXWS version attribute must be "2.0"
	*
	*/
	@:overload public static function INTERNALIZER_INCORRECT_VERSION() : String;
	
	@:overload public static function localizableLOCALIZED_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0}
	*
	*/
	@:overload public static function LOCALIZED_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableENTITY_DUPLICATE_WITH_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate "{0}" entity: "{1}"
	*
	*/
	@:overload public static function ENTITY_DUPLICATE_WITH_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_ONLY_ONE_OF_ELEMENT_OR_TYPE_REQUIRED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* only one of the "element" or "type" attributes is allowed in part "{0}"
	*
	*/
	@:overload public static function PARSING_ONLY_ONE_OF_ELEMENT_OR_TYPE_REQUIRED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_UNSUPPORTED_USE_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "Use of SOAP Encoding is not supported.
	* SOAP extension element on line {0} in {1} has use="encoded" "
	*
	*/
	@:overload public static function VALIDATION_UNSUPPORTED_USE_ENCODED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INCORRECT_ROOT_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* expected root element "{2}" (in namespace "{3}"), found element "{0}" (in namespace "{1}")
	*
	*/
	@:overload public static function PARSING_INCORRECT_ROOT_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload public static function localizableTRY_WITH_MEX(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0}
	*
	* retrying with MEX...
	*
	*/
	@:overload public static function TRY_WITH_MEX(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_MISSING_REQUIRED_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing required attribute "{0}" of element "{1}"
	*
	*/
	@:overload public static function VALIDATION_MISSING_REQUIRED_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_X_PATH_EVAULATES_TO_TOO_MANY_TARGETS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XPath evaluation of "{0}" results in too many ({1}) target nodes
	*
	*/
	@:overload public static function INTERNALIZER_X_PATH_EVAULATES_TO_TOO_MANY_TARGETS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_IO_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parsing failed: {0}
	*
	*/
	@:overload public static function PARSING_IO_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSER_NOT_A_BINDING_FILE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  not an external binding file. The root element must be '{'http://java.sun.com/xml/ns/jaxws'}'bindings but it is '{'{0}'}'{1}
	*
	*/
	@:overload public static function PARSER_NOT_A_BINDING_FILE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_UNKNOWN_NAMESPACE_PREFIX(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* undeclared namespace prefix: "{0}"
	*
	*/
	@:overload public static function PARSING_UNKNOWN_NAMESPACE_PREFIX(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_FACTORY_CONFIG_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL file! parsing failed: {0}
	*
	*/
	@:overload public static function PARSING_FACTORY_CONFIG_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_MISSING_REQUIRED_PROPERTY(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* missing required property "{0}" of element "{1}"
	*
	*/
	@:overload public static function VALIDATION_MISSING_REQUIRED_PROPERTY(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_OPERATION_STYLE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* operation "{0}" has an invalid style
	*
	*/
	@:overload public static function PARSING_INVALID_OPERATION_STYLE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_X_PATH_EVALUATION_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XPath error: {0}
	*
	*/
	@:overload public static function INTERNALIZER_X_PATH_EVALUATION_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_TOKEN(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid token "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_TOKEN(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_SUB_ENTITY(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid sub-element "{0}" of element "{1}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_SUB_ENTITY(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_SHOULD_NOT_HAPPEN(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* internal error ("{0}")
	*
	*/
	@:overload public static function VALIDATION_SHOULD_NOT_HAPPEN(arg0 : Dynamic) : String;
	
	@:overload public static function localizableABSTRACT_REFERENCE_FINDER_IMPL_UNABLE_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  Unable to parse "{0}" : {1}
	*
	*/
	@:overload public static function ABSTRACT_REFERENCE_FINDER_IMPL_UNABLE_TO_PARSE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWARNING_FAULT_EMPTY_ACTION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring empty Action in "{0}" {1} element of "{2}" operation, using default instead
	*
	*/
	@:overload public static function WARNING_FAULT_EMPTY_ACTION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_EXTENSION_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid extension element: "{0}" (in namespace "{1}")
	*
	*/
	@:overload public static function PARSING_INVALID_EXTENSION_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_X_PATH_EVALUATES_TO_NON_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XPath evaluation of "{0}" needs to result in an element.
	*
	*/
	@:overload public static function INTERNALIZER_X_PATH_EVALUATES_TO_NON_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_X_PATH_EVALUATES_TO_NO_TARGET(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* XPath evaluation of "{0}" results in an empty target node
	*
	*/
	@:overload public static function INTERNALIZER_X_PATH_EVALUATES_TO_NO_TARGET(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_SAX_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL file! parsing failed: {0}
	*
	*/
	@:overload public static function PARSING_SAX_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_CUSTOMIZATION_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Ignoring customization: "{0}", because it has no namespace. It must belong to the customization namespace.
	*
	*/
	@:overload public static function INVALID_CUSTOMIZATION_NAMESPACE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid attribute "{0}" of element "{1}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_ATTRIBUTE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_PARSER_CONFIG_EXCEPTION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid WSDL file! parsing failed: {0}
	*
	*/
	@:overload public static function PARSING_PARSER_CONFIG_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_ONLY_ONE_TYPES_ALLOWED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* only one "types" element allowed in "{0}"
	*
	*/
	@:overload public static function PARSING_ONLY_ONE_TYPES_ALLOWED(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_URI(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid URI: {0}
	*
	*/
	@:overload public static function PARSING_INVALID_URI(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INCORRECT_TARGET_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* target namespace is incorrect (expected: {1}, found: {0})
	*
	*/
	@:overload public static function VALIDATION_INCORRECT_TARGET_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableENTITY_NOT_FOUND_BY_Q_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} "{1}" not found in the wsdl: {2}
	*
	*/
	@:overload public static function ENTITY_NOT_FOUND_BY_Q_NAME(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL {0}, expected {1} found {2} at (line {3})
	*
	*/
	@:overload public static function INVALID_WSDL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_UNSUPPORTED_SCHEMA_FEATURE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported XML Schema feature: "{0}"
	*
	*/
	@:overload public static function VALIDATION_UNSUPPORTED_SCHEMA_FEATURE(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_UNKNOWN_IMPORTED_DOCUMENT_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* imported document is of unknown type: {0}
	*
	*/
	@:overload public static function PARSING_UNKNOWN_IMPORTED_DOCUMENT_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_IO_EXCEPTION_WITH_SYSTEM_ID(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* failed to parse document at "{0}"
	*
	*/
	@:overload public static function PARSING_IO_EXCEPTION_WITH_SYSTEM_ID(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_AMBIGUOUS_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ambiguous operation name: "{0}"
	*
	*/
	@:overload public static function VALIDATION_AMBIGUOUS_NAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_WSDL_NOT_DEFAULT_NAMESPACE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* default namespace must be "{0}"
	*
	*/
	@:overload public static function PARSING_WSDL_NOT_DEFAULT_NAMESPACE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_DUPLICATED_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicated element: "{0}"
	*
	*/
	@:overload public static function VALIDATION_DUPLICATED_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_TARGET_NOT_AN_ELEMENT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  Target node is not an element
	*
	*/
	@:overload public static function INTERNALIZER_TARGET_NOT_AN_ELEMENT() : String;
	
	@:overload public static function localizableWARNING_INPUT_OUTPUT_EMPTY_ACTION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* ignoring empty Action in {0} element of "{1}" operation, using default instead
	*
	*/
	@:overload public static function WARNING_INPUT_OUTPUT_EMPTY_ACTION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_INVALID_TAG_NS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic, arg4 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Invalid WSDL at {4}: expected element "{2}" (in namespace "{3}"), found element "{0}" (in namespace "{1}")
	*
	*/
	@:overload public static function PARSING_INVALID_TAG_NS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic, arg4 : Dynamic) : String;
	
	@:overload public static function localizableINVALID_WSDL_WITH_DOOC(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "Not a WSDL document: {0}, it gives "{1}", retrying with MEX..."
	*
	*/
	@:overload public static function INVALID_WSDL_WITH_DOOC(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_NOT_AWSDL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to get WSDL components, probably {0} is not a valid WSDL file.
	*
	*/
	@:overload public static function PARSING_NOT_AWSDL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableENTITY_DUPLICATE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate entity: "{0}"
	*
	*/
	@:overload public static function ENTITY_DUPLICATE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWARNING_WSI_R_2004() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Not a WSI-BP compliant WSDL (R2001, R2004). xsd:import must not import XML Schema definitions embedded inline within the WSDL document.
	*
	*/
	@:overload public static function WARNING_WSI_R_2004() : String;
	
	@:overload public static function localizableWARNING_WSI_R_2003() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Not a WSI-BP compliant WSDL (R2003). xsd:import must only be used inside xsd:schema elements.
	*
	*/
	@:overload public static function WARNING_WSI_R_2003() : String;
	
	@:overload public static function localizableWARNING_WSI_R_2002(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Not a WSI-BP compliant WSDL (R2002). wsdl:import must not be used to import XML Schema embedded in the WSDL document. Expected wsdl namespace: {0}, found: {1}
	*
	*/
	@:overload public static function WARNING_WSI_R_2002(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_ELEMENT_OR_TYPE_REQUIRED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* warning: part {0} is ignored, either the "element" or the "type" attribute is required in part "{0}"
	*
	*/
	@:overload public static function PARSING_ELEMENT_OR_TYPE_REQUIRED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWARNING_WSI_R_2001() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Not a WSI-BP compliant WSDL (R2001, R2002). wsdl:import must import only WSDL documents. It's trying to import: "{0}"
	*
	*/
	@:overload public static function WARNING_WSI_R_2001() : String;
	
	@:overload public static function localizableFILE_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is unreachable
	*
	*/
	@:overload public static function FILE_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableVALIDATION_INVALID_SIMPLE_TYPE_IN_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid element: "{1}", has named simpleType: "{0}"
	*
	*/
	@:overload public static function VALIDATION_INVALID_SIMPLE_TYPE_IN_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_ONLY_ONE_DOCUMENTATION_ALLOWED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* only one "documentation" element allowed in "{0}"
	*
	*/
	@:overload public static function PARSING_ONLY_ONE_DOCUMENTATION_ALLOWED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_VERSION_NOT_PRESENT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  JAXWS version attribute must be present
	*
	*/
	@:overload public static function INTERNALIZER_VERSION_NOT_PRESENT() : String;
	
	@:overload public static function localizableFAILED_NOSERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* failed.noservice=Could not find wsdl:service in the provided WSDL(s):
	*
	* {0} At least one WSDL with at least one service definition needs to be provided.
	*
	*/
	@:overload public static function FAILED_NOSERVICE(arg0 : Dynamic) : String;
	
	@:overload public static function localizablePARSING_TOO_MANY_ELEMENTS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* too many "{0}" elements under "{1}" element "{2}"
	*
	*/
	@:overload public static function PARSING_TOO_MANY_ELEMENTS(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableINTERNALIZER_INCORRECT_SCHEMA_REFERENCE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*  "{0}" is not a part of this compilation. Is this a mistake for "{1}"?
	*
	*/
	@:overload public static function INTERNALIZER_INCORRECT_SCHEMA_REFERENCE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	
}
