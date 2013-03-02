package com.sun.org.apache.xpath.internal.objects;
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
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XNodeSet.java,v 1.2.4.2 2005/09/14 20:34:45 jeffsuttor Exp $
*/
extern class XNodeSet extends com.sun.org.apache.xpath.internal.axes.NodeSequence
{
	/**
	* Default constructor for derived objects.
	*/
	@:overload private function new() : Void;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param val Value of the XNodeSet object
	*/
	@:overload public function new(val : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param val Value of the XNodeSet object
	*/
	@:overload public function new(val : com.sun.org.apache.xpath.internal.objects.XNodeSet) : Void;
	
	/**
	* Construct an empty XNodeSet object.  This is used to create a mutable
	* nodeset to which random nodes may be added.
	*/
	@:overload public function new(dtmMgr : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Construct a XNodeSet object for one node.
	*
	* @param n Node to add to the new XNodeSet object
	*/
	@:overload public function new(n : Int, dtmMgr : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Tell that this is a CLASS_NODESET.
	*
	* @return type CLASS_NODESET
	*/
	@:overload public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#NODESET"
	*/
	@:overload public function getTypeString() : String;
	
	/**
	* Get numeric value of the string conversion from a single node.
	*
	* @param n Node to convert
	*
	* @return numeric value of the string conversion from a single node.
	*/
	@:overload public function getNumberFromNode(n : Int) : Float;
	
	/**
	* Cast result object to a number.
	*
	* @return numeric value of the string conversion from the
	* next node in the NodeSetDTM, or NAN if no node was found
	*/
	@:overload public function num() : Float;
	
	/**
	* Cast result object to a number, but allow side effects, such as the
	* incrementing of an iterator.
	*
	* @return numeric value of the string conversion from the
	* next node in the NodeSetDTM, or NAN if no node was found
	*/
	@:overload public function numWithSideEffects() : Float;
	
	/**
	* Cast result object to a boolean.
	*
	* @return True if there is a next node in the nodeset
	*/
	@:overload public function bool() : Bool;
	
	/**
	* Cast result object to a boolean, but allow side effects, such as the
	* incrementing of an iterator.
	*
	* @return True if there is a next node in the nodeset
	*/
	@:overload public function boolWithSideEffects() : Bool;
	
	/**
	* Get the string conversion from a single node.
	*
	* @param n Node to convert
	*
	* @return the string conversion from a single node.
	*/
	@:overload public function getStringFromNode(n : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Directly call the
	* characters method on the passed ContentHandler for the
	* string-value. Multiple calls to the
	* ContentHandler's characters methods may well occur for a single call to
	* this method.
	*
	* @param ch A non-null reference to a ContentHandler.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function dispatchCharactersEvents(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Cast result object to an XMLString.
	*
	* @return The document fragment node data or the empty string.
	*/
	@:overload public function xstr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload public function appendToFsb(fsb : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	/**
	* Cast result object to a string.
	*
	* @return the string conversion from the next node in the nodeset
	* or "" if there is no next node
	*/
	@:overload public function str() : String;
	
	/**
	* Return a java object that's closest to the representation
	* that should be handed to an extension.
	*
	* @return The object that this class wraps
	*/
	@:overload public function object() : Dynamic;
	
	/**
	* Cast result object to a nodelist.
	*
	* @return a NodeIterator.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function nodeset() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Cast result object to a nodelist.
	*
	* @return a NodeList.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function nodelist() : org.w3c.dom.NodeList;
	
	/**
	* Return the iterator without cloning, etc.
	*/
	@:overload public function iterRaw() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	@:overload public function release(iter : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Cast result object to a nodelist.
	*
	* @return The nodeset as a nodelist
	*/
	@:overload public function iter() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Get a fresh copy of the object.  For use with variables.
	*
	* @return A fresh nodelist.
	*/
	@:overload public function getFresh() : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Cast result object to a mutableNodeset.
	*
	* @return The nodeset as a mutableNodeset
	*/
	@:overload public function mutableNodeset() : com.sun.org.apache.xpath.internal.NodeSetDTM;
	
	/**
	* Tell if one object is less than the other.
	*
	* @param obj2 Object to compare this nodeset to
	* @param comparator Comparator to use
	*
	* @return See the comments below for each object type comparison
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function compare(obj2 : com.sun.org.apache.xpath.internal.objects.XObject, comparator : com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator) : Bool;
	
	/**
	* Tell if one object is less than the other.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function lessThan(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is less than or equal to the other.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function lessThanOrEqual(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is less than the other.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function greaterThan(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if one object is less than the other.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function greaterThanOrEqual(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	/**
	* Tell if two objects are functionally not equal.
	*
	* @param obj2 object to compare this nodeset to
	*
	* @return see this.compare(...)
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function notEquals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	
}
@:internal extern class Comparator
{
	
}
@:internal extern class LessThanComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
@:internal extern class LessThanOrEqualComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
@:internal extern class GreaterThanComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
@:internal extern class GreaterThanOrEqualComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
@:internal extern class EqualComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
@:internal extern class NotEqualComparator extends com.sun.org.apache.xpath.internal.objects.XNodeSet.Comparator
{
	
}
