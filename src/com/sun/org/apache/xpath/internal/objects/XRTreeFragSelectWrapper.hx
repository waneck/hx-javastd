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
* $Id: XRTreeFragSelectWrapper.java,v 1.2.4.1 2005/09/15 02:02:35 jeffsuttor Exp $
*/
extern class XRTreeFragSelectWrapper extends com.sun.org.apache.xpath.internal.objects.XRTreeFrag implements java.lang.Cloneable
{
	@:overload @:public public function new(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* This function is used to fixup variables from QNames to stack frame
	* indexes at stylesheet build time.
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* For support of literal objects in xpaths.
	*
	* @param xctxt The XPath execution context.
	*
	* @return the result of executing the select expression
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Detaches the <code>DTMIterator</code> from the set which it iterated
	* over, releasing any computational resources and placing the iterator
	* in the INVALID state. After <code>detach</code> has been invoked,
	* calls to <code>nextNode</code> or <code>previousNode</code> will
	* raise a runtime exception.
	*
	* In general, detach should only be called once on the object.
	*/
	@:overload @:public override public function detach() : Void;
	
	/**
	* Cast result object to a number.
	*
	* @return The result tree fragment as a number or NaN
	*/
	@:overload @:public override public function num() : Float;
	
	/**
	* Cast result object to an XMLString.
	*
	* @return The document fragment node data or the empty string.
	*/
	@:overload @:public override public function xstr() : com.sun.org.apache.xml.internal.utils.XMLString;
	
	/**
	* Cast result object to a string.
	*
	* @return The document fragment node data or the empty string.
	*/
	@:overload @:public override public function str() : String;
	
	/**
	* Tell what kind of class this is.
	*
	* @return the string type
	*/
	@:overload @:public override public function getType() : Int;
	
	/**
	* Cast result object to a result tree fragment.
	*
	* @return The document fragment this wraps
	*/
	@:overload @:public override public function rtf() : Int;
	
	/**
	* Cast result object to a DTMIterator.
	*
	* @return The document fragment as a DTMIterator
	*/
	@:overload @:public override public function asNodeIterator() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	
}
