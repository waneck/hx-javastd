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
* This interface represents the Identity-constraint Definition schema
* component.
*/
extern interface XSIDCDefinition extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* [identity-constraint category]: one of key, keyref or unique.
	*/
	@:overload public function getCategory() : java.StdTypes.Int16;
	
	/**
	* [selector]: a restricted XPath 1.0 expression.
	*/
	@:overload public function getSelectorStr() : String;
	
	/**
	* [fields]: a non-empty list of restricted  XPath 1.0 expressions.
	*/
	@:overload public function getFieldStrs() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* [referenced key]: required if [identity-constraint category] is keyref,
	* <code>null</code> otherwise. An identity-constraint definition with [
	* identity-constraint category] equal to key or unique.
	*/
	@:overload public function getRefKey() : com.sun.org.apache.xerces.internal.xs.XSIDCDefinition;
	
	/**
	* A sequence of [annotations] or an empty  <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
