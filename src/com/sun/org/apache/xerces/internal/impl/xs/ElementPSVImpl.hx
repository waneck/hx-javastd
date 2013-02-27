package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004,2005 The Apache Software Foundation.
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
extern class ElementPSVImpl implements com.sun.org.apache.xerces.internal.xs.ElementPSVI
{
	/** element declaration */
	private var fDeclaration : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/** type of element, could be xsi:type */
	private var fTypeDecl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/** true if clause 3.2 of Element Locally Valid (Element) (3.3.4)
	* is satisfied, otherwise false
	*/
	private var fNil : Bool;
	
	/** true if the element value was provided by the schema; false otherwise.
	*/
	private var fSpecified : Bool;
	
	/** schema normalized value property */
	private var fNormalizedValue : String;
	
	/** schema actual value */
	private var fActualValue : Dynamic;
	
	/** schema actual value type */
	private var fActualValueType : java.StdTypes.Int16;
	
	/** actual value types if the value is a list */
	private var fItemValueTypes : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/** http://www.w3.org/TR/xmlschema-1/#e-notation*/
	private var fNotation : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	/** member type definition against which element was validated */
	private var fMemberType : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/** validation attempted: none, partial, full */
	private var fValidationAttempted : java.StdTypes.Int16;
	
	/** validity: valid, invalid, unknown */
	private var fValidity : java.StdTypes.Int16;
	
	/** error codes */
	private var fErrorCodes : java.NativeArray<String>;
	
	/** validation context: could be QName or XPath expression*/
	private var fValidationContext : String;
	
	/** deferred XSModel **/
	private var fGrammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>;
	
	/** the schema information property */
	private var fSchemaInformation : com.sun.org.apache.xerces.internal.xs.XSModel;
	
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
	* @return true - value was specified in schema, false - value comes from the infoset
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
	* @return Array of error codes
	*/
	@:overload public function getErrorCodes() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	@:overload public function getValidationContext() : String;
	
	/**
	* [nil]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-nil>XML Schema Part 1: Structures [nil]</a>
	* @return true if clause 3.2 of Element Locally Valid (Element) (3.3.4) above is satisfied, otherwise false
	*/
	@:overload public function getNil() : Bool;
	
	/**
	* [notation]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-notation>XML Schema Part 1: Structures [notation]</a>
	* @return The notation declaration.
	*/
	@:overload public function getNotation() : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
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
	* An item isomorphic to the element declaration used to validate
	* this element.
	*
	* @return  an element declaration
	*/
	@:overload public function getElementDeclaration() : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* [schema information]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#e-schema_information">XML Schema Part 1: Structures [schema information]</a>
	* @return The schema information property if it's the validation root,
	*         null otherwise.
	*/
	@:overload @:synchronized public function getSchemaInformation() : com.sun.org.apache.xerces.internal.xs.XSModel;
	
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
	
	/**
	* Reset() should be called in validator startElement(..) method.
	*/
	@:overload public function reset() : Void;
	
	
}
