package com.sun.org.apache.xerces.internal.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
* This interface represents the Complex Type Definition schema component.
*/
extern interface XSComplexTypeDefinition extends com.sun.org.apache.xerces.internal.xs.XSTypeDefinition
{
	/**
	* [derivation method]: either <code>DERIVATION_EXTENSION</code>,
	* <code>DERIVATION_RESTRICTION</code>, or <code>DERIVATION_NONE</code>
	* (see <code>XSConstants</code>).
	*/
	@:overload public function getDerivationMethod() : java.StdTypes.Int16;
	
	/**
	* [abstract]: a boolean. Complex types for which <code>abstract</code> is
	* true must not be used as the type definition for the validation of
	* element information items.
	*/
	@:overload public function getAbstract() : Bool;
	
	/**
	*  A set of attribute uses if it exists, otherwise an empty
	* <code>XSObjectList</code>.
	*/
	@:overload public function getAttributeUses() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* An attribute wildcard if it exists, otherwise <code>null</code>.
	*/
	@:overload public function getAttributeWildcard() : com.sun.org.apache.xerces.internal.xs.XSWildcard;
	
	/**
	* [content type]: one of empty (<code>CONTENTTYPE_EMPTY</code>), a simple
	* type definition (<code>CONTENTTYPE_SIMPLE</code>), mixed (
	* <code>CONTENTTYPE_MIXED</code>), or element-only (
	* <code>CONTENTTYPE_ELEMENT</code>).
	*/
	@:overload public function getContentType() : java.StdTypes.Int16;
	
	/**
	* A simple type definition corresponding to a simple content model,
	* otherwise <code>null</code>.
	*/
	@:overload public function getSimpleType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* A particle for a mixed or element-only content model, otherwise
	* <code>null</code>.
	*/
	@:overload public function getParticle() : com.sun.org.apache.xerces.internal.xs.XSParticle;
	
	/**
	* [prohibited substitutions]: a subset of {extension, restriction}
	* @param restriction  Extension or restriction constants (see
	*   <code>XSConstants</code>).
	* @return True if <code>restriction</code> is a prohibited substitution,
	*   otherwise false.
	*/
	@:overload public function isProhibitedSubstitution(restriction : java.StdTypes.Int16) : Bool;
	
	/**
	*  [prohibited substitutions]: A subset of {extension, restriction} or
	* <code>DERIVATION_NONE</code> represented as a bit flag (see
	* <code>XSConstants</code>).
	*/
	@:overload public function getProhibitedSubstitutions() : java.StdTypes.Int16;
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
