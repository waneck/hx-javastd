package com.sun.org.apache.xpath.internal;
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
* $Id: XPath.java,v 1.2.4.1 2005/09/15 01:41:57 jeffsuttor Exp $
*/
extern class XPath implements java.io.Serializable implements com.sun.org.apache.xpath.internal.ExpressionOwner
{
	/**
	* Get the raw Expression object that this class wraps.
	*
	*
	* @return the raw Expression object, which should not normally be null.
	*/
	@:overload @:public public function getExpression() : com.sun.org.apache.xpath.internal.Expression;
	
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
	@:overload @:public public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* Set the raw expression object for this object.
	*
	*
	* @param exp the raw Expression object, which should not normally be null.
	*/
	@:overload @:public public function setExpression(exp : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Get the SourceLocator on the expression object.
	*
	*
	* @return the SourceLocator on the expression object, which may be null.
	*/
	@:overload @:public public function getLocator() : javax.xml.transform.SourceLocator;
	
	/**
	* Return the XPath string associated with this object.
	*
	*
	* @return the XPath string associated with this object.
	*/
	@:overload @:public public function getPatternString() : String;
	
	/** Represents a select type expression. */
	@:public @:static @:final public static var SELECT(default, null) : Int;
	
	/** Represents a match type expression.  */
	@:public @:static @:final public static var MATCH(default, null) : Int;
	
	/**
	* Construct an XPath object.
	*
	* (Needs review -sc) This method initializes an XPathParser/
	* Compiler and compiles the expression.
	* @param exprString The XPath expression.
	* @param locator The location of the expression, may be null.
	* @param prefixResolver A prefix resolver to use to resolve prefixes to
	*                       namespace URIs.
	* @param type one of {@link #SELECT} or {@link #MATCH}.
	* @param errorListener The error listener, or null if default should be used.
	*
	* @throws javax.xml.transform.TransformerException if syntax or other error.
	*/
	@:overload @:public public function new(exprString : String, locator : javax.xml.transform.SourceLocator, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, type : Int, errorListener : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* Construct an XPath object.
	*
	* (Needs review -sc) This method initializes an XPathParser/
	* Compiler and compiles the expression.
	* @param exprString The XPath expression.
	* @param locator The location of the expression, may be null.
	* @param prefixResolver A prefix resolver to use to resolve prefixes to
	*                       namespace URIs.
	* @param type one of {@link #SELECT} or {@link #MATCH}.
	* @param errorListener The error listener, or null if default should be used.
	*
	* @throws javax.xml.transform.TransformerException if syntax or other error.
	*/
	@:overload @:public public function new(exprString : String, locator : javax.xml.transform.SourceLocator, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, type : Int, errorListener : javax.xml.transform.ErrorListener, aTable : com.sun.org.apache.xpath.internal.compiler.FunctionTable) : Void;
	
	/**
	* Construct an XPath object.
	*
	* (Needs review -sc) This method initializes an XPathParser/
	* Compiler and compiles the expression.
	* @param exprString The XPath expression.
	* @param locator The location of the expression, may be null.
	* @param prefixResolver A prefix resolver to use to resolve prefixes to
	*                       namespace URIs.
	* @param type one of {@link #SELECT} or {@link #MATCH}.
	*
	* @throws javax.xml.transform.TransformerException if syntax or other error.
	*/
	@:overload @:public public function new(exprString : String, locator : javax.xml.transform.SourceLocator, prefixResolver : com.sun.org.apache.xml.internal.utils.PrefixResolver, type : Int) : Void;
	
	/**
	* Construct an XPath object.
	*
	* @param expr The Expression object.
	*
	* @throws javax.xml.transform.TransformerException if syntax or other error.
	*/
	@:overload @:public public function new(expr : com.sun.org.apache.xpath.internal.Expression) : Void;
	
	/**
	* Given an expression and a context, evaluate the XPath
	* and return the result.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	* @param namespaceContext The context in which namespaces in the
	* XPath are supposed to be expanded.
	*
	* @return The result of the XPath or null if callbacks are used.
	* @throws TransformerException thrown if
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload @:public public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : org.w3c.dom.Node, namespaceContext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Given an expression and a context, evaluate the XPath
	* and return the result.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	* @param namespaceContext The context in which namespaces in the
	* XPath are supposed to be expanded.
	*
	* @throws TransformerException thrown if the active ProblemListener decides
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload @:public public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : Int, namespaceContext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Given an expression and a context, evaluate the XPath
	* and return the result.
	*
	* @param xctxt The execution context.
	* @param contextNode The node that "." expresses.
	* @param namespaceContext The context in which namespaces in the
	* XPath are supposed to be expanded.
	*
	* @throws TransformerException thrown if the active ProblemListener decides
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	* @xsl.usage experimental
	*/
	@:overload @:public public function bool(xctxt : com.sun.org.apache.xpath.internal.XPathContext, contextNode : Int, namespaceContext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Bool;
	
	/**
	* Get the match score of the given node.
	*
	* @param xctxt XPath runtime context.
	* @param context The current source tree context node.
	*
	* @return score, one of {@link #MATCH_SCORE_NODETEST},
	* {@link #MATCH_SCORE_NONE}, {@link #MATCH_SCORE_OTHER},
	* or {@link #MATCH_SCORE_QNAME}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function getMatchScore(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int) : Float;
	
	/**
	* Warn the user of an problem.
	*
	* @param xctxt The XPath runtime context.
	* @param sourceNode Not used.
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*/
	@:overload @:public public function warn(xctxt : com.sun.org.apache.xpath.internal.XPathContext, sourceNode : Int, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Tell the user of an assertion error, and probably throw an
	* exception.
	*
	* @param b  If false, a runtime exception will be thrown.
	* @param msg The assertion message, which should be informative.
	*
	* @throws RuntimeException if the b argument is false.
	*/
	@:overload @:public public function assertion(b : Bool, msg : String) : Void;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param xctxt The XPath runtime context.
	* @param sourceNode Not used.
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*/
	@:overload @:public public function error(xctxt : com.sun.org.apache.xpath.internal.XPathContext, sourceNode : Int, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* This will traverse the heararchy, calling the visitor for
	* each member.  If the called visitor method returns
	* false, the subtree should not be called.
	*
	* @param owner The owner of the visitor, where that path may be
	*              rewritten if needed.
	* @param visitor The visitor whose appropriate method will be called.
	*/
	@:overload @:public public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	/**
	* The match score if no match is made.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_SCORE_NONE(default, null) : Float;
	
	/**
	* The match score if the pattern has the form
	* of a QName optionally preceded by an @ character.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_SCORE_QNAME(default, null) : Float;
	
	/**
	* The match score if the pattern pattern has the form NCName:*.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_SCORE_NSWILD(default, null) : Float;
	
	/**
	* The match score if the pattern consists of just a NodeTest.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_SCORE_NODETEST(default, null) : Float;
	
	/**
	* The match score if the pattern consists of something
	* other than just a NodeTest or just a qname.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_SCORE_OTHER(default, null) : Float;
	
	
}
