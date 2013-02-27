package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
extern class XSGroupDecl implements com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition
{
	/**
	* The XML representation for a group declaration
	* schema component is a global <group> element information item
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @version $Id: XSGroupDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public var fName : String;
	
	public var fTargetNamespace : String;
	
	public var fModelGroup : com.sun.org.apache.xerces.internal.impl.xs.XSModelGroupImpl;
	
	public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
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
	* {model group} A model group.
	*/
	@:overload public function getModelGroup() : com.sun.org.apache.xerces.internal.xs.XSModelGroup;
	
	/**
	* Optional. Annotation.
	*/
	@:overload public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
