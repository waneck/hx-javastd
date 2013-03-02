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
extern class XSAttributeGroupDecl implements com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition
{
	/**
	* The XML representation for an attribute group declaration
	* schema component is a global <attributeGroup> element information item
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @author Rahul Srivastava, Sun Microsystems Inc.
	*
	* @version $Id: XSAttributeGroupDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public var fName : String;
	
	public var fTargetNamespace : String;
	
	public var fAttributeWC : com.sun.org.apache.xerces.internal.impl.xs.XSWildcardDecl;
	
	public var fIDAttrName : String;
	
	public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	private var fAttrUses : com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl;
	
	@:overload public function addAttributeUse(attrUse : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeUseImpl) : String;
	
	@:overload public function replaceAttributeUse(oldUse : com.sun.org.apache.xerces.internal.xs.XSAttributeUse, newUse : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeUseImpl) : Void;
	
	@:overload public function getAttributeUse(namespace : String, name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeUse;
	
	@:overload public function getAttributeUseNoProhibited(namespace : String, name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeUse;
	
	@:overload public function removeProhibitedAttrs() : Void;
	
	/**
	* Check that the attributes in this group validly restrict those from a base group.
	* If an error is found, an Object[] is returned. This contains the arguments for the error message
	* describing the error. The last element in the array (at index arr.length - 1) is the the error code.
	* Returns null if there is no error.
	*
	* REVISIT: is there a better way of returning the appropriate information for the error?
	*
	* @param typeName the name of the type containing this attribute group, used for error reporting purposes
	* @param baseGroup the XSAttributeGroupDecl that is the base we are checking against
	*/
	@:overload public function validRestrictionOf(typeName : String, baseGroup : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl) : java.NativeArray<Dynamic>;
	
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
	* {attribute uses} A set of attribute uses.
	*/
	@:overload public function getAttributeUses() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* {attribute wildcard} Optional. A wildcard.
	*/
	@:overload public function getAttributeWildcard() : com.sun.org.apache.xerces.internal.xs.XSWildcard;
	
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
