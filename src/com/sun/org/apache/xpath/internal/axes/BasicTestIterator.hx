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
* $Id: BasicTestIterator.java,v 1.2.4.1 2005/09/14 19:45:20 jeffsuttor Exp $
*/
extern class BasicTestIterator extends com.sun.org.apache.xpath.internal.axes.LocPathIterator
{
	/**
	* Create a LocPathIterator object.
	*
	* @param nscontext The namespace context for this iterator,
	* should be OK if null.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Create a LocPathIterator object.
	*
	* @param nscontext The namespace context for this iterator,
	* should be OK if null.
	*/
	@:overload @:protected private function new(nscontext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Create a LocPathIterator object, including creation
	* of step walkers from the opcode list, and call back
	* into the Compiler to create predicate expressions.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function new(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, analysis : Int) : Void;
	
	/**
	* Create a LocPathIterator object, including creation
	* of step walkers from the opcode list, and call back
	* into the Compiler to create predicate expressions.
	*
	* @param compiler The Compiler which is creating
	* this expression.
	* @param opPos The position of this iterator in the
	* opcode list from the compiler.
	* @param shouldLoadWalkers True if walkers should be
	* loaded, or false if this is a derived iterator and
	* it doesn't wish to load child walkers.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function new(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, analysis : Int, shouldLoadWalkers : Bool) : Void;
	
	/**
	* Get the next node via getNextXXX.  Bottlenecked for derived class override.
	* @return The next node on the axis, or DTM.NULL.
	*/
	@:overload @:protected @:abstract private function getNextNode() : Int;
	
	/**
	*  Returns the next node in the set and advances the position of the
	* iterator in the set. After a NodeIterator is created, the first call
	* to nextNode() returns the first node in the set.
	*
	* @return  The next <code>Node</code> in the set being iterated over, or
	*   <code>null</code> if there are no more members in that set.
	*/
	@:overload @:public override public function nextNode() : Int;
	
	/**
	*  Get a cloned Iterator that is reset to the beginning
	*  of the query.
	*
	*  @return A cloned NodeIterator set of the start of the query.
	*
	*  @throws CloneNotSupportedException
	*/
	@:overload @:public override public function cloneWithReset() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	
}
