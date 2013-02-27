package com.sun.org.apache.xerces.internal.impl.dv;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class XSFacets
{
	/**
	* value of length facet.
	*/
	public var length : Int;
	
	/**
	* value of minLength facet.
	*/
	public var minLength : Int;
	
	/**
	* value of maxLength facet.
	*/
	public var maxLength : Int;
	
	/**
	* value of whiteSpace facet.
	*/
	public var whiteSpace : java.StdTypes.Int16;
	
	/**
	* value of totalDigits facet.
	*/
	public var totalDigits : Int;
	
	/**
	* value of fractionDigits facet.
	*/
	public var fractionDigits : Int;
	
	/**
	* string containing value of pattern facet, for multiple patterns values
	* are ORed together.
	*/
	public var pattern : String;
	
	/**
	* Vector containing values of Enumeration facet, as String's.
	*/
	public var enumeration : java.util.Vector<Dynamic>;
	
	/**
	* An array parallel to "Vector enumeration". It contains namespace context
	* of each enumeration value. Elements of this vector are NamespaceContext
	* objects.
	*/
	public var enumNSDecls : java.util.Vector<Dynamic>;
	
	/**
	* value of maxInclusive facet.
	*/
	public var maxInclusive : String;
	
	/**
	* value of maxExclusive facet.
	*/
	public var maxExclusive : String;
	
	/**
	* value of minInclusive facet.
	*/
	public var minInclusive : String;
	
	/**
	* value of minExclusive facet.
	*/
	public var minExclusive : String;
	
	public var lengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var minLengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var maxLengthAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var whiteSpaceAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var totalDigitsAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var fractionDigitsAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var patternAnnotations : com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl;
	
	public var enumAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	public var maxInclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var maxExclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var minInclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	public var minExclusiveAnnotation : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	@:overload public function reset() : Void;
	
	
}
