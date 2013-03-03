package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class AttributePSVImpl implements com.sun.org.apache.xerces.internal.xs.AttributePSVI
{
	/** attribute declaration */
	@:protected private var fDeclaration : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/** type of attribute, simpleType */
	@:protected private var fTypeDecl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/** If this attribute was explicitly given a
	* value in the original document, this is false; otherwise, it is true */
	@:protected private var fSpecified : Bool;
	
	/** schema normalized value property */
	@:protected private var fNormalizedValue : String;
	
	/** schema actual value */
	@:protected private var fActualValue : Dynamic;
	
	/** schema actual value type */
	@:protected private var fActualValueType : java.StdTypes.Int16;
	
	/** actual value types if the value is a list */
	@:protected private var fItemValueTypes : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/** member type definition against which attribute was validated */
	@:protected private var fMemberType : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/** validation attempted: none, partial, full */
	@:protected private var fValidationAttempted : java.StdTypes.Int16;
	
	/** validity: valid, invalid, unknown */
	@:protected private var fValidity : java.StdTypes.Int16;
	
	/** error codes */
	@:protected private var fErrorCodes : java.NativeArray<String>;
	
	/** validation context: could be QName or XPath expression*/
	@:protected private var fValidationContext : String;
	
	/**
	* [schema default]
	*
	* @return The canonical lexical representation of the declaration's {value constraint} value.
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_default>XML Schema Part 1: Structures [schema default]</a>
	*/
	@:overload @:public public function getSchemaDefault() : String;
	
	/**
	* [schema normalized value]
	*
	*
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_normalized_value>XML Schema Part 1: Structures [schema normalized value]</a>
	* @return the normalized value of this item after validation
	*/
	@:overload @:public public function getSchemaNormalizedValue() : String;
	
	/**
	* [schema specified]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_specified">XML Schema Part 1: Structures [schema specified]</a>
	* @return true - value was specified in schema, false - value comes from the infoset
	*/
	@:overload @:public public function getIsSchemaSpecified() : Bool;
	
	/**
	* Determines the extent to which the document has been validated
	*
	* @return return the [validation attempted] property. The possible values are
	*         NO_VALIDATION, PARTIAL_VALIDATION and FULL_VALIDATION
	*/
	@:overload @:public public function getValidationAttempted() : java.StdTypes.Int16;
	
	/**
	* Determine the validity of the node with respect
	* to the validation being attempted
	*
	* @return return the [validity] property. Possible values are:
	*         UNKNOWN_VALIDITY, INVALID_VALIDITY, VALID_VALIDITY
	*/
	@:overload @:public public function getValidity() : java.StdTypes.Int16;
	
	/**
	* A list of error codes generated from validation attempts.
	* Need to find all the possible subclause reports that need reporting
	*
	* @return list of error codes
	*/
	@:overload @:public public function getErrorCodes() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload @:public public function getValidationContext() : String;
	
	/**
	* An item isomorphic to the type definition used to validate this element.
	*
	* @return  a type declaration
	*/
	@:overload @:public public function getTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* If and only if that type definition is a simple type definition
	* with {variety} union, or a complex type definition whose {content type}
	* is a simple thype definition with {variety} union, then an item isomorphic
	* to that member of the union's {member type definitions} which actually
	* validated the element item's normalized value.
	*
	* @return  a simple type declaration
	*/
	@:overload @:public public function getMemberTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* An item isomorphic to the attribute declaration used to validate
	* this attribute.
	*
	* @return  an attribute declaration
	*/
	@:overload @:public public function getAttributeDeclaration() : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getActualNormalizedValue()
	*/
	@:overload @:public public function getActualNormalizedValue() : Dynamic;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getActualNormalizedValueType()
	*/
	@:overload @:public public function getActualNormalizedValueType() : java.StdTypes.Int16;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xs.ItemPSVI#getItemValueTypes()
	*/
	@:overload @:public public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/**
	* Reset()
	*/
	@:overload @:public public function reset() : Void;
	
	
}
