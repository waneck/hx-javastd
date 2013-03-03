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
* This interface represents a complex or simple type definition.
*/
extern interface XSTypeDefinition extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* Return whether this type definition is a simple type or complex type.
	*/
	@:overload @:public public function getTypeCategory() : java.StdTypes.Int16;
	
	/**
	* {base type definition}: either a simple type definition or a complex
	* type definition.
	*/
	@:overload @:public public function getBaseType() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* {final}. For a complex type definition it is a subset of {extension,
	* restriction}. For a simple type definition it is a subset of
	* {extension, list, restriction, union}.
	* @param restriction  Extension, restriction, list, union constants
	*   (defined in <code>XSConstants</code>).
	* @return True if <code>restriction</code> is in the final set,
	*   otherwise false.
	*/
	@:overload @:public public function isFinal(restriction : java.StdTypes.Int16) : Bool;
	
	/**
	* For complex types the returned value is a bit combination of the subset
	* of {<code>DERIVATION_EXTENSION, DERIVATION_RESTRICTION</code>}
	* corresponding to <code>final</code> set of this type or
	* <code>DERIVATION_NONE</code>. For simple types the returned value is
	* a bit combination of the subset of {
	* <code>DERIVATION_RESTRICTION, DERIVATION_EXTENSION, DERIVATION_UNION, DERIVATION_LIST</code>
	* } corresponding to <code>final</code> set of this type or
	* <code>DERIVATION_NONE</code>.
	*/
	@:overload @:public public function getFinal() : java.StdTypes.Int16;
	
	/**
	*  Convenience attribute. A boolean that specifies if the type definition
	* is anonymous.
	*/
	@:overload @:public public function getAnonymous() : Bool;
	
	/**
	* Convenience method which checks if this type is derived from the given
	* <code>ancestorType</code>.
	* @param ancestorType  An ancestor type definition.
	* @param derivationMethod  A bit combination representing a subset of {
	*   <code>DERIVATION_RESTRICTION, DERIVATION_EXTENSION, DERIVATION_UNION, DERIVATION_LIST</code>
	*   }.
	* @return  True if this type is derived from <code>ancestorType</code>
	*   using only derivation methods from the <code>derivationMethod</code>
	*   .
	*/
	@:overload @:public public function derivedFromType(ancestorType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition, derivationMethod : java.StdTypes.Int16) : Bool;
	
	/**
	* Convenience method which checks if this type is derived from the given
	* ancestor type.
	* @param namespace  An ancestor type namespace.
	* @param name  An ancestor type name.
	* @param derivationMethod  A bit combination representing a subset of {
	*   <code>DERIVATION_RESTRICTION, DERIVATION_EXTENSION, DERIVATION_UNION, DERIVATION_LIST</code>
	*   }.
	* @return  True if this type is derived from <code>ancestorType</code>
	*   using only derivation methods from the <code>derivationMethod</code>
	*   .
	*/
	@:overload @:public public function derivedFrom(namespace : String, name : String, derivationMethod : java.StdTypes.Int16) : Bool;
	
	
}
