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
extern class SubstitutionGroupHandler
{
	/**
	* Default constructor
	*/
	@:overload @:public public function new(grammarBucket : com.sun.org.apache.xerces.internal.impl.xs.XSGrammarBucket) : Void;
	
	@:overload @:public public function getMatchingElemDecl(element : com.sun.org.apache.xerces.internal.xni.QName, exemplar : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	@:overload @:protected private function substitutionGroupOK(element : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, exemplar : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, blockingConstraint : java.StdTypes.Int16) : Bool;
	
	@:overload @:public public function inSubstitutionGroup(element : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl, exemplar : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Bool;
	
	/**
	* clear the internal registry of substitutionGroup information
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* add a list of substitution group information.
	*/
	@:overload @:public public function addSubstitutionGroup(elements : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl>) : Void;
	
	/**
	* get all elements that can substitute the given element,
	* according to the spec, we shouldn't consider the {block} constraints.
	*
	* from the spec, substitution group of a given element decl also contains
	* the element itself. but the array returned from this method doesn't
	* containt this element.
	*/
	@:overload @:public public function getSubstitutionGroup(element : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl>;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$SubstitutionGroupHandler$OneSubGroup') @:internal extern class SubstitutionGroupHandler_OneSubGroup
{
	
}
