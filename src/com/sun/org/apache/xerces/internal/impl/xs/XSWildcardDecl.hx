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
extern class XSWildcardDecl implements com.sun.org.apache.xerces.internal.xs.XSWildcard
{
	/**
	* The XML representation for a wildcard declaration
	* schema component is an <any> or <anyAttribute> element information item
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @author Rahul Srivastava, Sun Microsystems Inc.
	*
	* @version $Id: XSWildcardDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public static var ABSENT(default, null) : String;
	
	public var fType : java.StdTypes.Int16;
	
	public var fProcessContents : java.StdTypes.Int16;
	
	public var fNamespaceList : java.NativeArray<String>;
	
	public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* Validation Rule: Wildcard allows Namespace Name
	*/
	@:overload public function allowNamespace(namespace : String) : Bool;
	
	/**
	*  Schema Component Constraint: Wildcard Subset
	*/
	@:overload public function isSubsetOf(superWildcard : XSWildcardDecl) : Bool;
	
	/**
	* Check whether this wildcard has a weaker process contents than the super.
	*/
	@:overload public function weakerProcessContents(superWildcard : XSWildcardDecl) : Bool;
	
	/**
	* Schema Component Constraint: Attribute Wildcard Union
	*/
	@:overload public function performUnionWith(wildcard : XSWildcardDecl, processContents : java.StdTypes.Int16) : XSWildcardDecl;
	
	/**
	* Schema Component Constraint: Attribute Wildcard Intersection
	*/
	@:overload public function performIntersectionWith(wildcard : XSWildcardDecl, processContents : java.StdTypes.Int16) : XSWildcardDecl;
	
	@:overload public function toString() : String;
	
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
	* Namespace constraint: A constraint type: any, not, list.
	*/
	@:overload public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* Namespace constraint. For <code>constraintType</code>
	* LIST_NSCONSTRAINT, the list contains allowed namespaces. For
	* <code>constraintType</code> NOT_NSCONSTRAINT, the list contains
	* disallowed namespaces.
	*/
	@:overload public function getNsConstraintList() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* {process contents} One of skip, lax or strict. Valid constants values
	* are: PC_SKIP, PC_LAX, PC_STRICT.
	*/
	@:overload public function getProcessContents() : java.StdTypes.Int16;
	
	/**
	* String valid of {process contents}. One of "skip", "lax" or "strict".
	*/
	@:overload public function getProcessContentsAsString() : String;
	
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
