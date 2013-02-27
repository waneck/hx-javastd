package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class XSComplexTypeDecl implements com.sun.org.apache.xerces.internal.xs.XSComplexTypeDefinition implements org.w3c.dom.TypeInfo
{
	@:overload public function new() : Void;
	
	@:overload public function setValues(name : String, targetNamespace : String, baseType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivedBy : java.StdTypes.Int16, schemaFinal : java.StdTypes.Int16, block : java.StdTypes.Int16, contentType : java.StdTypes.Int16, isAbstract : Bool, attrGrp : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, simpleType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, particle : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, annotations : com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl) : Void;
	
	@:overload public function setName(name : String) : Void;
	
	@:overload public function getTypeCategory() : java.StdTypes.Int16;
	
	@:overload public function getTypeName() : String;
	
	@:overload public function getFinalSet() : java.StdTypes.Int16;
	
	@:overload public function getTargetNamespace() : String;
	
	@:overload public function containsTypeID() : Bool;
	
	@:overload public function setIsAbstractType() : Void;
	
	@:overload public function setContainsTypeID() : Void;
	
	@:overload public function setIsAnonymous() : Void;
	
	@:overload public function getContentModel(cmBuilder : com.sun.org.apache.xerces.internal.impl.xs.models.CMBuilder) : com.sun.org.apache.xerces.internal.impl.xs.models.XSCMValidator;
	
	@:overload public function getAttrGrp() : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl;
	
	@:overload public function toString() : String;
	
	@:overload public function derivedFromType(ancestor : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivationMethod : java.StdTypes.Int16) : Bool;
	
	@:overload public function derivedFrom(ancestorNS : String, ancestorName : String, derivationMethod : java.StdTypes.Int16) : Bool;
	
	/**
	* Checks if a type is derived from another given the the name, namespace
	* and derivation method. See:
	* http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#TypeInfo-isDerivedFrom
	*
	* @param ancestorNS
	*            The namspace of the ancestor type declaration
	* @param ancestorName
	*            The name of the ancestor type declaration
	* @param derivationMethod
	*            The derivation method
	*
	* @return boolean True if the ancestor type is derived from the reference
	*         type by the specifiied derivation method.
	*/
	@:overload public function isDOMDerivedFrom(ancestorNS : String, ancestorName : String, derivationMethod : Int) : Bool;
	
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
	* A boolean that specifies if the type definition is anonymous.
	* Convenience attribute. This is a field is not part of
	* XML Schema component model.
	*/
	@:overload public function getAnonymous() : Bool;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified.  defines how a namespace URI is attached to schema
	* components.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* {base type definition} Either a simple type definition or a complex
	* type definition.
	*/
	@:overload public function getBaseType() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* {derivation method} Either extension or restriction. The valid constant
	* value for this <code>XSConstants</code> EXTENTION, RESTRICTION.
	*/
	@:overload public function getDerivationMethod() : java.StdTypes.Int16;
	
	/**
	* {final} For complex type definition it is a subset of {extension,
	* restriction}. For simple type definition it is a subset of
	* {extension, list, restriction, union}.
	* @param derivation  Extension, restriction, list, union constants
	*   (defined in <code>XSConstants</code>).
	* @return True if derivation is in the final set, otherwise false.
	*/
	@:overload public function isFinal(derivation : java.StdTypes.Int16) : Bool;
	
	/**
	* {final} For complex type definition it is a subset of {extension, restriction}.
	*
	* @return A bit flag that represents:
	*         {extension, restriction) or none for complexTypes;
	*         {extension, list, restriction, union} or none for simpleTypes;
	*/
	@:overload public function getFinal() : java.StdTypes.Int16;
	
	/**
	* {abstract} A boolean. Complex types for which {abstract} is true must
	* not be used as the {type definition} for the validation of element
	* information items.
	*/
	@:overload public function getAbstract() : Bool;
	
	/**
	*  {attribute uses} A set of attribute uses.
	*/
	@:overload public function getAttributeUses() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* {attribute wildcard} Optional. A wildcard.
	*/
	@:overload public function getAttributeWildcard() : com.sun.org.apache.xerces.internal.xs.XSWildcard;
	
	/**
	* {content type} One of empty, a simple type definition (see
	* <code>simpleType</code>, or mixed, element-only (see
	* <code>cmParticle</code>).
	*/
	@:overload public function getContentType() : java.StdTypes.Int16;
	
	/**
	* A simple type definition corresponding to simple content model,
	* otherwise <code>null</code>
	*/
	@:overload public function getSimpleType() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* A particle for mixed or element-only content model, otherwise
	* <code>null</code>
	*/
	@:overload public function getParticle() : com.sun.org.apache.xerces.internal.xs.XSParticle;
	
	/**
	* {prohibited substitutions} A subset of {extension, restriction}.
	* @param prohibited  extention or restriction constants (defined in
	*   <code>XSConstants</code>).
	* @return True if prohibited is a prohibited substitution, otherwise
	*   false.
	*/
	@:overload public function isProhibitedSubstitution(prohibited : java.StdTypes.Int16) : Bool;
	
	/**
	* {prohibited substitutions}
	*
	* @return A bit flag corresponding to prohibited substitutions
	*/
	@:overload public function getProhibitedSubstitutions() : java.StdTypes.Int16;
	
	/**
	* Optional. Annotation.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	/* (non-Javadoc)
	* @see org.apache.xerces.xs.XSComplexTypeDefinition#getAttributeUse(java.lang.String, java.lang.String)
	*/
	@:overload public function getAttributeUse(namespace : String, name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeUse;
	
	@:overload public function getTypeNamespace() : String;
	
	@:overload public function isDerivedFrom(typeNamespaceArg : String, typeNameArg : String, derivationMethod : Int) : Bool;
	
	
}
