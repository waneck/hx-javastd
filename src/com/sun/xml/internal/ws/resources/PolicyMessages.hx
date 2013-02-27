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
extern class PolicyMessages
{
	@:overload public static function localizableWSP_1007_POLICY_EXCEPTION_WHILE_FINISHING_PARSING_WSDL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1007: Policy exception occured when finishing WSDL parsing.
	*
	*/
	@:overload public static function WSP_1007_POLICY_EXCEPTION_WHILE_FINISHING_PARSING_WSDL() : String;
	
	@:overload public static function localizableWSP_1002_UNABLE_TO_MARSHALL_POLICY_OR_POLICY_REFERENCE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1002: Unable to marshall policy or it's reference. See original exception for more details.
	*
	*/
	@:overload public static function WSP_1002_UNABLE_TO_MARSHALL_POLICY_OR_POLICY_REFERENCE() : String;
	
	@:overload public static function localizableWSP_1015_SERVER_SIDE_ASSERTION_VALIDATION_FAILED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1015: Server side assertion validation failed for "{0}" assertion. Assertion was evaluated as "{1}".
	*
	*/
	@:overload public static function WSP_1015_SERVER_SIDE_ASSERTION_VALIDATION_FAILED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1017_MAP_UPDATE_FAILED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1048: Policy map setup failed - exception occured whily trying to modify policy map content.
	*
	*/
	@:overload public static function WSP_1017_MAP_UPDATE_FAILED() : String;
	
	@:overload public static function localizableWSP_1010_NO_POLICIES_DEFINED() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1010: No policies defined.
	*
	*/
	@:overload public static function WSP_1010_NO_POLICIES_DEFINED() : String;
	
	@:overload public static function localizableWSP_1008_NOT_MARSHALLING_WSDL_SUBJ_NULL(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1008: Not marshalling policy, wsdl subject is null for "{0}".
	*
	*/
	@:overload public static function WSP_1008_NOT_MARSHALLING_WSDL_SUBJ_NULL(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1009_NOT_MARSHALLING_ANY_POLICIES_POLICY_MAP_IS_NULL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1009: Policy map was null, not marshalling any policies.
	*
	*/
	@:overload public static function WSP_1009_NOT_MARSHALLING_ANY_POLICIES_POLICY_MAP_IS_NULL() : String;
	
	@:overload public static function localizableWSP_1020_DUPLICATE_ID(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1020: Found two policies in one document with the same id: "{0}".
	*
	*/
	@:overload public static function WSP_1020_DUPLICATE_ID(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1003_UNABLE_TO_CHECK_ELEMENT_NAME(arg0 : Dynamic, arg1 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1003: Unable to check element name for class "{0}" and WSDL name "{1}".
	*
	*/
	@:overload public static function WSP_1003_UNABLE_TO_CHECK_ELEMENT_NAME(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1013_EXCEPTION_WHEN_READING_POLICY_ELEMENT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1013: Exception occured while reading policy element. Following was read so far: {0}.
	*
	*/
	@:overload public static function WSP_1013_EXCEPTION_WHEN_READING_POLICY_ELEMENT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1006_POLICY_MAP_EXTENDER_CAN_NOT_BE_NULL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1006: Policy map extender can not be null.
	*
	*/
	@:overload public static function WSP_1006_POLICY_MAP_EXTENDER_CAN_NOT_BE_NULL() : String;
	
	@:overload public static function localizableWSP_1018_FAILED_TO_MARSHALL_POLICY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1018: Failed to marshal policy "{0}".
	*
	*/
	@:overload public static function WSP_1018_FAILED_TO_MARSHALL_POLICY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1005_POLICY_REFERENCE_DOES_NOT_EXIST(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1005: Failed to find policy referenced by URI "{0}".
	*
	*/
	@:overload public static function WSP_1005_POLICY_REFERENCE_DOES_NOT_EXIST(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1016_POLICY_ID_NULL_OR_DUPLICATE(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1016: The policy is not added because it has no ID or a policy with the same ID was already added: {0}.
	*
	*/
	@:overload public static function WSP_1016_POLICY_ID_NULL_OR_DUPLICATE(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1014_CAN_NOT_FIND_POLICY(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1014: Can not find policy "{0}" that is referenced in from the WSDL. Please, check your policy references in the WSDL.
	*
	*/
	@:overload public static function WSP_1014_CAN_NOT_FIND_POLICY(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1012_FAILED_CONFIGURE_WSDL_MODEL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1012: Failed to configure wsdl model.
	*
	*/
	@:overload public static function WSP_1012_FAILED_CONFIGURE_WSDL_MODEL() : String;
	
	@:overload public static function localizableWSP_1011_FAILED_TO_RETRIEVE_EFFECTIVE_POLICY_FOR_SUBJECT(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1011: Failed to retrieve effective policy for subject: {0}.
	*
	*/
	@:overload public static function WSP_1011_FAILED_TO_RETRIEVE_EFFECTIVE_POLICY_FOR_SUBJECT(arg0 : Dynamic) : String;
	
	@:overload public static function localizableWSP_1019_CREATE_EMPTY_POLICY_MAP() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1019: Failed to find any configuration file. Creating new empty policy map.
	*
	*/
	@:overload public static function WSP_1019_CREATE_EMPTY_POLICY_MAP() : String;
	
	@:overload public static function localizableWSP_1001_XML_EXCEPTION_WHEN_PROCESSING_POLICY_REFERENCE() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1001: XMLStreamException occured when reading policy reference element.
	*
	*/
	@:overload public static function WSP_1001_XML_EXCEPTION_WHEN_PROCESSING_POLICY_REFERENCE() : String;
	
	@:overload public static function localizableWSP_1004_POLICY_URIS_CAN_NOT_BE_NULL() : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* WSP1004: Policy URIs can not be null.
	*
	*/
	@:overload public static function WSP_1004_POLICY_URIS_CAN_NOT_BE_NULL() : String;
	
	
}
