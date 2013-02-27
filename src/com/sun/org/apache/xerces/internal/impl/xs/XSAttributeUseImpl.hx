package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class XSAttributeUseImpl implements com.sun.org.apache.xerces.internal.xs.XSAttributeUse
{
	/**
	* The XML representation for an attribute use
	* schema component is a local <attribute> element information item
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @version $Id: XSAttributeUseImpl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public var fAttrDecl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl;
	
	public var fUse : java.StdTypes.Int16;
	
	public var fConstraintType : java.StdTypes.Int16;
	
	public var fDefault : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;
	
	public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
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
	* {required} determines whether this use of an attribute declaration
	* requires an appropriate attribute information item to be present, or
	* merely allows it.
	*/
	@:overload public function getRequired() : Bool;
	
	/**
	* {attribute declaration} provides the attribute declaration itself,
	* which will in turn determine the simple type definition used.
	*/
	@:overload public function getAttrDeclaration() : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Value Constraint: one of default, fixed.
	*/
	@:overload public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* Value Constraint: The actual value (with respect to the {type
	* definition}).
	*/
	@:overload public function getConstraintValue() : String;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload public function getActualVC() : Dynamic;
	
	@:overload public function getActualVCType() : java.StdTypes.Int16;
	
	@:overload public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/**
	* Optional. Annotations.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
