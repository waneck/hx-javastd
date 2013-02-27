package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
/**
* Attribute namespace implementation; stores PSVI attribute items.
*
* @xerces.internal
*
* @author Sandy Gao, IBM
*
*/
extern class PSVIAttrNSImpl extends com.sun.org.apache.xerces.internal.dom.AttrNSImpl implements com.sun.org.apache.xerces.internal.xs.AttributePSVI
{
	/**
	* Construct an attribute node.
	*/
	@:overload public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, namespaceURI : String, qualifiedName : String, localName : String) : Void;
	
	/**
	* Construct an attribute node.
	*/
	@:overload public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, namespaceURI : String, qualifiedName : String) : Void;
	
	/** attribute declaration */
	private var fDeclaration : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/** type of attribute, simpleType */
	private var fTypeDecl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/** If this attribute was explicitly given a
	* value in the original document, this is true; otherwise, it is false  */
	private var fSpecified : Bool;
	
	/** schema normalized value property */
	private var fNormalizedValue : String;
	
	/** schema actual value */
	private var fActualValue : Dynamic;
	
	/** schema actual value type */
	private var fActualValueType : java.StdTypes.Int16;
	
	/** actual value types if the value is a list */
	private var fItemValueTypes : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/** member type definition against which attribute was validated */
	private var fMemberType : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/** validation attempted: none, partial, full */
	private var fValidationAttempted : java.StdTypes.Int16;
	
	/** validity: valid, invalid, unknown */
	private var fValidity : java.StdTypes.Int16;
	
	/** error codes */
	private var fErrorCodes : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/** validation context: could be QName or XPath expression*/
	private var fValidationContext : String;
	
	/**
	* [schema default]
	*
	* @return The canonical lexical representation of the declaration's {value constraint} value.
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_default>XML Schema Part 1: Structures [schema default]</a>
	*/
	@:overload public function getSchemaDefault() : String;
	
	/**
	* [schema normalized value]
	*
	*
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_normalized_value>XML Schema Part 1: Structures [schema normalized value]</a>
	* @return the normalized value of this item after validation
	*/
	@:overload public function getSchemaNormalizedValue() : String;
	
	/**
	* [schema specified]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_specified">XML Schema Part 1: Structures [schema specified]</a>
	* @return false value was specified in schema, true value comes from the infoset
	*/
	@:overload public function getIsSchemaSpecified() : Bool;
	
	/**
	* Determines the extent to which the document has been validated
	*
	* @return return the [validation attempted] property. The possible values are
	*         NO_VALIDATION, PARTIAL_VALIDATION and FULL_VALIDATION
	*/
	@:overload public function getValidationAttempted() : java.StdTypes.Int16;
	
	/**
	* Determine the validity of the node with respect
	* to the validation being attempted
	*
	* @return return the [validity] property. Possible values are:
	*         UNKNOWN_VALIDITY, INVALID_VALIDITY, VALID_VALIDITY
	*/
	@:overload public function getValidity() : java.StdTypes.Int16;
	
	/**
	* A list of error codes generated from validation attempts.
	* Need to find all the possible subclause reports that need reporting
	*
	* @return list of error codes
	*/
	@:overload public function getErrorCodes() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload public function getValidationContext() : String;
	
	/**
	* An item isomorphic to the type definition used to validate this element.
	*
	* @return  a type declaration
	*/
	@:overload public function getTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* If and only if that type definition is a simple type definition
	* with {variety} union, or a complex type definition whose {content type}
	* is a simple thype definition with {variety} union, then an item isomorphic
	* to that member of the union's {member type definitions} which actually
	* validated the element item's normalized value.
	*
	* @return  a simple type declaration
	*/
	@:overload public function getMemberTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* An item isomorphic to the attribute declaration used to validate
	* this attribute.
	*
	* @return  an attribute declaration
	*/
	@:overload public function getAttributeDeclaration() : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Copy PSVI properties from another psvi item.
	*
	* @param attr  the source of attribute PSVI items
	*/
	@:overload public function setPSVI(attr : com.sun.org.apache.xerces.internal.xs.AttributePSVI) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getActualNormalizedValue()
	*/
	@:overload public function getActualNormalizedValue() : Dynamic;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getActualNormalizedValueType()
	*/
	@:overload public function getActualNormalizedValueType() : java.StdTypes.Int16;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getItemValueTypes()
	*/
	@:overload public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	
}
