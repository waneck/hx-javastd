package com.sun.org.apache.xalan.internal.xsltc.compiler.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: ErrorMsg.java,v 1.2.4.1 2005/09/15 10:18:01 pvedula Exp $
*/
extern class ErrorMsg
{
	@:public @:static @:final public static var MULTIPLE_STYLESHEET_ERR(default, null) : String;
	
	@:public @:static @:final public static var TEMPLATE_REDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var TEMPLATE_UNDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var VARIABLE_REDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var VARIABLE_UNDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var CLASS_NOT_FOUND_ERR(default, null) : String;
	
	@:public @:static @:final public static var METHOD_NOT_FOUND_ERR(default, null) : String;
	
	@:public @:static @:final public static var ARGUMENT_CONVERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var FILE_NOT_FOUND_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_URI_ERR(default, null) : String;
	
	@:public @:static @:final public static var FILE_ACCESS_ERR(default, null) : String;
	
	@:public @:static @:final public static var MISSING_ROOT_ERR(default, null) : String;
	
	@:public @:static @:final public static var NAMESPACE_UNDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var FUNCTION_RESOLVE_ERR(default, null) : String;
	
	@:public @:static @:final public static var NEED_LITERAL_ERR(default, null) : String;
	
	@:public @:static @:final public static var XPATH_PARSER_ERR(default, null) : String;
	
	@:public @:static @:final public static var REQUIRED_ATTR_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_CHAR_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_PI_ERR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_ATTRIBUTE_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_ATTRIBUTE_ERR(default, null) : String;
	
	@:public @:static @:final public static var CIRCULAR_INCLUDE_ERR(default, null) : String;
	
	@:public @:static @:final public static var RESULT_TREE_SORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var SYMBOLS_REDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var XSL_VERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var CIRCULAR_VARIABLE_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_BINARY_OP_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_ARG_ERR(default, null) : String;
	
	@:public @:static @:final public static var DOCUMENT_ARG_ERR(default, null) : String;
	
	@:public @:static @:final public static var MISSING_WHEN_ERR(default, null) : String;
	
	@:public @:static @:final public static var MULTIPLE_OTHERWISE_ERR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_OTHERWISE_ERR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_WHEN_ERR(default, null) : String;
	
	@:public @:static @:final public static var WHEN_ELEMENT_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNNAMED_ATTRIBSET_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_CHILD_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_ELEM_NAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_ATTR_NAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_TEXT_NODE_ERR(default, null) : String;
	
	@:public @:static @:final public static var SAX_PARSER_CONFIG_ERR(default, null) : String;
	
	@:public @:static @:final public static var INTERNAL_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNSUPPORTED_XSL_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNSUPPORTED_EXT_ERR(default, null) : String;
	
	@:public @:static @:final public static var MISSING_XSLT_URI_ERR(default, null) : String;
	
	@:public @:static @:final public static var MISSING_XSLT_TARGET_ERR(default, null) : String;
	
	@:public @:static @:final public static var NOT_IMPLEMENTED_ERR(default, null) : String;
	
	@:public @:static @:final public static var NOT_STYLESHEET_ERR(default, null) : String;
	
	@:public @:static @:final public static var ELEMENT_PARSE_ERR(default, null) : String;
	
	@:public @:static @:final public static var KEY_USE_ATTR_ERR(default, null) : String;
	
	@:public @:static @:final public static var OUTPUT_VERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_RELAT_OP_ERR(default, null) : String;
	
	@:public @:static @:final public static var ATTRIBSET_UNDEF_ERR(default, null) : String;
	
	@:public @:static @:final public static var ATTR_VAL_TEMPLATE_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNKNOWN_SIG_TYPE_ERR(default, null) : String;
	
	@:public @:static @:final public static var DATA_CONVERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var NO_TRANSLET_CLASS_ERR(default, null) : String;
	
	@:public @:static @:final public static var NO_MAIN_TRANSLET_ERR(default, null) : String;
	
	@:public @:static @:final public static var TRANSLET_CLASS_ERR(default, null) : String;
	
	@:public @:static @:final public static var TRANSLET_OBJECT_ERR(default, null) : String;
	
	@:public @:static @:final public static var ERROR_LISTENER_NULL_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_UNKNOWN_SOURCE_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_NO_SOURCE_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_COMPILE_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_INVALID_ATTR_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_SET_RESULT_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_NO_TRANSLET_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_NO_HANDLER_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_NO_RESULT_ERR(default, null) : String;
	
	@:public @:static @:final public static var JAXP_UNKNOWN_PROP_ERR(default, null) : String;
	
	@:public @:static @:final public static var SAX2DOM_ADAPTER_ERR(default, null) : String;
	
	@:public @:static @:final public static var XSLTC_SOURCE_ERR(default, null) : String;
	
	@:public @:static @:final public static var ER_RESULT_NULL(default, null) : String;
	
	@:public @:static @:final public static var JAXP_INVALID_SET_PARAM_VALUE(default, null) : String;
	
	@:public @:static @:final public static var JAXP_SET_FEATURE_NULL_NAME(default, null) : String;
	
	@:public @:static @:final public static var JAXP_GET_FEATURE_NULL_NAME(default, null) : String;
	
	@:public @:static @:final public static var JAXP_UNSUPPORTED_FEATURE(default, null) : String;
	
	@:public @:static @:final public static var JAXP_SECUREPROCESSING_FEATURE(default, null) : String;
	
	@:public @:static @:final public static var COMPILE_STDIN_ERR(default, null) : String;
	
	@:public @:static @:final public static var COMPILE_USAGE_STR(default, null) : String;
	
	@:public @:static @:final public static var TRANSFORM_USAGE_STR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_SORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNSUPPORTED_ENCODING(default, null) : String;
	
	@:public @:static @:final public static var SYNTAX_ERR(default, null) : String;
	
	@:public @:static @:final public static var CONSTRUCTOR_NOT_FOUND(default, null) : String;
	
	@:public @:static @:final public static var NO_JAVA_FUNCT_THIS_REF(default, null) : String;
	
	@:public @:static @:final public static var TYPE_CHECK_ERR(default, null) : String;
	
	@:public @:static @:final public static var TYPE_CHECK_UNK_LOC_ERR(default, null) : String;
	
	@:public @:static @:final public static var ILLEGAL_CMDLINE_OPTION_ERR(default, null) : String;
	
	@:public @:static @:final public static var CMDLINE_OPT_MISSING_ARG_ERR(default, null) : String;
	
	@:public @:static @:final public static var WARNING_PLUS_WRAPPED_MSG(default, null) : String;
	
	@:public @:static @:final public static var WARNING_MSG(default, null) : String;
	
	@:public @:static @:final public static var FATAL_ERR_PLUS_WRAPPED_MSG(default, null) : String;
	
	@:public @:static @:final public static var FATAL_ERR_MSG(default, null) : String;
	
	@:public @:static @:final public static var ERROR_PLUS_WRAPPED_MSG(default, null) : String;
	
	@:public @:static @:final public static var ERROR_MSG(default, null) : String;
	
	@:public @:static @:final public static var TRANSFORM_WITH_TRANSLET_STR(default, null) : String;
	
	@:public @:static @:final public static var TRANSFORM_WITH_JAR_STR(default, null) : String;
	
	@:public @:static @:final public static var COULD_NOT_CREATE_TRANS_FACT(default, null) : String;
	
	@:public @:static @:final public static var TRANSLET_NAME_JAVA_CONFLICT(default, null) : String;
	
	@:public @:static @:final public static var INVALID_QNAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_NCNAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_METHOD_IN_OUTPUT(default, null) : String;
	
	@:public @:static @:final public static var OUTLINE_ERR_TRY_CATCH(default, null) : String;
	
	@:public @:static @:final public static var OUTLINE_ERR_UNBALANCED_MARKERS(default, null) : String;
	
	@:public @:static @:final public static var OUTLINE_ERR_DELETED_TARGET(default, null) : String;
	
	@:public @:static @:final public static var OUTLINE_ERR_METHOD_TOO_BIG(default, null) : String;
	
	@:public @:final @:static public static var ERROR_MESSAGES_KEY(default, null) : String;
	
	@:public @:final @:static public static var COMPILER_ERROR_KEY(default, null) : String;
	
	@:public @:final @:static public static var COMPILER_WARNING_KEY(default, null) : String;
	
	@:public @:final @:static public static var RUNTIME_ERROR_KEY(default, null) : String;
	
	@:overload @:public public function new(code : String) : Void;
	
	@:overload @:public public function new(e : java.lang.Throwable) : Void;
	
	@:overload @:public public function new(message : String, line : Int) : Void;
	
	@:overload @:public public function new(code : String, line : Int, param : Dynamic) : Void;
	
	@:overload @:public public function new(code : String, param : Dynamic) : Void;
	
	@:overload @:public public function new(code : String, param1 : Dynamic, param2 : Dynamic) : Void;
	
	@:overload @:public public function new(code : String, node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	@:overload @:public public function new(code : String, param1 : Dynamic, node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	@:overload @:public public function new(code : String, param1 : Dynamic, param2 : Dynamic, node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	/**
	* This version of toString() uses the _params instance variable
	* to format the message. If the <code>_code</code> is negative
	* the use _message as the error string.
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function toString(obj : Dynamic) : String;
	
	@:overload @:public public function toString(obj0 : Dynamic, obj1 : Dynamic) : String;
	
	@:overload @:public public function setWarningError(flag : Bool) : Void;
	
	@:overload @:public public function isWarningError() : Bool;
	
	
}
