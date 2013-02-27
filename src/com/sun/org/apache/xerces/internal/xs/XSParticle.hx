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
* This interface represents the Particle schema component.
*/
extern interface XSParticle extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* [min occurs]: determines the minimum number of terms that can occur.
	*/
	@:overload public function getMinOccurs() : Int;
	
	/**
	*  [max occurs]: determines the maximum number of terms that can occur.
	* To query for the value of unbounded use
	* <code>maxOccursUnbounded</code>. When the value of
	* <code>maxOccursUnbounded</code> is <code>true</code>, the value of
	* <code>maxOccurs</code> is unspecified.
	*/
	@:overload public function getMaxOccurs() : Int;
	
	/**
	* [max occurs]: whether the maxOccurs value is unbounded.
	*/
	@:overload public function getMaxOccursUnbounded() : Bool;
	
	/**
	* [term]: one of a model group, a wildcard, or an element declaration.
	*/
	@:overload public function getTerm() : com.sun.org.apache.xerces.internal.xs.XSTerm;
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
