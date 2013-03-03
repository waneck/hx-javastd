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
extern class Selector
{
	/** XPath. */
	@:protected @:final private var fXPath(default, null) : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector.Selector_XPath;
	
	/** Identity constraint. */
	@:protected @:final private var fIdentityConstraint(default, null) : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	@:protected private var fIDConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/** Constructs a selector. */
	@:overload @:public public function new(xpath : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector.Selector_XPath, identityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Void;
	
	/** Returns the selector XPath. */
	@:overload @:public public function getXPath() : com.sun.org.apache.xerces.internal.impl.xpath.XPath;
	
	/** Returns the identity constraint. */
	@:overload @:public public function getIDConstraint() : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/** Creates a selector matcher.
	* @param activator     The activator for this selector's fields.
	* @param initialDepth  The depth in the document at which this matcher began its life;
	*                          used in correctly handling recursive elements.
	*/
	@:overload @:public public function createMatcher(activator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator, initialDepth : Int) : com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher;
	
	/** Returns a string representation of this object. */
	@:overload @:public public function toString() : String;
	
	
}
/**
* Schema identity constraint selector XPath expression.
*
* @author Andy Clark, IBM
* @version $Id: Selector.java,v 1.7 2010-11-01 04:39:57 joehw Exp $
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$identity$Selector$XPath') extern class Selector_XPath extends com.sun.org.apache.xerces.internal.impl.xpath.XPath
{
	/** Constructs a selector XPath expression. */
	@:overload @:public override public function new(xpath : String, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	
}
/**
* Selector matcher.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$identity$Selector$Matcher') extern class Selector_Matcher extends com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher
{
	/** Field activator. */
	@:protected @:final private var fFieldActivator(default, null) : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator;
	
	/** Initial depth in the document at which this matcher was created. */
	@:protected @:final private var fInitialDepth(default, null) : Int;
	
	/** Element depth. */
	@:protected private var fElementDepth : Int;
	
	/** Depth at match. */
	@:protected private var fMatchedDepth : Int;
	
	/** Constructs a selector matcher. */
	@:overload @:public public function new(xpath : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector.Selector_XPath, activator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator, initialDepth : Int) : Void;
	
	@:overload @:public override public function startDocumentFragment() : Void;
	
	/**
	* The start of an element. If the document specifies the start element
	* by using an empty tag, then the startElement method will immediately
	* be followed by the endElement method, with no intervening methods.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	*
	*/
	@:overload @:public override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	@:overload @:public override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, type : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, nillable : Bool, actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	/** Returns the identity constraint. */
	@:overload @:public public function getIdentityConstraint() : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/** get the initial depth at which this selector matched. */
	@:overload @:public public function getInitialDepth() : Int;
	
	
}
