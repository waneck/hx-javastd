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
extern class SchemaGrammar implements com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar implements com.sun.org.apache.xerces.internal.xs.XSNamespaceItem
{
	@:overload private function new() : Void;
	
	/**
	* Default constructor.
	*
	* @param targetNamespace
	* @param grammarDesc the XMLGrammarDescription corresponding to this objec
	*          at the least a systemId should always be known.
	* @param symbolTable   needed for annotation support
	*/
	@:overload public function new(targetNamespace : String, grammarDesc : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function new(grammar : SchemaGrammar) : Void;
	
	@:overload public function getGrammarDescription() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	@:overload public function isNamespaceAware() : Bool;
	
	@:overload public function setImportedGrammars(importedGrammars : java.util.Vector<Dynamic>) : Void;
	
	@:overload public function getImportedGrammars() : java.util.Vector<Dynamic>;
	
	/**
	* Returns this grammar's target namespace.
	*/
	@:overload @:final public function getTargetNamespace() : String;
	
	/**
	* register one global attribute
	*/
	@:overload public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl) : Void;
	
	@:overload public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl, location : String) : Void;
	
	/**
	* register one global attribute group
	*/
	@:overload public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl) : Void;
	
	@:overload public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, location : String) : Void;
	
	/**
	* register one global element
	*/
	@:overload public function addGlobalElementDeclAll(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, location : String) : Void;
	
	/**
	* register one global group
	*/
	@:overload public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl) : Void;
	
	@:overload public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, location : String) : Void;
	
	/**
	* register one global notation
	*/
	@:overload public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl) : Void;
	
	@:overload public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl, location : String) : Void;
	
	/**
	* register one global type
	*/
	@:overload public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition) : Void;
	
	@:overload public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, location : String) : Void;
	
	/**
	* register one global complex type
	*/
	@:overload public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : Void;
	
	@:overload public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, location : String) : Void;
	
	/**
	* register one global simple type
	*/
	@:overload public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType) : Void;
	
	@:overload public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, location : String) : Void;
	
	/**
	* register one identity constraint
	*/
	@:overload @:final public function addIDConstraintDecl(elmDecl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, decl : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Void;
	
	@:overload @:final public function addIDConstraintDecl(elmDecl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, decl : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint, location : String) : Void;
	
	/**
	* get one global attribute
	*/
	@:overload @:final public function getGlobalAttributeDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl;
	
	@:overload @:final public function getGlobalAttributeDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl;
	
	/**
	* get one global attribute group
	*/
	@:overload @:final public function getGlobalAttributeGroupDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl;
	
	@:overload @:final public function getGlobalAttributeGroupDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl;
	
	/**
	* get one global element
	*/
	@:overload @:final public function getGlobalElementDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	@:overload @:final public function getGlobalElementDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	/**
	* get one global group
	*/
	@:overload @:final public function getGlobalGroupDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl;
	
	@:overload @:final public function getGlobalGroupDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl;
	
	/**
	* get one global notation
	*/
	@:overload @:final public function getGlobalNotationDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl;
	
	@:overload @:final public function getGlobalNotationDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl;
	
	/**
	* get one global type
	*/
	@:overload @:final public function getGlobalTypeDecl(declName : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	@:overload @:final public function getGlobalTypeDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* get one identity constraint
	*/
	@:overload @:final public function getIDConstraintDecl(declName : String) : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	@:overload @:final public function getIDConstraintDecl(declName : String, location : String) : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint;
	
	/**
	* get one identity constraint
	*/
	@:overload @:final public function hasIDConstraints() : Bool;
	
	/**
	* add one complex type decl: for later constraint checking
	*/
	@:overload public function addComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	/**
	* add a group redefined by restriction: for later constraint checking
	*/
	@:overload public function addRedefinedGroupDecl(derived : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, base : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	public static var fAnyType(default, null) : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl;
	
	public static var SG_SchemaNS(default, null) : SchemaGrammar_BuiltinSchemaGrammar;
	
	public static var fAnySimpleType(default, null) : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	public static var SG_XSI(default, null) : SchemaGrammar_BuiltinSchemaGrammar;
	
	@:overload public static function getS4SGrammar(schemaVersion : java.StdTypes.Int16) : SchemaGrammar;
	
	@:overload @:synchronized public function addDocument(document : Dynamic, location : String) : Void;
	
	@:overload @:synchronized public function removeDocument(index : Int) : Void;
	
	/**
	* [schema namespace]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#nsi-schema_namespace">[schema namespace]</a>
	* @return The target namespace of this item.
	*/
	@:overload public function getSchemaNamespace() : String;
	
	/**
	* [schema components]: a list of top-level components, i.e. element
	* declarations, attribute declarations, etc.
	* @param objectType The type of the declaration, i.e.
	*   <code>ELEMENT_DECLARATION</code>. Note that
	*   <code>XSTypeDefinition.SIMPLE_TYPE</code> and
	*   <code>XSTypeDefinition.COMPLEX_TYPE</code> can also be used as the
	*   <code>objectType</code> to retrieve only complex types or simple
	*   types, instead of all types.
	* @return  A list of top-level definition of the specified type in
	*   <code>objectType</code> or an empty <code>XSNamedMap</code> if no
	*   such definitions exist.
	*/
	@:overload @:synchronized public function getComponents(objectType : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	@:overload @:synchronized public function getComponentsExt(objectType : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.datatypes.ObjectList;
	
	@:overload @:synchronized public function resetComponents() : Void;
	
	/**
	* Convenience method. Returns a top-level simple or complex type
	* definition.
	* @param name The name of the definition.
	* @return An <code>XSTypeDefinition</code> or null if such definition
	*   does not exist.
	*/
	@:overload public function getTypeDefinition(name : String) : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Convenience method. Returns a top-level attribute declaration.
	* @param name The name of the declaration.
	* @return A top-level attribute declaration or null if such declaration
	*   does not exist.
	*/
	@:overload public function getAttributeDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeDeclaration;
	
	/**
	* Convenience method. Returns a top-level element declaration.
	* @param name The name of the declaration.
	* @return A top-level element declaration or null if such declaration
	*   does not exist.
	*/
	@:overload public function getElementDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Returns a top-level attribute group definition.
	* @param name The name of the definition.
	* @return A top-level attribute group definition or null if such
	*   definition does not exist.
	*/
	@:overload public function getAttributeGroup(name : String) : com.sun.org.apache.xerces.internal.xs.XSAttributeGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level model group definition.
	*
	* @param name      The name of the definition.
	* @return A top-level model group definition definition or null if such
	*         definition does not exist.
	*/
	@:overload public function getModelGroupDefinition(name : String) : com.sun.org.apache.xerces.internal.xs.XSModelGroupDefinition;
	
	/**
	* Convenience method. Returns a top-level notation declaration.
	*
	* @param name      The name of the declaration.
	* @return A top-level notation declaration or null if such declaration
	*         does not exist.
	*/
	@:overload public function getNotationDeclaration(name : String) : com.sun.org.apache.xerces.internal.xs.XSNotationDeclaration;
	
	/**
	* [document location]
	* @see <a href="http://www.w3.org/TR/xmlschema-1/#sd-document_location">[document location]</a>
	* @return a list of document information item
	*/
	@:overload public function getDocumentLocations() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* Return an <code>XSModel</code> that represents components in this schema
	* grammar.
	*
	* @return  an <code>XSModel</code> representing this schema grammar
	*/
	@:overload public function toXSModel() : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	@:overload public function toXSModel(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar>) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/**
	* @see org.apache.xerces.xs.XSNamespaceItem#getAnnotations()
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function addAnnotation(annotation : com.sun.org.apache.xerces.internal.impl.xs.XSAnnotationImpl) : Void;
	
	@:overload public function setImmutable(isImmutable : Bool) : Void;
	
	@:overload public function isImmutable() : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$SchemaGrammar$BuiltinSchemaGrammar') extern class SchemaGrammar_BuiltinSchemaGrammar extends SchemaGrammar
{
	/**
	* Special constructor to create the grammars for the schema namespaces
	*
	* @param grammar
	*/
	@:overload public function new(grammar : Int, schemaVersion : java.StdTypes.Int16) : Void;
	
	@:overload override public function getGrammarDescription() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	@:overload override public function setImportedGrammars(importedGrammars : java.util.Vector<Dynamic>) : Void;
	
	@:overload override public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl) : Void;
	
	@:overload override public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl, location : String) : Void;
	
	@:overload override public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl) : Void;
	
	@:overload override public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, location : String) : Void;
	
	@:overload override public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload override public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, location : String) : Void;
	
	@:overload override public function addGlobalElementDeclAll(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload override public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl) : Void;
	
	@:overload override public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, location : String) : Void;
	
	@:overload override public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl) : Void;
	
	@:overload override public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl, location : String) : Void;
	
	@:overload override public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition) : Void;
	
	@:overload override public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, location : String) : Void;
	
	@:overload override public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : Void;
	
	@:overload override public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, location : String) : Void;
	
	@:overload override public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType) : Void;
	
	@:overload override public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, location : String) : Void;
	
	@:overload override public function addComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	@:overload override public function addRedefinedGroupDecl(derived : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, base : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	@:overload @:synchronized override public function addDocument(document : Dynamic, location : String) : Void;
	
	
}
/**
* <p>A partial schema for schemas for validating annotations.</p>
*
* @xerces.internal
*
* @author Michael Glavassevich, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$SchemaGrammar$Schema4Annotations') extern class SchemaGrammar_Schema4Annotations extends SchemaGrammar
{
	/**
	* Singleton instance.
	*/
	public static var INSTANCE(default, null) : SchemaGrammar_Schema4Annotations;
	
	@:overload override public function getGrammarDescription() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	@:overload override public function setImportedGrammars(importedGrammars : java.util.Vector<Dynamic>) : Void;
	
	@:overload override public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl) : Void;
	
	@:overload public function addGlobalAttributeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, location : String) : Void;
	
	@:overload override public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl) : Void;
	
	@:overload override public function addGlobalAttributeGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, location : String) : Void;
	
	@:overload override public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload override public function addGlobalElementDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, location : String) : Void;
	
	@:overload override public function addGlobalElementDeclAll(decl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload override public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl) : Void;
	
	@:overload override public function addGlobalGroupDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, location : String) : Void;
	
	@:overload override public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl) : Void;
	
	@:overload override public function addGlobalNotationDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSNotationDecl, location : String) : Void;
	
	@:overload override public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition) : Void;
	
	@:overload override public function addGlobalTypeDecl(decl : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, location : String) : Void;
	
	@:overload override public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : Void;
	
	@:overload override public function addGlobalComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, location : String) : Void;
	
	@:overload override public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType) : Void;
	
	@:overload override public function addGlobalSimpleTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, location : String) : Void;
	
	@:overload override public function addComplexTypeDecl(decl : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	@:overload override public function addRedefinedGroupDecl(derived : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, base : com.sun.org.apache.xerces.internal.impl.xs.XSGroupDecl, locator : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Void;
	
	@:overload @:synchronized override public function addDocument(document : Dynamic, location : String) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$SchemaGrammar$XSAnyType') @:internal extern class SchemaGrammar_XSAnyType extends com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl
{
	@:overload public function new() : Void;
	
	@:overload public function setValues(name : String, targetNamespace : String, baseType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivedBy : java.StdTypes.Int16, schemaFinal : java.StdTypes.Int16, block : java.StdTypes.Int16, contentType : java.StdTypes.Int16, isAbstract : Bool, attrGrp : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl, simpleType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, particle : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl) : Void;
	
	@:overload override public function setName(name : String) : Void;
	
	@:overload override public function setIsAbstractType() : Void;
	
	@:overload override public function setContainsTypeID() : Void;
	
	@:overload override public function setIsAnonymous() : Void;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function getAttributeUses() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload override public function getAttrGrp() : com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl;
	
	@:overload override public function getAttributeWildcard() : com.sun.org.apache.xerces.internal.xs.XSWildcard;
	
	@:overload override public function getParticle() : com.sun.org.apache.xerces.internal.xs.XSParticle;
	
	@:overload override public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload override public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$SchemaGrammar$BuiltinAttrDecl') @:internal extern class SchemaGrammar_BuiltinAttrDecl extends com.sun.org.apache.xerces.internal.impl.xs.XSAttributeDecl
{
	@:overload public function new(name : String, tns : String, type : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, scope : java.StdTypes.Int16) : Void;
	
	@:overload public function setValues(name : String, targetNamespace : String, simpleType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, constraintType : java.StdTypes.Int16, scope : java.StdTypes.Int16, valInfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo, enclosingCT : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : Void;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:overload override public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
