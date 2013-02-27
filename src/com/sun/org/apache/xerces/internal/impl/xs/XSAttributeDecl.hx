package com.sun.org.apache.xerces.internal.impl.xs;
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
extern class XSAttributeDecl implements com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration
{
	/**
	* The XML representation for an attribute declaration
	* schema component is an <attribute> element information item
	*
	* @xerces.internal
	*
	* @author Elena Litani, IBM
	* @author Sandy Gao, IBM
	* @version $Id: XSAttributeDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public static var SCOPE_ABSENT(default, null) : java.StdTypes.Int16;
	
	public static var SCOPE_GLOBAL(default, null) : java.StdTypes.Int16;
	
	public static var SCOPE_LOCAL(default, null) : java.StdTypes.Int16;
	
	public var fUnresolvedTypeName : com.sun.org.apache.xerces.internal.xni.QName;
	
	@:overload public function setValues(name : String, targetNamespace : String, simpleType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, constraintType : java.StdTypes.Int16, scope : java.StdTypes.Int16, valInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo, enclosingCT : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, annotations : com.sun.org.apache.xerces.internal.xs.XSObjectList) : Void;
	
	@:overload public function reset() : Void;
	
	/**
	* Get the type of the object, i.e ELEMENT_DECLARATION.
	*/
	@:overload public function getType() : java.StdTypes.Int16;
	
	/**
	* The <code>name</code> of this <code>XSObject</code> depending on the
	* <code>XSObject</code> type.
	*/
	@:overload public function getName() : String;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified.  defines how a namespace URI is attached to schema
	* components.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* A simple type definition
	*/
	@:overload public function getTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* Optional. Either global or a complex type definition (
	* <code>ctDefinition</code>). This property is absent in the case of
	* declarations within attribute group definitions: their scope will be
	* determined when they are used in the construction of complex type
	* definitions.
	*/
	@:overload public function getScope() : java.StdTypes.Int16;
	
	/**
	* Locally scoped declarations are available for use only within the
	* complex type definition identified by the <code>scope</code>
	* property.
	*/
	@:overload public function getEnclosingCTDefinition() : com.sun.org.apache.xerces.internal.xs.XSComplexTypeDefinition;
	
	/**
	* Value constraint: one of default, fixed.
	*/
	@:overload public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* Value constraint: The actual value (with respect to the {type
	* definition}) Should we return Object instead of DOMString?
	*/
	@:overload public function getConstraintValue() : String;
	
	/**
	* Optional. Annotation.
	*/
	@:overload public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function getValInfo() : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload public function getActualVC() : Dynamic;
	
	@:overload public function getActualVCType() : java.StdTypes.Int16;
	
	@:overload public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	
}
