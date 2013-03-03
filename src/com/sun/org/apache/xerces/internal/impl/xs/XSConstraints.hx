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
extern class XSConstraints
{
	@:overload @:public @:static public static function getEmptySequence() : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl;
	
	/**
	* check whether derived is valid derived from base, given a subset
	* of {restriction, extension}.B
	*/
	@:overload @:public @:static public static function checkTypeDerivationOk(derived : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, base : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, block : java.StdTypes.Int16) : Bool;
	
	/**
	* check whether simple type derived is valid derived from base,
	* given a subset of {restriction, extension}.
	*/
	@:overload @:public @:static public static function checkSimpleDerivationOk(derived : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType, base : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, block : java.StdTypes.Int16) : Bool;
	
	/**
	* check whether complex type derived is valid derived from base,
	* given a subset of {restriction, extension}.
	*/
	@:overload @:public @:static public static function checkComplexDerivationOk(derived : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, base : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, block : java.StdTypes.Int16) : Bool;
	
	/**
	* check whether a value is a valid default for some type
	* returns the compiled form of the value
	* The parameter value could be either a String or a ValidatedInfo object
	*/
	@:overload @:public @:static public static function ElementDefaultValidImmediate(type : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, value : String, context : com.sun.org.apache.xerces.internal.impl.dv.ValidationContext, vinfo : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo) : Dynamic;
	
	/**
	* used to check the 3 constraints against each complex type
	* (should be each model group):
	* Unique Particle Attribution, Particle Derivation (Restriction),
	* Element Declrations Consistent.
	*/
	@:overload @:public @:static public static function fullSchemaChecking(grammarBucket : com.sun.org.apache.xerces.internal.impl.xs.XSGrammarBucket, SGHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler, cmBuilder : com.sun.org.apache.xerces.internal.impl.xs.models.CMBuilder, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/*
	Check that a given particle is a valid restriction of a base particle.
	*/
	@:overload @:public @:static public static function checkElementDeclsConsistent(type : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, particle : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, elemDeclHash : com.sun.org.apache.xerces.internal.util.SymbolHash, sgHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Void;
	
	@:overload @:public @:static public static function findElemInTable(type : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl, elem : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, elemDeclHash : com.sun.org.apache.xerces.internal.util.SymbolHash) : Void;
	
	@:overload @:public @:static public static function overlapUPA(element1 : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, element2 : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, sgHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Bool;
	
	@:overload @:public @:static public static function overlapUPA(element : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, wildcard : com.sun.org.apache.xerces.internal.impl.xs.XSWildcardDecl, sgHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Bool;
	
	@:overload @:public @:static public static function overlapUPA(wildcard1 : com.sun.org.apache.xerces.internal.impl.xs.XSWildcardDecl, wildcard2 : com.sun.org.apache.xerces.internal.impl.xs.XSWildcardDecl) : Bool;
	
	@:overload @:public @:static public static function overlapUPA(decl1 : Dynamic, decl2 : Dynamic, sgHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Bool;
	
	
}
