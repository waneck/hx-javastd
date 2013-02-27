package com.sun.org.apache.xerces.internal.impl.xs.identity;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XPathMatcher
{
	/** Compile to true to debug everything. */
	private static var DEBUG_ALL(default, null) : Bool;
	
	/** Compile to true to debug method callbacks. */
	private static var DEBUG_METHODS(default, null) : Bool;
	
	/** Compile to true to debug important method callbacks. */
	private static var DEBUG_METHODS2(default, null) : Bool;
	
	/** Compile to true to debug the <em>really</em> important methods. */
	private static var DEBUG_METHODS3(default, null) : Bool;
	
	/** Compile to true to debug match. */
	private static var DEBUG_MATCH(default, null) : Bool;
	
	/** Compile to true to debug step index stack. */
	private static var DEBUG_STACK(default, null) : Bool;
	
	/** Don't touch this value unless you add more debug constants. */
	private static var DEBUG_ANY(default, null) : Bool;
	
	private static var MATCHED(default, null) : Int;
	
	private static var MATCHED_ATTRIBUTE(default, null) : Int;
	
	private static var MATCHED_DESCENDANT(default, null) : Int;
	
	private static var MATCHED_DESCENDANT_PREVIOUS(default, null) : Int;
	
	/** The matching string. */
	private var fMatchedString : Dynamic;
	
	/**
	* Constructs an XPath matcher that implements a document fragment
	* handler.
	*
	* @param xpath   The xpath.
	*/
	@:overload public function new(xpath : com.sun.org.apache.xerces.internal.impl.xpath.XPath) : Void;
	
	/**
	* Returns value of first member of fMatched that
	* is nonzero.
	*/
	@:overload public function isMatched() : Bool;
	
	@:overload private function handleContent(type : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, nillable : Bool, value : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	/**
	* This method is called when the XPath handler matches the
	* XPath expression. Subclasses can override this method to
	* provide default handling upon a match.
	*/
	@:overload private function matched(actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList, isNil : Bool) : Void;
	
	/**
	* The start of the document fragment.
	*/
	@:overload public function startDocumentFragment() : Void;
	
	/**
	* The start of an element. If the document specifies the start element
	* by using an empty tag, then the startElement method will immediately
	* be followed by the endElement method, with no intervening methods.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	*
	* @throws SAXException Thrown by handler to signal an error.
	*/
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/**
	* @param element
	*        name of the element.
	* @param type
	*        content type of this element. IOW, the XML schema type
	*        of the <tt>value</tt>. Note that this may not be the type declared
	*        in the element declaration, but it is "the actual type". For example,
	*        if the XML is &lt;foo xsi:type="xs:string">aaa&lt;/foo>, this
	*        parameter will be "xs:string".
	* @param nillable - nillable
	*        true if the element declaration is nillable.
	* @param value - actual value
	*        the typed value of the content of this element.
	*/
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, type : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, nillable : Bool, value : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
