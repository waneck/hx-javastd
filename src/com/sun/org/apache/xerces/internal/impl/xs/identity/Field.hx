package com.sun.org.apache.xerces.internal.impl.xs.identity;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class Field
{
	/** Field XPath. */
	@:protected private var fXPath : com.sun.org.apache.xerces.internal.impl.xs.identity.Field.Field_XPath;
	
	/** Identity constraint. */
	@:protected private var fIdentityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/** Constructs a field. */
	@:overload @:public public function new(xpath : com.sun.org.apache.xerces.internal.impl.xs.identity.Field.Field_XPath, identityConstraint : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Void;
	
	/** Returns the field XPath. */
	@:overload @:public public function getXPath() : com.sun.org.apache.xerces.internal.impl.xpath.XPath;
	
	/** Returns the identity constraint. */
	@:overload @:public public function getIdentityConstraint() : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/** Creates a field matcher. */
	@:overload @:public public function createMatcher(activator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator, store : com.sun.org.apache.xerces.internal.impl.xs.identity.ValueStore) : com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher;
	
	/** Returns a string representation of this object. */
	@:overload @:public public function toString() : String;
	
	
}
/**
* Field XPath.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$identity$Field$XPath') extern class Field_XPath extends com.sun.org.apache.xerces.internal.impl.xpath.XPath
{
	/** Constructs a field XPath expression. */
	@:overload @:public override public function new(xpath : String, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	
}
/**
* Field matcher.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$identity$Field$Matcher') extern class Field_Matcher extends com.sun.org.apache.xerces.internal.impl.xs.identity.XPathMatcher
{
	/** Field activator. */
	@:protected private var fFieldActivator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator;
	
	/** Value store for data values. */
	@:protected private var fStore : com.sun.org.apache.xerces.internal.impl.xs.identity.ValueStore;
	
	/** Constructs a field matcher. */
	@:overload @:public public function new(xpath : com.sun.org.apache.xerces.internal.impl.xs.identity.Field.Field_XPath, activator : com.sun.org.apache.xerces.internal.impl.xs.identity.FieldActivator, store : com.sun.org.apache.xerces.internal.impl.xs.identity.ValueStore) : Void;
	
	/**
	* This method is called when the XPath handler matches the
	* XPath expression.
	*/
	@:overload @:protected override private function matched(actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList, isNil : Bool) : Void;
	
	@:overload @:protected override private function handleContent(type : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, nillable : Bool, actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	
}
