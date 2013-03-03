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
extern class XSNotationDecl implements com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration
{
	/**
	* The XML representation for a NOTATION declaration
	* schema component is a global <notation> element information item
	*
	* @xerces.internal
	*
	* @author Rahul Srivastava, Sun Microsystems Inc.
	* @version $Id: XSNotationDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	@:public public var fName : String;
	
	@:public public var fTargetNamespace : String;
	
	@:public public var fPublicId : String;
	
	@:public public var fSystemId : String;
	
	@:public public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
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
	* Optional if {public identifier} is present. A URI reference.
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* Optional if {system identifier} is present. A public identifier,
	* as defined in [XML 1.0 (Second Edition)].
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* Optional. Annotation.
	*/
	@:overload @:public public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
