package com.sun.org.apache.xpath.internal.compiler;
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
* $Id: Compiler.java,v 1.2.4.1 2005/09/14 19:47:10 jeffsuttor Exp $
*/
extern class Compiler extends com.sun.org.apache.xpath.internal.compiler.OpMap
{
	/**
	* Construct a Compiler object with a specific ErrorListener and
	* SourceLocator where the expression is located.
	*
	* @param errorHandler Error listener where messages will be sent, or null
	*                     if messages should be sent to System err.
	* @param locator The location object where the expression lives, which
	*                may be null, but which, if not null, must be valid over
	*                the long haul, in other words, it will not be cloned.
	* @param fTable  The FunctionTable object where the xpath build-in
	*                functions are stored.
	*/
	@:overload public function new(errorHandler : javax.xml.transform.ErrorListener, locator : javax.xml.transform.SourceLocator, fTable : com.sun.org.apache.xpath.internal.compiler.FunctionTable) : Void;
	
	/**
	* Construct a Compiler instance that has a null error listener and a
	* null source locator.
	*/
	@:overload public function new() : Void;
	
	/**
	* Execute the XPath object from a given opcode position.
	* @param opPos The current position in the xpath.m_opMap array.
	* @return The result of the XPath.
	*
	* @throws TransformerException if there is a syntax or other error.
	* @xsl.usage advanced
	*/
	@:overload public function compile(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile an 'or' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Or} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function or(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile an 'and' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.And} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function and(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '!=' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.NotEquals} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function notequals(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '=' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Equals} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function equals(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '<=' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Lte} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function lte(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '<' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Lt} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function lt(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '>=' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Gte} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function gte(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '>' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Gt} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function gt(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '+' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Plus} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function plus(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '-' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Minus} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function minus(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a '*' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Mult} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function mult(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a 'div' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Div} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function div(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a 'mod' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Mod} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function mod(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a unary '-' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Neg} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function neg(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a 'string(...)' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.String} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function string(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a 'boolean(...)' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Bool} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function bool(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a 'number(...)' operation.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Number} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function number(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a literal string value.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.objects.XString} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function literal(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a literal number value.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.objects.XNumber} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function numberlit(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a variable reference.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.operations.Variable} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function variable(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile an expression group.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to the contained expression.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function group(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a function argument.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to the argument expression.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function arg(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a location path union. The UnionPathIterator itself may create
	* {@link com.sun.org.apache.xpath.internal.axes.LocPathIterator} children.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.axes.LocPathIterator} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function union(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Get the level of the location path or union being constructed.
	* @return 0 if it is a top-level path.
	*/
	@:overload public function getLocationPathDepth() : Int;
	
	/**
	* Compile a location path.  The LocPathIterator itself may create
	* {@link com.sun.org.apache.xpath.internal.axes.AxesWalker} children.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.axes.LocPathIterator} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload public function locationPath(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a location step predicate expression.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return the contained predicate expression.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload public function predicate(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile an entire match pattern expression.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.patterns.UnionPattern} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function matchPattern(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Compile a location match pattern unit expression.
	*
	* @param opPos The current position in the m_opMap array.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.patterns.StepPattern} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload public function locationPathPattern(opPos : Int) : com.sun.org.apache.xpath.internal.Expression;
	
	/**
	* Get a {@link org.w3c.dom.traversal.NodeFilter} bit set that tells what
	* to show for a given node test.
	*
	* @param opPos the op map position for the location step.
	*
	* @return {@link org.w3c.dom.traversal.NodeFilter} bit set that tells what
	*         to show for a given node test.
	*/
	@:overload public function getWhatToShow(opPos : Int) : Int;
	
	/**
	* Compile a step pattern unit expression, used for both location paths
	* and match patterns.
	*
	* @param opPos The current position in the m_opMap array.
	* @param stepCount The number of steps to expect.
	* @param ancestorPattern The owning StepPattern, which may be null.
	*
	* @return reference to {@link com.sun.org.apache.xpath.internal.patterns.StepPattern} instance.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload private function stepPattern(opPos : Int, stepCount : Int, ancestorPattern : com.sun.org.apache.xpath.internal.patterns.StepPattern) : com.sun.org.apache.xpath.internal.patterns.StepPattern;
	
	/**
	* Compile a zero or more predicates for a given match pattern.
	*
	* @param opPos The position of the first predicate the m_opMap array.
	*
	* @return reference to array of {@link com.sun.org.apache.xpath.internal.Expression} instances.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload public function getCompiledPredicates(opPos : Int) : java.NativeArray<com.sun.org.apache.xpath.internal.Expression>;
	
	/**
	* Count the number of predicates in the step.
	*
	* @param opPos The position of the first predicate the m_opMap array.
	*
	* @return The number of predicates for this step.
	*
	* @throws TransformerException if a error occurs creating the Expression.
	*/
	@:overload public function countPredicates(opPos : Int) : Int;
	
	/**
	* Warn the user of an problem.
	*
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*/
	@:overload public function warn(msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Tell the user of an assertion error, and probably throw an
	* exception.
	*
	* @param b  If false, a runtime exception will be thrown.
	* @param msg The assertion message, which should be informative.
	*
	* @throws RuntimeException if the b argument is false.
	*/
	@:overload public function assertion(b : Bool, msg : String) : Void;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*/
	@:overload public function error(msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Get the current namespace context for the xpath.
	*
	* @return The current prefix resolver, *may* be null, though hopefully not.
	*/
	@:overload public function getNamespaceContext() : com.sun.org.apache.xml.internal.utils.PrefixResolver;
	
	/**
	* Set the current namespace context for the xpath.
	*
	* @param pr The resolver for prefixes in the XPath expression.
	*/
	@:overload public function setNamespaceContext(pr : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	
}
