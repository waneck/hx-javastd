package com.sun.xml.internal.ws.policy.privateutil;
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
extern class LocalizationMessages
{
	@:overload @:public @:static public static function localizableWSP_0017_UNABLE_TO_ACCESS_POLICY_SOURCE_MODEL_PLUS_REASON(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0017: Unable to access policy source model identified by URI: {0}
	* Detailed reason: {1}
	*
	*/
	@:overload @:public @:static public static function WSP_0017_UNABLE_TO_ACCESS_POLICY_SOURCE_MODEL_PLUS_REASON(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0028_SERVICE_PROVIDER_COULD_NOT_BE_INSTANTIATED(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0028: Service provider {0} could not be instantiated
	*
	*/
	@:overload @:public @:static public static function WSP_0028_SERVICE_PROVIDER_COULD_NOT_BE_INSTANTIATED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0081_UNABLE_TO_INSERT_CHILD(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0081: Failed to insert child node ''{1}'' into queue ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0081_UNABLE_TO_INSERT_CHILD(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0018_UNABLE_TO_ACCESS_POLICY_SOURCE_MODEL(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0018: Unable to access policy source model identified by URI: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0018_UNABLE_TO_ACCESS_POLICY_SOURCE_MODEL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0090_UNEXPECTED_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0090: Unexpected element <{0}> at location {1}
	*
	*/
	@:overload @:public @:static public static function WSP_0090_UNEXPECTED_ELEMENT(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0043_POLICY_MODEL_TRANSLATION_ERROR_INPUT_PARAM_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0043: Policy model translation error:  Input policy source model parameter is null
	*
	*/
	@:overload @:public @:static public static function WSP_0043_POLICY_MODEL_TRANSLATION_ERROR_INPUT_PARAM_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0055_NO_ALTERNATIVE_COMBINATIONS_CREATED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0055: No alternative combinations created: Returning "nothing allowed" policy
	*
	*/
	@:overload @:public @:static public static function WSP_0055_NO_ALTERNATIVE_COMBINATIONS_CREATED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0072_DIGEST_MUST_NOT_BE_NULL_WHEN_ALG_DEFINED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0072: Digest must not be null if the digest algorithm is defined
	*
	*/
	@:overload @:public @:static public static function WSP_0072_DIGEST_MUST_NOT_BE_NULL_WHEN_ALG_DEFINED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0016_UNABLE_TO_CLONE_POLICY_SOURCE_MODEL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0016: Unable to clone input policy source model
	*
	*/
	@:overload @:public @:static public static function WSP_0016_UNABLE_TO_CLONE_POLICY_SOURCE_MODEL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0058_MULTIPLE_POLICY_IDS_NOT_ALLOWED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0058: Multiple identifiers of policy expression detected. Single policy expression must not contain both wsu:Id and xml:id identifiers at once
	*
	*/
	@:overload @:public @:static public static function WSP_0058_MULTIPLE_POLICY_IDS_NOT_ALLOWED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0061_METHOD_INVOCATION_FAILED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0061: Method invocation failed (class={0}, method={1}, parameters={2})
	*
	*/
	@:overload @:public @:static public static function WSP_0061_METHOD_INVOCATION_FAILED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0048_POLICY_ELEMENT_EXPECTED_FIRST() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0048: Failed to unmarshal policy expression. Expected 'Policy' as a first XML element
	*
	*/
	@:overload @:public @:static public static function WSP_0048_POLICY_ELEMENT_EXPECTED_FIRST() : String;
	
	@:overload @:public @:static public static function localizableWSP_0068_FAILED_TO_UNMARSHALL_POLICY_EXPRESSION() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0068: Failed to unmarshal policy expression
	*
	*/
	@:overload @:public @:static public static function WSP_0068_FAILED_TO_UNMARSHALL_POLICY_EXPRESSION() : String;
	
	@:overload @:public @:static public static function localizableWSP_0029_SERVICE_PORT_OPERATION_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0029: Parameters "service", "port" and "operation" must not be null. (service={0}, port={1}, operation={2})
	*
	*/
	@:overload @:public @:static public static function WSP_0029_SERVICE_PORT_OPERATION_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0080_IMPLEMENTATION_EXPECTED_NOT_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0080: Expected config file identifier, got null instead. Implementation fault.
	*
	*/
	@:overload @:public @:static public static function WSP_0080_IMPLEMENTATION_EXPECTED_NOT_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0051_OPERATION_NOT_SUPPORTED_FOR_THIS_BUT_ASSERTION_RELATED_NODE_TYPE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0051: This operation is supported only for 'ASSERTION' and 'ASSERTION_PARAMETER_NODE' node types. It is not supported for the node type ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0051_OPERATION_NOT_SUPPORTED_FOR_THIS_BUT_ASSERTION_RELATED_NODE_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0008_UNEXPECTED_CHILD_MODEL_TYPE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0008: Unexpected type of child model node nested in an 'ASSERTION' node: ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0008_UNEXPECTED_CHILD_MODEL_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0023_UNEXPECTED_ERROR_WHILE_CLOSING_RESOURCE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0023: Unexpected error occured while closing resource "{0}".
	*
	*/
	@:overload @:public @:static public static function WSP_0023_UNEXPECTED_ERROR_WHILE_CLOSING_RESOURCE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0091_END_ELEMENT_NO_MATCH(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0091: Expected end element {0} but read <{1}> at location {2}
	*
	*/
	@:overload @:public @:static public static function WSP_0091_END_ELEMENT_NO_MATCH(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0001_UNSUPPORTED_MODEL_NODE_TYPE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0001: Unsupported model node type: ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0001_UNSUPPORTED_MODEL_NODE_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0053_INVALID_CLIENT_SIDE_ALTERNATIVE() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0053: Client cannot proceed to call the web service - invalid policy alternative found. For more information see "WSP0075" warning messages in the log file.
	*
	*/
	@:overload @:public @:static public static function WSP_0053_INVALID_CLIENT_SIDE_ALTERNATIVE() : String;
	
	@:overload @:public @:static public static function localizableWSP_0087_UNKNOWN_EVENT(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0087: Received unknown event {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0087_UNKNOWN_EVENT(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0065_INCONSISTENCY_IN_POLICY_SOURCE_MODEL(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0065: Inconsistency in policy source model detected: Cannot create policy assertion parameter from a model node of type: ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0065_INCONSISTENCY_IN_POLICY_SOURCE_MODEL(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0032_SERVICE_CAN_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0032: Service can not be null
	*
	*/
	@:overload @:public @:static public static function WSP_0032_SERVICE_CAN_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0093_INVALID_URI(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0093: Invalid URI "{0}" at location {1}
	*
	*/
	@:overload @:public @:static public static function WSP_0093_INVALID_URI(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0045_POLICY_MAP_KEY_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0045: Provided policy map key must not be null! Create a proper policy map key by calling one of PolicyMap's  createXxxScopeKey(...) methods first
	*
	*/
	@:overload @:public @:static public static function WSP_0045_POLICY_MAP_KEY_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0079_ERROR_WHILE_RFC_2396_UNESCAPING(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0079: Error while unescaping ''{0}'' by RFC2396
	*
	*/
	@:overload @:public @:static public static function WSP_0079_ERROR_WHILE_RFC_2396_UNESCAPING(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0064_INITIAL_POLICY_COLLECTION_MUST_NOT_BE_EMPTY() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0064: Initial collection of policies must not be empty
	*
	*/
	@:overload @:public @:static public static function WSP_0064_INITIAL_POLICY_COLLECTION_MUST_NOT_BE_EMPTY() : String;
	
	@:overload @:public @:static public static function localizableWSP_0044_POLICY_MAP_MUTATOR_ALREADY_CONNECTED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0044: This policy map mutator is already connected to a policy map. Please, disconnect it first, before connecting to another policy map
	*
	*/
	@:overload @:public @:static public static function WSP_0044_POLICY_MAP_MUTATOR_ALREADY_CONNECTED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0015_UNABLE_TO_INSTANTIATE_DIGEST_ALG_URI_FIELD() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0015: Unable to instantiate static constant field 'DEFAULT_DIGEST_ALGORITHM_URI'
	*
	*/
	@:overload @:public @:static public static function WSP_0015_UNABLE_TO_INSTANTIATE_DIGEST_ALG_URI_FIELD() : String;
	
	@:overload @:public @:static public static function localizableWSP_0046_POLICY_MAP_KEY_HANDLER_NOT_SET() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0046: Policy map key handler is not set
	*
	*/
	@:overload @:public @:static public static function WSP_0046_POLICY_MAP_KEY_HANDLER_NOT_SET() : String;
	
	@:overload @:public @:static public static function localizableWSP_0012_UNABLE_TO_UNMARSHALL_POLICY_MALFORMED_URI() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0012: Unable to unmarshall policy referenced due to malformed URI value in attribute
	*
	*/
	@:overload @:public @:static public static function WSP_0012_UNABLE_TO_UNMARSHALL_POLICY_MALFORMED_URI() : String;
	
	@:overload @:public @:static public static function localizableWSP_0003_UNMARSHALLING_FAILED_END_TAG_DOES_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0003: Policy model unmarshalling failed: Actual XML end tag does not match current element. Expected tag FQN: "{0}", actual tag FQN: "{1}"
	*
	*/
	@:overload @:public @:static public static function WSP_0003_UNMARSHALLING_FAILED_END_TAG_DOES_NOT_MATCH(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0007_UNEXPECTED_MODEL_NODE_TYPE_FOUND(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0007: Unexpected model node type ({0})found during policy expression content decomposition
	*
	*/
	@:overload @:public @:static public static function WSP_0007_UNEXPECTED_MODEL_NODE_TYPE_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0086_FAILED_CREATE_READER(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0086: Failed to create XMLEventReader for source {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0086_FAILED_CREATE_READER(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0077_ASSERTION_CREATOR_DOES_NOT_SUPPORT_ANY_URI(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0077: Discovered policy assertion creator of class=''{0}'' does not support any URI
	*
	*/
	@:overload @:public @:static public static function WSP_0077_ASSERTION_CREATOR_DOES_NOT_SUPPORT_ANY_URI(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0082_NO_SUBJECT_TYPE() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0082: Implementation fault. Failed to determine subject type.
	*
	*/
	@:overload @:public @:static public static function WSP_0082_NO_SUBJECT_TYPE() : String;
	
	@:overload @:public @:static public static function localizableWSP_0089_EXPECTED_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0089: Expected tag {0}, but read <{1}> at location {2}
	*
	*/
	@:overload @:public @:static public static function WSP_0089_EXPECTED_ELEMENT(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0031_SERVICE_PARAM_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0031: Parameter 'service' must not be null
	*
	*/
	@:overload @:public @:static public static function WSP_0031_SERVICE_PARAM_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0030_SERVICE_PORT_OPERATION_FAULT_MSG_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0030: Parameters "service", "port", "operation" and "faultMessage" must not be null. (service={0}, port={1}, operation={2}, faultMessage={3})
	*
	*/
	@:overload @:public @:static public static function WSP_0030_SERVICE_PORT_OPERATION_FAULT_MSG_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0040_POLICY_REFERENCE_URI_ATTR_NOT_FOUND() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0040: Policy reference 'URI' attribute not found
	*
	*/
	@:overload @:public @:static public static function WSP_0040_POLICY_REFERENCE_URI_ATTR_NOT_FOUND() : String;
	
	@:overload @:public @:static public static function localizableWSP_0034_REMOVE_OPERATION_NOT_SUPPORTED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0034: Remove operation not supported by this iterator
	*
	*/
	@:overload @:public @:static public static function WSP_0034_REMOVE_OPERATION_NOT_SUPPORTED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0084_MESSAGE_TYPE_NO_MESSAGE() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0084: The message type may not be NO_MESSAGE.
	*
	*/
	@:overload @:public @:static public static function WSP_0084_MESSAGE_TYPE_NO_MESSAGE() : String;
	
	@:overload @:public @:static public static function localizableWSP_0004_UNEXPECTED_VISIBILITY_ATTR_VALUE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0004: Unexpected visibility attribute value: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0004_UNEXPECTED_VISIBILITY_ATTR_VALUE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0074_CANNOT_CREATE_ASSERTION_BAD_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0074: Cannot create AssertionData instance for this type of ModelNode: "{0}"; Supported types are "{1}" and "{2}"
	*
	*/
	@:overload @:public @:static public static function WSP_0074_CANNOT_CREATE_ASSERTION_BAD_TYPE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0052_NUMBER_OF_ALTERNATIVE_COMBINATIONS_CREATED(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0052: Number of policy alternative combinations created: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0052_NUMBER_OF_ALTERNATIVE_COMBINATIONS_CREATED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0037_PRIVATE_CONSTRUCTOR_DOES_NOT_TAKE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0037: Private constructor must not receive 'null' argument as a initial policy assertion list
	*
	*/
	@:overload @:public @:static public static function WSP_0037_PRIVATE_CONSTRUCTOR_DOES_NOT_TAKE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0067_ILLEGAL_CFG_FILE_SYNTAX() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0067: Illegal configuration-file syntax
	*
	*/
	@:overload @:public @:static public static function WSP_0067_ILLEGAL_CFG_FILE_SYNTAX() : String;
	
	@:overload @:public @:static public static function localizableWSP_0085_MESSAGE_FAULT_NO_NAME() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0085: Messages of type fault must have a name.
	*
	*/
	@:overload @:public @:static public static function WSP_0085_MESSAGE_FAULT_NO_NAME() : String;
	
	@:overload @:public @:static public static function localizableWSP_0050_OPERATION_NOT_SUPPORTED_FOR_THIS_BUT_POLICY_REFERENCE_NODE_TYPE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0050: This operation is supported only for 'POLICY_REFERENCE' node type. It is not supported for the node type ''{0}''
	*
	*/
	@:overload @:public @:static public static function WSP_0050_OPERATION_NOT_SUPPORTED_FOR_THIS_BUT_POLICY_REFERENCE_NODE_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0042_POLICY_REFERENCE_NODE_EXPECTED_INSTEAD_OF(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0042: Input model node argument is not a policy reference. Real node type: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0042_POLICY_REFERENCE_NODE_EXPECTED_INSTEAD_OF(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0014_UNABLE_TO_INSTANTIATE_READER_FOR_STORAGE() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0014: Unable to instantiate XMLEventReader for given storage
	*
	*/
	@:overload @:public @:static public static function WSP_0014_UNABLE_TO_INSTANTIATE_READER_FOR_STORAGE() : String;
	
	@:overload @:public @:static public static function localizableWSP_0054_NO_MORE_ELEMS_IN_POLICY_MAP() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0054: There are no more elements in the policy map
	*
	*/
	@:overload @:public @:static public static function WSP_0054_NO_MORE_ELEMS_IN_POLICY_MAP() : String;
	
	@:overload @:public @:static public static function localizableWSP_0083_MESSAGE_TYPE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0083: The message type may not be null.
	*
	*/
	@:overload @:public @:static public static function WSP_0083_MESSAGE_TYPE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0011_UNABLE_TO_UNMARSHALL_POLICY_XML_ELEM_EXPECTED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0011: Failed to unmarshal policy expression. Expected XML element
	*
	*/
	@:overload @:public @:static public static function WSP_0011_UNABLE_TO_UNMARSHALL_POLICY_XML_ELEM_EXPECTED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0025_SPI_FAIL_SERVICE_MSG(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0025: {0}: {1}
	*
	*/
	@:overload @:public @:static public static function WSP_0025_SPI_FAIL_SERVICE_MSG(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0094_INVALID_URN() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0094: Internal implementation error. Apparently failed to pass valid URN.
	*
	*/
	@:overload @:public @:static public static function WSP_0094_INVALID_URN() : String;
	
	@:overload @:public @:static public static function localizableWSP_0026_SINGLE_EMPTY_ALTERNATIVE_COMBINATION_CREATED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0026: Single empty alternative combination created: Returning "anything allowed" policy
	*
	*/
	@:overload @:public @:static public static function WSP_0026_SINGLE_EMPTY_ALTERNATIVE_COMBINATION_CREATED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0078_ASSERTION_CREATOR_DISCOVERED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0078: Policy assertion creator discovered: class=''{0}'', supported namespace=''{1}''
	*
	*/
	@:overload @:public @:static public static function WSP_0078_ASSERTION_CREATOR_DISCOVERED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0041_POLICY_REFERENCE_NODE_FOUND_WITH_NO_POLICY_REFERENCE_IN_IT() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0041: Unexpanded "POLICY_REFERENCE" node found containing no policy reference data
	*
	*/
	@:overload @:public @:static public static function WSP_0041_POLICY_REFERENCE_NODE_FOUND_WITH_NO_POLICY_REFERENCE_IN_IT() : String;
	
	@:overload @:public @:static public static function localizableWSP_0039_POLICY_SRC_MODEL_INPUT_PARAMETER_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0039: Policy source model input parameter must not be null
	*
	*/
	@:overload @:public @:static public static function WSP_0039_POLICY_SRC_MODEL_INPUT_PARAMETER_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0070_ERROR_REGISTERING_ASSERTION_CREATOR(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0070: Error registering policy assertion creator of class ''{0}'''. Supported domain nemaspace URI string must not be neither null nor empty!"
	*
	*/
	@:overload @:public @:static public static function WSP_0070_ERROR_REGISTERING_ASSERTION_CREATOR(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0036_PRIVATE_METHOD_DOES_NOT_ACCEPT_NULL_OR_EMPTY_COLLECTION() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0036: This private method does not accept null or empty collection
	*
	*/
	@:overload @:public @:static public static function WSP_0036_PRIVATE_METHOD_DOES_NOT_ACCEPT_NULL_OR_EMPTY_COLLECTION() : String;
	
	@:overload @:public @:static public static function localizableWSP_0027_SERVICE_PROVIDER_NOT_FOUND(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0027: Service provider {0} not found
	*
	*/
	@:overload @:public @:static public static function WSP_0027_SERVICE_PROVIDER_NOT_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0056_NEITHER_NULL_NOR_EMPTY_POLICY_COLLECTION_EXPECTED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0056: Input policy collection is expected not to be null nor empty collection
	*
	*/
	@:overload @:public @:static public static function WSP_0056_NEITHER_NULL_NOR_EMPTY_POLICY_COLLECTION_EXPECTED() : String;
	
	@:overload @:public @:static public static function localizableWSP_0022_STORAGE_TYPE_NOT_SUPPORTED(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0022: Storage type "{0}" is not supported
	*
	*/
	@:overload @:public @:static public static function WSP_0022_STORAGE_TYPE_NOT_SUPPORTED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0095_INVALID_BOOLEAN_VALUE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0095: A value of boolean type may have one of the values "true", "false", "1", "0". This value was "{0}".
	*
	*/
	@:overload @:public @:static public static function WSP_0095_INVALID_BOOLEAN_VALUE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0059_MULTIPLE_ATTRS_WITH_SAME_NAME_DETECTED_FOR_ASSERTION(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0059: Multiple attributes with the same name "{0}" detected for assertion "{1}"
	*
	*/
	@:overload @:public @:static public static function WSP_0059_MULTIPLE_ATTRS_WITH_SAME_NAME_DETECTED_FOR_ASSERTION(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0047_POLICY_IS_NULL_RETURNING() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0047: Policy is null, returning
	*
	*/
	@:overload @:public @:static public static function WSP_0047_POLICY_IS_NULL_RETURNING() : String;
	
	@:overload @:public @:static public static function localizableWSP_0088_FAILED_PARSE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0088: Failed to parse XML document at location {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0088_FAILED_PARSE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0005_UNEXPECTED_POLICY_ELEMENT_FOUND_IN_ASSERTION_PARAM(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0005: Unexpected nested policy element found in assertion parameter: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0005_UNEXPECTED_POLICY_ELEMENT_FOUND_IN_ASSERTION_PARAM(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0009_UNEXPECTED_CDATA_ON_SOURCE_MODEL_NODE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0009: Unexpected character data on current policy source model node "{0}" : data = "{1}"
	*
	*/
	@:overload @:public @:static public static function WSP_0009_UNEXPECTED_CDATA_ON_SOURCE_MODEL_NODE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0024_SPI_FAIL_SERVICE_URL_LINE_MSG(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0024: {0}:{1}: {2}
	*
	*/
	@:overload @:public @:static public static function WSP_0024_SPI_FAIL_SERVICE_URL_LINE_MSG(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0057_N_ALTERNATIVE_COMBINATIONS_M_POLICY_ALTERNATIVES_CREATED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0057: {0} policy alternative combinations created: Returning created policy with {1} inequal policy alternatives
	*
	*/
	@:overload @:public @:static public static function WSP_0057_N_ALTERNATIVE_COMBINATIONS_M_POLICY_ALTERNATIVES_CREATED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0020_SUBJECT_PARAM_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0020: Parameter subject must not be null
	*
	*/
	@:overload @:public @:static public static function WSP_0020_SUBJECT_PARAM_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0071_ERROR_MULTIPLE_ASSERTION_CREATORS_FOR_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0071: Multiple policy assertion creators try to register for namespace ''{0}''. Old creator`s class: ''{1}'', new creator`s class: ''{2}''.
	*
	*/
	@:overload @:public @:static public static function WSP_0071_ERROR_MULTIPLE_ASSERTION_CREATORS_FOR_NAMESPACE(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0038_POLICY_TO_ATTACH_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0038: Policy to be attached must not be null
	*
	*/
	@:overload @:public @:static public static function WSP_0038_POLICY_TO_ATTACH_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0033_SERVICE_AND_PORT_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0033: Parameters "service" and "port" must not be null. (service={0}, port={1})
	*
	*/
	@:overload @:public @:static public static function WSP_0033_SERVICE_AND_PORT_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0060_POLICY_ELEMENT_TYPE_UNKNOWN(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0060: Unknown policy element type "{0}"
	*
	*/
	@:overload @:public @:static public static function WSP_0060_POLICY_ELEMENT_TYPE_UNKNOWN(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0013_UNABLE_TO_SET_PARENT_MODEL_ON_ROOT() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0013: Unable to set parent model on root model node
	*
	*/
	@:overload @:public @:static public static function WSP_0013_UNABLE_TO_SET_PARENT_MODEL_ON_ROOT() : String;
	
	@:overload @:public @:static public static function localizableWSP_0019_SUBOPTIMAL_ALTERNATIVE_SELECTED(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0019: Suboptimal policy alternative selected on the client side with fitness "{0}".
	*
	*/
	@:overload @:public @:static public static function WSP_0019_SUBOPTIMAL_ALTERNATIVE_SELECTED(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0073_CREATE_CHILD_NODE_OPERATION_NOT_SUPPORTED(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0073: Cannot create child node of type ''{0}'' in the node of type ''{1}''. Create operation is not supported for this combination of node types.
	*
	*/
	@:overload @:public @:static public static function WSP_0073_CREATE_CHILD_NODE_OPERATION_NOT_SUPPORTED(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0002_UNRECOGNIZED_SCOPE_TYPE(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0002: Unrecoginzed scope type: "{0}"
	*
	*/
	@:overload @:public @:static public static function WSP_0002_UNRECOGNIZED_SCOPE_TYPE(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0062_INPUT_PARAMS_MUST_NOT_BE_NULL() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0062: Input parameters must not be 'null'
	*
	*/
	@:overload @:public @:static public static function WSP_0062_INPUT_PARAMS_MUST_NOT_BE_NULL() : String;
	
	@:overload @:public @:static public static function localizableWSP_0063_ERROR_WHILE_CONSTRUCTING_EXCEPTION(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0063: Unexpected exception occured while constructing exception of class "{0}".
	*
	*/
	@:overload @:public @:static public static function WSP_0063_ERROR_WHILE_CONSTRUCTING_EXCEPTION(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0021_SUBJECT_AND_POLICY_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0021: Parameters "subject" and "policy" must not be null. (subject={0}, policy={1})
	*
	*/
	@:overload @:public @:static public static function WSP_0021_SUBJECT_AND_POLICY_PARAM_MUST_NOT_BE_NULL(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0075_PROBLEMATIC_ASSERTION_STATE(arg0 : Dynamic, arg1 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0075: Policy assertion "{0}" was evaluated as "{1}".
	*
	*/
	@:overload @:public @:static public static function WSP_0075_PROBLEMATIC_ASSERTION_STATE(arg0 : Dynamic, arg1 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0006_UNEXPECTED_MULTIPLE_POLICY_NODES() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0006: Unexpected multiple nested policy nodes within a single assertion
	*
	*/
	@:overload @:public @:static public static function WSP_0006_UNEXPECTED_MULTIPLE_POLICY_NODES() : String;
	
	@:overload @:public @:static public static function localizableWSP_0092_CHARACTER_DATA_UNEXPECTED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0092: Character data in unexpected element {0}, character data = {1}, location = {2}
	*
	*/
	@:overload @:public @:static public static function WSP_0092_CHARACTER_DATA_UNEXPECTED(arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0069_EXCEPTION_WHILE_RETRIEVING_EFFECTIVE_POLICY_FOR_KEY(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0069: Exception occured while retrieving effective policy for given key {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0069_EXCEPTION_WHILE_RETRIEVING_EFFECTIVE_POLICY_FOR_KEY(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0010_UNEXPANDED_POLICY_REFERENCE_NODE_FOUND_REFERENCING(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0010: Unexpanded "POLICY_REFERENCE" node found referencing {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0010_UNEXPANDED_POLICY_REFERENCE_NODE_FOUND_REFERENCING(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0035_RECONFIGURE_ALTERNATIVES(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0035: Policy "{0}" contains more than one policy alternative. Please reconfigure the service with only one policy alternative.
	*
	*/
	@:overload @:public @:static public static function WSP_0035_RECONFIGURE_ALTERNATIVES(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0066_ILLEGAL_PROVIDER_CLASSNAME(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0066: Illegal provider-class name: {0}
	*
	*/
	@:overload @:public @:static public static function WSP_0066_ILLEGAL_PROVIDER_CLASSNAME(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0076_NO_SERVICE_PROVIDERS_FOUND(arg0 : Dynamic) : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0076: Policy engine could not locate any service providers implementing "{0}" interface. Please, check "META-INF/services" directory in your "webservices-rt.jar".
	*
	*/
	@:overload @:public @:static public static function WSP_0076_NO_SERVICE_PROVIDERS_FOUND(arg0 : Dynamic) : String;
	
	@:overload @:public @:static public static function localizableWSP_0049_PARENT_MODEL_CAN_NOT_BE_CHANGED() : com.sun.istack.internal.localization.Localizable;
	
	/**
	* WSP0049: The parent model may not be changed on a child node which is not a root of the policy source model tree
	*
	*/
	@:overload @:public @:static public static function WSP_0049_PARENT_MODEL_CAN_NOT_BE_CHANGED() : String;
	
	
}
