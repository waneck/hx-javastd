package com.sun.org.apache.xpath.internal.axes;
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
* $Id: WalkingIteratorSorted.java,v 1.2.4.1 2005/09/14 19:45:23 jeffsuttor Exp $
*/
extern class WalkingIteratorSorted extends com.sun.org.apache.xpath.internal.axes.WalkingIterator
{
	/** True if the nodes will be found in document order, and this can
	* be determined statically. */
	@:protected private var m_inNaturalOrderStatic : Bool;
	
	/**
	* Create a WalkingIteratorSorted object.
	*
	* @param nscontext The namespace context for this iterator,
	* should be OK if null.
	*/
	@:overload @:public public function new(nscontext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Returns true if all the nodes in the iteration well be returned in document
	* order.
	*
	* @return true as a default.
	*/
	@:overload @:public override public function isDocOrdered() : Bool;
	
	/**
	* This function is used to perform some extra analysis of the iterator.
	*
	* @param vars List of QNames that correspond to variables.  This list
	* should be searched backwards for the first qualified name that
	* corresponds to the variable reference qname.  The position of the
	* QName in the vector from the start of the vector will be its position
	* in the stack frame (but variables above the globalsTop value will need
	* to be offset to the current stack frame).
	*/
	@:overload @:public override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	
}
