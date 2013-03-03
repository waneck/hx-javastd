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
* This interface represents the Attribute Group Definition schema component.
*/
extern interface XSAttributeGroupDefinition extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* A set of [attribute uses] if it exists, otherwise an empty
	* <code>XSObjectList</code>.
	*/
	@:overload @:public public function getAttributeUses() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* A [wildcard] if it exists, otherwise <code>null</code>.
	*/
	@:overload @:public public function getAttributeWildcard() : com.sun.org.apache.xerces.internal.xs.XSWildcard;
	
	/**
	* An annotation if it exists, otherwise <code>null</code>. If not null
	* then the first [annotation] from the sequence of annotations.
	*/
	@:overload @:public public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
