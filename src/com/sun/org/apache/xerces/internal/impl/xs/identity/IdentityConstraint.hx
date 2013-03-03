package com.sun.org.apache.xerces.internal.impl.xs.identity;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class IdentityConstraint implements com.sun.org.apache.xerces.internal.xs.XSIDCDefinition
{
	/** type */
	@:protected private var type : java.StdTypes.Int16;
	
	/** target namespace */
	@:protected private var fNamespace : String;
	
	/** Identity constraint name. */
	@:protected private var fIdentityConstraintName : String;
	
	/** name of owning element */
	@:protected private var fElementName : String;
	
	/** Selector. */
	@:protected private var fSelector : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector;
	
	/** Field count. */
	@:protected private var fFieldCount : Int;
	
	/** Fields. */
	@:protected private var fFields : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.identity.Field>;
	
	@:protected private var fAnnotations : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.XSAnnotationImpl>;
	
	@:protected private var fNumAnnotations : Int;
	
	/** Default constructor. */
	@:overload @:protected private function new(namespace : String, identityConstraintName : String, elemName : String) : Void;
	
	/** Returns the identity constraint name. */
	@:overload @:public public function getIdentityConstraintName() : String;
	
	/** Sets the selector. */
	@:overload @:public public function setSelector(selector : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector) : Void;
	
	/** Returns the selector. */
	@:overload @:public public function getSelector() : com.sun.org.apache.xerces.internal.impl.xs.identity.Selector;
	
	/** Adds a field. */
	@:overload @:public public function addField(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field) : Void;
	
	/** Returns the field count. */
	@:overload @:public public function getFieldCount() : Int;
	
	/** Returns the field at the specified index. */
	@:overload @:public public function getFieldAt(index : Int) : com.sun.org.apache.xerces.internal.impl.xs.identity.Field;
	
	@:overload @:public public function getElementName() : String;
	
	/** Returns a string representation of this object. */
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(id : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Bool;
	
	/**
	* Get the type of the object, i.e ELEMENT_DECLARATION.
	*/
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	/**
	* The <code>name</code> of this <code>XSObject</code> depending on the
	* <code>XSObject</code> type.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified.  defines how a namespace URI is attached to schema
	* components.
	*/
	@:overload @:public public function getNamespace() : String;
	
	/**
	* {identity-constraint category} One of key, keyref or unique.
	*/
	@:overload @:public public function getCategory() : java.StdTypes.Int16;
	
	/**
	* {selector} A restricted XPath ([XPath]) expression
	*/
	@:overload @:public public function getSelectorStr() : String;
	
	/**
	* {fields} A non-empty list of restricted XPath ([XPath]) expressions.
	*/
	@:overload @:public public function getFieldStrs() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* {referenced key} Required if {identity-constraint category} is keyref,
	* forbidden otherwise. An identity-constraint definition with
	* {identity-constraint category} equal to key or unique.
	*/
	@:overload @:public public function getRefKey() : com.sun.org.apache.xerces.internal.xs.XSIDCDefinition;
	
	/**
	* Optional. Annotation.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload @:public public function addAnnotation(annotation : com.sun.org.apache.xerces.internal.impl.xs.XSAnnotationImpl) : Void;
	
	
}
