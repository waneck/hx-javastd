package com.sun.org.apache.xpath.internal.operations;
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
* $Id: Variable.java,v 1.2.4.1 2005/09/14 21:24:33 jeffsuttor Exp $
*/
extern class Variable extends com.sun.org.apache.xpath.internal.Expression implements com.sun.org.apache.xpath.internal.axes.PathComponent
{
	/** The qualified name of the variable.
	*  @serial   */
	private var m_qname : com.sun.org.apache.xml.internal.utils.QName;
	
	/**
	* The index of the variable, which is either an absolute index to a
	* global, or, if higher than the globals area, must be adjusted by adding
	* the offset to the current stack frame.
	*/
	private var m_index : Int;
	
	/**
	* Set the index for the variable into the stack.  For advanced use only. You
	* must know what you are doing to use this.
	*
	* @param index a global or local index.
	*/
	@:overload public function setIndex(index : Int) : Void;
	
	/**
	* Set the index for the variable into the stack.  For advanced use only.
	*
	* @return index a global or local index.
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Set whether or not this is a global reference.  For advanced use only.
	*
	* @param isGlobal true if this should be a global variable reference.
	*/
	@:overload public function setIsGlobal(isGlobal : Bool) : Void;
	
	/**
	* Set the index for the variable into the stack.  For advanced use only.
	*
	* @return true if this should be a global variable reference.
	*/
	@:overload public function getGlobal() : Bool;
	
	private var m_isGlobal : Bool;
	
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
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Set the qualified name of the variable.
	*
	* @param qname Must be a non-null reference to a qualified name.
	*/
	@:overload public function setQName(qname : com.sun.org.apache.xml.internal.utils.QName) : Void;
	
	/**
	* Get the qualified name of the variable.
	*
	* @return A non-null reference to a qualified name.
	*/
	@:overload public function getQName() : com.sun.org.apache.xml.internal.utils.QName;
	
	/**
	* Execute an expression in the XPath runtime context, and return the
	* result of the expression.
	*
	*
	* @param xctxt The XPath runtime context.
	*
	* @return The result of the expression in the form of a <code>XObject</code>.
	*
	* @throws javax.xml.transform.TransformerException if a runtime exception
	*         occurs.
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Dereference the variable, and return the reference value.  Note that lazy
	* evaluation will occur.  If a variable within scope is not found, a warning
	* will be sent to the error listener, and an empty nodeset will be returned.
	*
	*
	* @param xctxt The runtime execution context.
	*
	* @return The evaluated variable, or an empty nodeset if not found.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, destructiveOK : Bool) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Tell if this expression returns a stable number that will not change during
	* iterations within the expression.  This is used to determine if a proximity
	* position predicate can indicate that no more searching has to occur.
	*
	*
	* @return true if the expression represents a stable number.
	*/
	@:overload override public function isStableNumber() : Bool;
	
	/**
	* Get the analysis bits for this walker, as defined in the WalkerFactory.
	* @return One of WalkerFactory#BIT_DESCENDANT, etc.
	*/
	@:overload public function getAnalysisBits() : Int;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload override public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/**
	* Tell if this is a psuedo variable reference, declared by Xalan instead
	* of by the user.
	*/
	@:overload public function isPsuedoVarRef() : Bool;
	
	
}
