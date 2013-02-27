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
* $Id: XRTreeFrag.java,v 1.2.4.1 2005/09/14 20:44:48 jeffsuttor Exp $
*/
extern class XRTreeFrag extends com.sun.org.apache.xpath.internal.objects.XObject implements java.lang.Cloneable
{
	private var m_allowRelease : Bool;
	
	/**
	* Create an XRTreeFrag Object.
	*
	*/
	@:overload public function new(root : Int, xctxt : com.sun.org.apache.xpath.internal.XPathContext, parent : com.sun.org.apache.xpath.internal.ExpressionNode) : Void;
	
	/**
	* Create an XRTreeFrag Object.
	*
	*/
	@:overload public function new(root : Int, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Return a java object that's closest to the representation
	* that should be handed to an extension.
	*
	* @return The object that this class wraps
	*/
	@:overload override public function object() : Dynamic;
	
	/**
	* Create an XRTreeFrag Object.
	*
	*/
	@:overload public function new(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Specify if it's OK for detach to release the iterator for reuse.
	*
	* @param allowRelease true if it is OK for detach to release this iterator
	* for pooling.
	*/
	@:overload override public function allowDetachToRelease(allowRelease : Bool) : Void;
	
	/**
	* Detaches the <code>DTMIterator</code> from the set which it iterated
	* over, releasing any computational resources and placing the iterator
	* in the INVALID state. After <code>detach</code> has been invoked,
	* calls to <code>nextNode</code> or <code>previousNode</code> will
	* raise a runtime exception.
	*
	* In general, detach should only be called once on the object.
	*/
	@:overload override public function detach() : Void;
	
	/**
	* Tell what kind of class this is.
	*
	* @return type CLASS_RTREEFRAG
	*/
	@:overload override public function getType() : Int;
	
	/**
	* Given a request type, return the equivalent string.
	* For diagnostic purposes.
	*
	* @return type string "#RTREEFRAG"
	*/
	@:overload override public function getTypeString() : String;
	
	/**
	* Cast result object to a number.
	*
	* @return The result tree fragment as a number or NaN
	*/
	@:overload override public function num() : Float;
	
	/**
	* Cast result object to a boolean.  This always returns true for a RTreeFrag
	* because it is treated like a node-set with a single root node.
	*
	* @return true
	*/
	@:overload override public function bool() : Bool;
	
	/**
	* Cast result object to an XMLString.
	*
	* @return The document fragment node data or the empty string.
	*/
	@:overload override public function xstr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Cast result object to a string.
	*
	* @return The string this wraps or the empty string if null
	*/
	@:overload override public function appendToFsb(fsb : com.sun.org.apache.xml.internal.utils.FastStringBuffer) : Void;
	
	/**
	* Cast result object to a string.
	*
	* @return The document fragment node data or the empty string.
	*/
	@:overload override public function str() : String;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @return The document fragment this wraps
	*/
	@:overload override public function rtf() : Int;
	
	/**
	* Cast result object to a DTMIterator.
	* dml - modified to return an RTFIterator for
	* benefit of EXSLT object-type function in
	* {@link com.sun.org.apache.xalan.internal.lib.ExsltCommon}.
	* @return The document fragment as a DTMIterator
	*/
	@:overload public function asNodeIterator() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Cast result object to a nodelist. (special function).
	*
	* @return The document fragment as a nodelist
	*/
	@:overload public function convertToNodeset() : org.w3c.dom.NodeList;
	
	/**
	* Tell if two objects are functionally equal.
	*
	* @param obj2 Object to compare this to
	*
	* @return True if the two objects are equal
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function equals(obj2 : com.sun.org.apache.xpath.internal.objects.XObject) : Bool;
	
	
}
