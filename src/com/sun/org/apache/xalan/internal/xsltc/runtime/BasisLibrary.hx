package com.sun.org.apache.xalan.internal.xsltc.runtime;
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
* $Id: BasisLibrary.java,v 1.6 2006/06/20 21:51:58 spericas Exp $
*/
extern class BasisLibrary
{
	/**
	* Standard function count(node-set)
	*/
	@:overload @:public @:static public static function countF(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Int;
	
	/**
	* Standard function position()
	* @deprecated This method exists only for backwards compatibility with old
	*             translets.  New code should not reference it.
	*/
	@:overload @:public @:static public static function positionF(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Int;
	
	/**
	* XSLT Standard function sum(node-set).
	* stringToDouble is inlined
	*/
	@:overload @:public @:static public static function sumF(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Float;
	
	/**
	* XSLT Standard function string()
	*/
	@:overload @:public @:static public static function stringF(node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* XSLT Standard function string(value)
	*/
	@:overload @:public @:static public static function stringF(obj : Dynamic, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* XSLT Standard function string(value)
	*/
	@:overload @:public @:static public static function stringF(obj : Dynamic, node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* XSLT Standard function number()
	*/
	@:overload @:public @:static public static function numberF(node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Float;
	
	/**
	* XSLT Standard function number(value)
	*/
	@:overload @:public @:static public static function numberF(obj : Dynamic, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Float;
	
	/**
	* XSLT Standard function round()
	*/
	@:overload @:public @:static public static function roundF(d : Float) : Float;
	
	/**
	* XSLT Standard function boolean()
	*/
	@:overload @:public @:static public static function booleanF(obj : Dynamic) : Bool;
	
	/**
	* XSLT Standard function substring(). Must take a double because of
	* conversions resulting into NaNs and rounding.
	*/
	@:overload @:public @:static public static function substringF(value : String, start : Float) : String;
	
	/**
	* XSLT Standard function substring(). Must take a double because of
	* conversions resulting into NaNs and rounding.
	*/
	@:overload @:public @:static public static function substringF(value : String, start : Float, length : Float) : String;
	
	/**
	* XSLT Standard function substring-after().
	*/
	@:overload @:public @:static public static function substring_afterF(value : String, substring : String) : String;
	
	/**
	* XSLT Standard function substring-before().
	*/
	@:overload @:public @:static public static function substring_beforeF(value : String, substring : String) : String;
	
	/**
	* XSLT Standard function translate().
	*/
	@:overload @:public @:static public static function translateF(value : String, from : String, to : String) : String;
	
	/**
	* XSLT Standard function normalize-space().
	*/
	@:overload @:public @:static public static function normalize_spaceF(node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* XSLT Standard function normalize-space(string).
	*/
	@:overload @:public @:static public static function normalize_spaceF(value : String) : String;
	
	/**
	* XSLT Standard function generate-id().
	*/
	@:overload @:public @:static public static function generate_idF(node : Int) : String;
	
	/**
	* utility function for calls to local-name().
	*/
	@:overload @:public @:static public static function getLocalName(value : String) : String;
	
	/**
	* External functions that cannot be resolved are replaced with a call
	* to this method. This method will generate a runtime errors. A good
	* stylesheet checks whether the function exists using conditional
	* constructs, and never really tries to call it if it doesn't exist.
	* But simple stylesheets may result in a call to this method.
	* The compiler should generate a warning if it encounters a call to
	* an unresolved external function.
	*/
	@:overload @:public @:static public static function unresolved_externalF(name : String) : Void;
	
	/**
	* Utility function to throw a runtime error on the use of an extension
	* function when the secure processing feature is set to true.
	*/
	@:overload @:public @:static public static function unallowed_extension_functionF(name : String) : Void;
	
	/**
	* Utility function to throw a runtime error on the use of an extension
	* element when the secure processing feature is set to true.
	*/
	@:overload @:public @:static public static function unallowed_extension_elementF(name : String) : Void;
	
	/**
	* Utility function to throw a runtime error for an unsupported element.
	*
	* This is only used in forward-compatibility mode, when the control flow
	* cannot be determined. In 1.0 mode, the error message is emitted at
	* compile time.
	*/
	@:overload @:public @:static public static function unsupported_ElementF(qname : String, isExtension : Bool) : Void;
	
	/**
	* XSLT Standard function namespace-uri(node-set).
	*/
	@:overload @:public @:static public static function namespace_uriF(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* XSLT Standard function system-property(name)
	*/
	@:overload @:public @:static public static function system_propertyF(name : String) : String;
	
	/**
	* XSLT Standard function namespace-uri().
	*/
	@:overload @:public @:static public static function namespace_uriF(node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* Implements the object-type() extension function.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function objectTypeF(obj : Dynamic) : String;
	
	/**
	* Implements the nodeset() extension function.
	*/
	@:overload @:public @:static public static function nodesetF(obj : Dynamic) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Utility function: node-set/node-set compare.
	*/
	@:overload @:public @:static public static function compare(left : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, right : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, op : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Bool;
	
	@:overload @:public @:static public static function compare(node : Int, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, op : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Bool;
	
	/**
	* Utility function: node-set/number compare.
	*/
	@:overload @:public @:static public static function compare(left : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, rnumber : Float, op : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Bool;
	
	/**
	* Utility function: node-set/string comparison.
	*/
	@:overload @:public @:static public static function compare(left : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, rstring : String, op : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Bool;
	
	@:overload @:public @:static public static function compare(left : Dynamic, right : Dynamic, op : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Bool;
	
	/**
	* Utility function: used to test context node's language
	*/
	@:overload @:public @:static public static function testLanguage(testLang : String, dom : com.sun.org.apache.xalan.internal.xsltc.DOM, node : Int) : Bool;
	
	/**
	* Utility function: used in StringType to convert a string to a real.
	*/
	@:overload @:public @:static public static function stringToReal(s : String) : Float;
	
	/**
	* Utility function: used in StringType to convert a string to an int.
	*/
	@:overload @:public @:static public static function stringToInt(s : String) : Int;
	
	/**
	* Utility function: used in RealType to convert a real to a string.
	* Removes the decimal if null. Uses a specialized formatter object
	* for very large and very small numbers that ignores locales, thus
	* using always using "." as a decimal separator.
	*/
	@:overload @:public @:static public static function realToString(d : Float) : String;
	
	/**
	* Utility function: used in RealType to convert a real to an integer
	*/
	@:overload @:public @:static public static function realToInt(d : Float) : Int;
	
	@:overload @:public @:static public static function formatNumber(number : Float, pattern : String, formatter : java.text.DecimalFormat) : String;
	
	/**
	* Utility function: used to convert references to node-sets. If the
	* obj is an instanceof Node then create a singleton iterator.
	*/
	@:overload @:public @:static public static function referenceToNodeSet(obj : Dynamic) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Utility function: used to convert reference to org.w3c.dom.NodeList.
	*/
	@:overload @:public @:static public static function referenceToNodeList(obj : Dynamic, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : org.w3c.dom.NodeList;
	
	/**
	* Utility function: used to convert reference to org.w3c.dom.Node.
	*/
	@:overload @:public @:static public static function referenceToNode(obj : Dynamic, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : org.w3c.dom.Node;
	
	/**
	* Utility function: used to convert reference to long.
	*/
	@:overload @:public @:static public static function referenceToLong(obj : Dynamic) : haxe.Int64;
	
	/**
	* Utility function: used to convert reference to double.
	*/
	@:overload @:public @:static public static function referenceToDouble(obj : Dynamic) : Float;
	
	/**
	* Utility function: used to convert reference to boolean.
	*/
	@:overload @:public @:static public static function referenceToBoolean(obj : Dynamic) : Bool;
	
	/**
	* Utility function: used to convert reference to String.
	*/
	@:overload @:public @:static public static function referenceToString(obj : Dynamic, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : String;
	
	/**
	* Utility function used to convert a w3c Node into an internal DOM iterator.
	*/
	@:overload @:public @:static public static function node2Iterator(node : org.w3c.dom.Node, translet : com.sun.org.apache.xalan.internal.xsltc.Translet, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Utility function used to convert a w3c NodeList into a internal
	* DOM iterator.
	*/
	@:overload @:public @:static public static function nodeList2Iterator(nodeList : org.w3c.dom.NodeList, translet : com.sun.org.apache.xalan.internal.xsltc.Translet, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Utility function used to convert references to DOMs.
	*/
	@:overload @:public @:static public static function referenceToResultTree(obj : Dynamic) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Utility function: used with nth position filters to convert a sequence
	* of nodes to just one single node (the one at position n).
	*/
	@:overload @:public @:static public static function getSingleNode(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public @:static public static function copy(obj : Dynamic, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, node : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Utility function to check if xsl:attribute has a valid qname
	* This method should only be invoked if the name attribute is an AVT
	*/
	@:overload @:public @:static public static function checkAttribQName(name : String) : Void;
	
	/**
	* Utility function to check if a name is a valid ncname
	* This method should only be invoked if the attribute value is an AVT
	*/
	@:overload @:public @:static public static function checkNCName(name : String) : Void;
	
	/**
	* Utility function to check if a name is a valid qname
	* This method should only be invoked if the attribute value is an AVT
	*/
	@:overload @:public @:static public static function checkQName(name : String) : Void;
	
	/**
	* Utility function for the implementation of xsl:element.
	*/
	@:overload @:public @:static public static function startXslElement(qname : String, namespace : String, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler, dom : com.sun.org.apache.xalan.internal.xsltc.DOM, node : Int) : String;
	
	/**
	* This function is used in the execution of xsl:element
	*/
	@:overload @:public @:static public static function getPrefix(qname : String) : String;
	
	@:overload @:public @:static public static function generatePrefix() : String;
	
	@:public @:static @:final public static var RUN_TIME_INTERNAL_ERR(default, null) : String;
	
	@:public @:static @:final public static var RUN_TIME_COPY_ERR(default, null) : String;
	
	@:public @:static @:final public static var DATA_CONVERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var EXTERNAL_FUNC_ERR(default, null) : String;
	
	@:public @:static @:final public static var EQUALITY_EXPR_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_ARGUMENT_ERR(default, null) : String;
	
	@:public @:static @:final public static var FORMAT_NUMBER_ERR(default, null) : String;
	
	@:public @:static @:final public static var ITERATOR_CLONE_ERR(default, null) : String;
	
	@:public @:static @:final public static var AXIS_SUPPORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var TYPED_AXIS_SUPPORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_ATTRIBUTE_ERR(default, null) : String;
	
	@:public @:static @:final public static var STRAY_NAMESPACE_ERR(default, null) : String;
	
	@:public @:static @:final public static var NAMESPACE_PREFIX_ERR(default, null) : String;
	
	@:public @:static @:final public static var DOM_ADAPTER_INIT_ERR(default, null) : String;
	
	@:public @:static @:final public static var PARSER_DTD_SUPPORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var NAMESPACES_SUPPORT_ERR(default, null) : String;
	
	@:public @:static @:final public static var CANT_RESOLVE_RELATIVE_URI_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNSUPPORTED_XSL_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNSUPPORTED_EXT_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNKNOWN_TRANSLET_VERSION_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_QNAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var INVALID_NCNAME_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNALLOWED_EXTENSION_FUNCTION_ERR(default, null) : String;
	
	@:public @:static @:final public static var UNALLOWED_EXTENSION_ELEMENT_ERR(default, null) : String;
	
	@:public @:final @:static public static var ERROR_MESSAGES_KEY(default, null) : String;
	
	/**
	* Print a run-time error message.
	*/
	@:overload @:public @:static public static function runTimeError(code : String) : Void;
	
	@:overload @:public @:static public static function runTimeError(code : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public @:static public static function runTimeError(code : String, arg0 : Dynamic) : Void;
	
	@:overload @:public @:static public static function runTimeError(code : String, arg0 : Dynamic, arg1 : Dynamic) : Void;
	
	@:overload @:public @:static public static function consoleOutput(msg : String) : Void;
	
	/**
	* Replace a certain character in a string with a new substring.
	*/
	@:overload @:public @:static public static function replace(base : String, ch : java.StdTypes.Char16, str : String) : String;
	
	@:overload @:public @:static public static function replace(base : String, delim : String, str : java.NativeArray<String>) : String;
	
	/**
	* Utility method to allow setting parameters of the form
	* {namespaceuri}localName
	* which get mapped to an instance variable in the class
	* Hence  a parameter of the form "{http://foo.bar}xyz"
	* will be replaced with the corresponding values
	* by the BasisLibrary's utility method mapQNametoJavaName
	* and thus get mapped to legal java variable names
	*/
	@:overload @:public @:static public static function mapQNameToJavaName(base : String) : String;
	
	
}
