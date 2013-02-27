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
extern class ModelMessages
{
	@:overload public static function localizableMODEL_DUPLICATE_SERVICE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate service added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_SERVICE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_NESTED_MODEL_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* model error: {0}
	*
	*/
	@:overload public static function MODEL_NESTED_MODEL_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_DUPLICATE_PORTTYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate PortType added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_PORTTYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_EXCEPTION_NOTUNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to generate Java signature: duplicate exception names {0}. Use JAXWS binding customization to rename the wsdl:part "{1}"
	*
	*/
	@:overload public static function MODEL_EXCEPTION_NOTUNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_WILDCARD_ALL_COMPOSITOR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* xsd:all compositor not supported for the wildcard in schema type: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_WILDCARD_ALL_COMPOSITOR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_SIMPLE_TYPE_WITH_FACETS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* facet "{0}" not supported on simple type: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_SIMPLE_TYPE_WITH_FACETS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_UNSUPPORTED_TYPE_ANONYMOUS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported anonymous type ({0})
	*
	*/
	@:overload public static function MODEL_SCHEMA_UNSUPPORTED_TYPE_ANONYMOUS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_COMPLEX_TYPE_SIMPLE_CONTENT_RESERVED_NAME(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid attribute name: "_value" in complexType: "{0}", _value is JAXWS reserved name, this name is generated in the generated javabean class to hold content value in the generated javabean class for complexType/simpleContent.
	*
	*/
	@:overload public static function MODEL_COMPLEX_TYPE_SIMPLE_CONTENT_RESERVED_NAME(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_UNION_NOT_SUPPORTED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* simpleType: "{0}" derivation by xsd:union not supported
	*
	*/
	@:overload public static function MODEL_SCHEMA_UNION_NOT_SUPPORTED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_JAXB_EXCEPTION_MESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_JAXB_EXCEPTION_MESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_ID(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid id "{1} in model document (line {0})
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_ID(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_INVALID_MESSAGE_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid message type: {0}
	*
	*/
	@:overload public static function MODEL_INVALID_MESSAGE_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableCONSOLE_ERROR_REPORTER_UNKNOWN_LOCATION() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unknown location
	*
	*/
	@:overload public static function CONSOLE_ERROR_REPORTER_UNKNOWN_LOCATION() : String;
	
	@:overload public static function localizableMODEL_EXPORTER_UNSUPPORTED_CLASS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* model exporter: unsupported class: {0}
	*
	*/
	@:overload public static function MODEL_EXPORTER_UNSUPPORTED_CLASS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_ENCODER_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* no encoder found for simpleType: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_ENCODER_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_ELEMENT_NOT_FOUND(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Element "{0}" not found.
	*
	*/
	@:overload public static function MODEL_SCHEMA_ELEMENT_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_UNIQUENESS_JAVASTRUCTURETYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* uniqueness constraint violation, duplicate member "{0}" added to JavaStructureType "{1}"
	*
	*/
	@:overload public static function MODEL_UNIQUENESS_JAVASTRUCTURETYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SAXPARSER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0}
	* {1}
	*
	*/
	@:overload public static function MODEL_SAXPARSER_EXCEPTION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_DUPLICATE_FAULTMESSAGE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate fault message added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_FAULTMESSAGE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_PROPERTY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid property in model document (line {0}
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_PROPERTY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_IMPORTER_SYNTAX_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* syntax error in model document (line {0})
	*
	*/
	@:overload public static function MODEL_IMPORTER_SYNTAX_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_UNSUPPORTED_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported type ({0}): "{1}" (namespace: {2})
	*
	*/
	@:overload public static function MODEL_SCHEMA_UNSUPPORTED_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_JAVA_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* no java mapping for simpleType: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_JAVA_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_LIST_NOT_SUPPORTED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* simpleType: "{0}" derivation by xsd:list not supported
	*
	*/
	@:overload public static function MODEL_SCHEMA_LIST_NOT_SUPPORTED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_ARRAYWRAPPER_NO_PARENT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* LiteralArrayWrapper cannot have a parent type
	*
	*/
	@:overload public static function MODEL_ARRAYWRAPPER_NO_PARENT() : String;
	
	@:overload public static function localizableMODEL_DUPLICATE_PART(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate part added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_PART(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_DUPLICATE_OPERATION(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate Operation added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_OPERATION(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_PARENT_TYPE_ALREADY_SET(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parent of type "{0}" already set to "{1}", new value = "{2}"
	*
	*/
	@:overload public static function MODEL_PARENT_TYPE_ALREADY_SET(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_ARRAYWRAPPER_NO_SUBTYPES() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* LiteralArrayWrapper cannot have subtypes
	*
	*/
	@:overload public static function MODEL_ARRAYWRAPPER_NO_SUBTYPES() : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_LITERAL_IN_ENUMERATION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid literal "{0}" in enumeration "{1}" (namespace: {2})
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_LITERAL_IN_ENUMERATION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_UNSUPPORTED_SCHEMA_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported schema type: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_UNSUPPORTED_SCHEMA_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_MINOR_MINOR_OR_PATCH_VERSION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* model version "{1}" newer than runtime version "{2}" (line {0}): need to upgrade to a newer runtime
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_MINOR_MINOR_OR_PATCH_VERSION(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_CIRCULARITY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* circularity detected in schema: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_CIRCULARITY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_NOT_IMPLEMENTED_GENERATING_SOAP_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported XML Schema feature: "{0}" in component {1}, mapping it to javax.xml.soap.SOAPElement
	*
	*/
	@:overload public static function MODEL_SCHEMA_NOT_IMPLEMENTED_GENERATING_SOAP_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_ARRAYWRAPPER_MEMBER_ALREADY_SET() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* LiteralArrayWrapper element member already set.
	*
	*/
	@:overload public static function MODEL_ARRAYWRAPPER_MEMBER_ALREADY_SET() : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_CLASS(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid class name "{1}" in model document (line {0})
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_CLASS(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_IMPORTER_NON_MODEL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* not a valid model document
	*
	*/
	@:overload public static function MODEL_IMPORTER_NON_MODEL() : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_VERSION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid version "{1}" in model document (line {0})
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_VERSION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_NAMESPACE_URI(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid simpleType: "{0}", had null namespaceURI
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_NAMESPACE_URI(arg0 : Dynamic) : String;
	
	@:overload public static function localizableCONSOLE_ERROR_REPORTER_LINE_X_OF_Y(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	*   line {0} of {1}
	*
	*/
	@:overload public static function CONSOLE_ERROR_REPORTER_LINE_X_OF_Y(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_PARAMETER_NOTUNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to generate Java signature: duplicate parameter name "{0}". Try one of these
	*  1. Use JAXWS binding customization to rename the wsdl:part "{1}"
	*  2. Run wsimport with -extension switch.
	*
	*/
	@:overload public static function MODEL_PARAMETER_NOTUNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_SIMPLE_TYPE_INVALID_ITEM_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in simpleType: "{0}", itemType "{1}" can not be derived by list
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_SIMPLE_TYPE_INVALID_ITEM_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_DUPLICATE_PROPERTY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* duplicate property added to model: {0}
	*
	*/
	@:overload public static function MODEL_DUPLICATE_PROPERTY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_UNIQUENESS() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* uniqueness constraint violation
	*
	*/
	@:overload public static function MODEL_UNIQUENESS() : String;
	
	@:overload public static function localizable_002F_002F_REPLACEMENT() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* for Uxxx codes
	*
	*/
	@:overload public static function _002F_002F_REPLACEMENT() : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_ITEM_LITERAL_TYPE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* in simpleType: "{0}", xsd:list itemType "{1}" is invalid
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_SIMPLE_TYPE_NO_ITEM_LITERAL_TYPE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_SIMPLE_TYPE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid simpleType: "{0}"
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_SIMPLE_TYPE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_ARRAYWRAPPER_ONLY_ONE_MEMBER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* LiteralArrayWrapper may only have one element member.
	*
	*/
	@:overload public static function MODEL_ARRAYWRAPPER_ONLY_ONE_MEMBER() : String;
	
	@:overload public static function localizableMODEL_IMPORTER_INVALID_LITERAL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid literal value in model document (line {0})
	*
	*/
	@:overload public static function MODEL_IMPORTER_INVALID_LITERAL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_PARAMETER_NOTUNIQUE_WRAPPER(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* Failed to generate Java signature: duplicate parameter name "{0}". Try one of these
	*  1. Use JAXWS binding customization to rename the wsdl:part "{1}"
	*  2. Run wsimport with -extension switch.
	*  3. This is wrapper style operation, to resolve parameter name conflict, you can also try disabling wrapper style by using <jaxws:enableWrapperStyle>false</jaxws:enableWrapperStyle> wsdl customization.
	*
	*/
	@:overload public static function MODEL_PARAMETER_NOTUNIQUE_WRAPPER(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_NOT_IMPLEMENTED(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* unsupported XML Schema feature ({0})
	*
	*/
	@:overload public static function MODEL_SCHEMA_NOT_IMPLEMENTED(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_SCHEMA_INVALID_LITERAL_IN_ENUMERATION_ANONYMOUS(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* invalid literal "{0}" in anonymous enumeration
	*
	*/
	@:overload public static function MODEL_SCHEMA_INVALID_LITERAL_IN_ENUMERATION_ANONYMOUS(arg0 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_ARRAYWRAPPER_NO_CONTENT_MEMBER() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* LiteralArrayWrapper cannot have a content member
	*
	*/
	@:overload public static function MODEL_ARRAYWRAPPER_NO_CONTENT_MEMBER() : String;
	
	@:overload public static function localizableMODEL_PART_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parts in wsdl:message "{0}", reference "{1}", they must reference unique global elements.
	*
	*/
	@:overload public static function MODEL_PART_NOT_UNIQUE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableMODEL_PARENT_FAULT_ALREADY_SET(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* parent of fault "{0}" already set to "{1}", new value = "{2}"
	*
	*/
	@:overload public static function MODEL_PARENT_FAULT_ALREADY_SET(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	
}
