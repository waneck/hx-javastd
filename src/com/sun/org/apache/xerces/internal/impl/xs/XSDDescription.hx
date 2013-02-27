package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002, 2003,2004 The Apache Software Foundation.
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
extern class XSDDescription extends com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl implements com.sun.org.apache.xerces.internal.xni.grammars.XMLSchemaDescription
{
	/**
	* Indicate that this description was just initialized.
	*/
	public static var CONTEXT_INITIALIZE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the current schema document is <include>d by another
	* schema document.
	*/
	public static var CONTEXT_INCLUDE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the current schema document is <redefine>d by another
	* schema document.
	*/
	public static var CONTEXT_REDEFINE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the current schema document is <import>ed by another
	* schema document.
	*/
	public static var CONTEXT_IMPORT(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the current schema document is being preparsed.
	*/
	public static var CONTEXT_PREPARSE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the parse of the current schema document is triggered
	* by xsi:schemaLocation/noNamespaceSchemaLocation attribute(s) in the
	* instance document. This value is only used if we don't defer the loading
	* of schema documents.
	*/
	public static var CONTEXT_INSTANCE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the parse of the current schema document is triggered by
	* the occurrence of an element whose namespace is the target namespace
	* of this schema document. This value is only used if we do defer the
	* loading of schema documents until a component from that namespace is
	* referenced from the instance.
	*/
	public static var CONTEXT_ELEMENT(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the parse of the current schema document is triggered by
	* the occurrence of an attribute whose namespace is the target namespace
	* of this schema document. This value is only used if we do defer the
	* loading of schema documents until a component from that namespace is
	* referenced from the instance.
	*/
	public static var CONTEXT_ATTRIBUTE(default, null) : java.StdTypes.Int16;
	
	/**
	* Indicate that the parse of the current schema document is triggered by
	* the occurrence of an "xsi:type" attribute, whose value (a QName) has
	* the target namespace of this schema document as its namespace.
	* This value is only used if we do defer the loading of schema documents
	* until a component from that namespace is referenced from the instance.
	*/
	public static var CONTEXT_XSITYPE(default, null) : java.StdTypes.Int16;
	
	private var fContextType : java.StdTypes.Int16;
	
	private var fLocationHints : java.NativeArray<String>;
	
	private var fTriggeringComponent : com.sun.org.apache.xerces.internal.xni.QName;
	
	private var fEnclosedElementName : com.sun.org.apache.xerces.internal.xni.QName;
	
	private var fAttributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	/**
	* the type of the grammar (e.g., DTD or XSD);
	*
	* @see com.sun.org.apache.xerces.internal.xni.grammars.Grammar
	*/
	@:overload public function getGrammarType() : String;
	
	/**
	* Get the context. The returned value is one of the pre-defined
	* CONTEXT_xxx constants.
	*
	* @return  the value indicating the context
	*/
	@:overload public function getContextType() : java.StdTypes.Int16;
	
	/**
	* If the context is "include" or "redefine", then return the target
	* namespace of the enclosing schema document; otherwise, the expected
	* target namespace of this document.
	*
	* @return  the expected/enclosing target namespace
	*/
	@:overload public function getTargetNamespace() : String;
	
	/**
	* For import and references from the instance document, it's possible to
	* have multiple hints for one namespace. So this method returns an array,
	* which contains all location hints.
	*
	* @return  an array of all location hints associated to the expected
	*          target namespace
	*/
	@:overload public function getLocationHints() : java.NativeArray<String>;
	
	/**
	* If a call is triggered by an element/attribute/xsi:type in the instance,
	* this call returns the name of such triggering component: the name of
	* the element/attribute, or the value of the xsi:type.
	*
	* @return  the name of the triggering component
	*/
	@:overload public function getTriggeringComponent() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* If a call is triggered by an attribute or xsi:type, then this mehtod
	* returns the enclosing element of such element.
	*
	* @return  the name of the enclosing element
	*/
	@:overload public function getEnclosingElementName() : com.sun.org.apache.xerces.internal.xni.QName;
	
	/**
	* If a call is triggered by an element/attribute/xsi:type in the instance,
	* this call returns all attribute of such element (or enclosing element).
	*
	* @return  all attributes of the tiggering/enclosing element
	*/
	@:overload public function getAttributes() : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	@:overload public function fromInstance() : Bool;
	
	/**
	* Compares this grammar with the given grammar. Currently, we compare
	* the target namespaces.
	*
	* @param descObj The description of the grammar to be compared with
	* @return        True if they are equal, else false
	*/
	@:overload public function equals(descObj : Dynamic) : Bool;
	
	/**
	* Returns the hash code of this grammar
	*
	* @return The hash code
	*/
	@:overload override public function hashCode() : Int;
	
	@:overload public function setContextType(contextType : java.StdTypes.Int16) : Void;
	
	@:overload public function setTargetNamespace(targetNamespace : String) : Void;
	
	@:overload public function setLocationHints(locationHints : java.NativeArray<String>) : Void;
	
	@:overload public function setTriggeringComponent(triggeringComponent : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function setEnclosingElementName(enclosedElementName : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	@:overload public function setAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/**
	*  resets all the fields
	*/
	@:overload public function reset() : Void;
	
	@:overload public function makeClone() : XSDDescription;
	
	
}
