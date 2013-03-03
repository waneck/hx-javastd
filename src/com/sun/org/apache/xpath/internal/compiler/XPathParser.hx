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
* $Id: XPathParser.java,v 1.2.4.1 2005/09/14 19:46:02 jeffsuttor Exp $
*/
extern class XPathParser
{
	/**
	* Tokenizes and parses XPath expressions. This should really be named
	* XPathParserImpl, and may be renamed in the future.
	* @xsl.usage general
	*/
	@:static @:public @:final public static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/**
	* Results from checking FilterExpr syntax
	*/
	@:protected @:final @:static private static var FILTER_MATCH_FAILED(default, null) : Int;
	
	@:protected @:final @:static private static var FILTER_MATCH_PRIMARY(default, null) : Int;
	
	@:protected @:final @:static private static var FILTER_MATCH_PREDICATES(default, null) : Int;
	
	/**
	* The parser constructor.
	*/
	@:overload @:public public function new(errorListener : javax.xml.transform.ErrorListener, sourceLocator : javax.xml.transform.SourceLocator) : Void;
	
	/**
	* Given an string, init an XPath object for selections,
	* in order that a parse doesn't
	* have to be done each time the expression is evaluated.
	*
	* @param compiler The compiler object.
	* @param expression A string conforming to the XPath grammar.
	* @param namespaceContext An object that is able to resolve prefixes in
	* the XPath to namespaces.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function initXPath(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, expression : String, namespaceContext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Given an string, init an XPath object for pattern matches,
	* in order that a parse doesn't
	* have to be done each time the expression is evaluated.
	* @param compiler The XPath object to be initialized.
	* @param expression A String representing the XPath.
	* @param namespaceContext An object that is able to resolve prefixes in
	* the XPath to namespaces.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public public function initMatchPattern(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, expression : String, namespaceContext : com.sun.org.apache.xml.internal.utils.PrefixResolver) : Void;
	
	/**
	* Allow an application to register an error event handler, where syntax
	* errors will be sent.  If the error listener is not set, syntax errors
	* will be sent to System.err.
	*
	* @param handler Reference to error listener where syntax errors will be
	*                sent.
	*/
	@:overload @:public public function setErrorHandler(handler : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* Return the current error listener.
	*
	* @return The error listener, which should not normally be null, but may be.
	*/
	@:overload @:public public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* Dump the remaining token queue.
	* Thanks to Craig for this.
	*
	* @return A dump of the remaining token queue, which may be appended to
	*         an error message.
	*/
	@:overload @:protected private function dumpRemainingTokenQueue() : String;
	
	/**
	*
	*
	* Expr  ::=  OrExpr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Expr() : Void;
	
	/**
	*
	*
	* OrExpr  ::=  AndExpr
	* | OrExpr 'or' AndExpr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function OrExpr() : Void;
	
	/**
	*
	*
	* AndExpr  ::=  EqualityExpr
	* | AndExpr 'and' EqualityExpr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function AndExpr() : Void;
	
	/**
	*
	* @returns an Object which is either a String, a Number, a Boolean, or a vector
	* of nodes.
	*
	* EqualityExpr  ::=  RelationalExpr
	* | EqualityExpr '=' RelationalExpr
	*
	*
	* @param addPos Position where expression is to be added, or -1 for append.
	*
	* @return the position at the end of the equality expression.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function EqualityExpr(addPos : Int) : Int;
	
	/**
	* .
	* @returns an Object which is either a String, a Number, a Boolean, or a vector
	* of nodes.
	*
	* RelationalExpr  ::=  AdditiveExpr
	* | RelationalExpr '<' AdditiveExpr
	* | RelationalExpr '>' AdditiveExpr
	* | RelationalExpr '<=' AdditiveExpr
	* | RelationalExpr '>=' AdditiveExpr
	*
	*
	* @param addPos Position where expression is to be added, or -1 for append.
	*
	* @return the position at the end of the relational expression.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function RelationalExpr(addPos : Int) : Int;
	
	/**
	* This has to handle construction of the operations so that they are evaluated
	* in pre-fix order.  So, for 9+7-6, instead of |+|9|-|7|6|, this needs to be
	* evaluated as |-|+|9|7|6|.
	*
	* AdditiveExpr  ::=  MultiplicativeExpr
	* | AdditiveExpr '+' MultiplicativeExpr
	* | AdditiveExpr '-' MultiplicativeExpr
	*
	*
	* @param addPos Position where expression is to be added, or -1 for append.
	*
	* @return the position at the end of the equality expression.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function AdditiveExpr(addPos : Int) : Int;
	
	/**
	* This has to handle construction of the operations so that they are evaluated
	* in pre-fix order.  So, for 9+7-6, instead of |+|9|-|7|6|, this needs to be
	* evaluated as |-|+|9|7|6|.
	*
	* MultiplicativeExpr  ::=  UnaryExpr
	* | MultiplicativeExpr MultiplyOperator UnaryExpr
	* | MultiplicativeExpr 'div' UnaryExpr
	* | MultiplicativeExpr 'mod' UnaryExpr
	* | MultiplicativeExpr 'quo' UnaryExpr
	*
	* @param addPos Position where expression is to be added, or -1 for append.
	*
	* @return the position at the end of the equality expression.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function MultiplicativeExpr(addPos : Int) : Int;
	
	/**
	*
	* UnaryExpr  ::=  UnionExpr
	* | '-' UnaryExpr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function UnaryExpr() : Void;
	
	/**
	*
	* StringExpr  ::=  Expr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function StringExpr() : Void;
	
	/**
	*
	*
	* StringExpr  ::=  Expr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function BooleanExpr() : Void;
	
	/**
	*
	*
	* NumberExpr  ::=  Expr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function NumberExpr() : Void;
	
	/**
	* The context of the right hand side expressions is the context of the
	* left hand side expression. The results of the right hand side expressions
	* are node sets. The result of the left hand side UnionExpr is the union
	* of the results of the right hand side expressions.
	*
	*
	* UnionExpr    ::=    PathExpr
	* | UnionExpr '|' PathExpr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function UnionExpr() : Void;
	
	/**
	* PathExpr  ::=  LocationPath
	* | FilterExpr
	* | FilterExpr '/' RelativeLocationPath
	* | FilterExpr '//' RelativeLocationPath
	*
	* @throws XSLProcessorException thrown if the active ProblemListener and XPathContext decide
	* the error condition is severe enough to halt processing.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function PathExpr() : Void;
	
	/**
	*
	*
	* FilterExpr  ::=  PrimaryExpr
	* | FilterExpr Predicate
	*
	* @throws XSLProcessorException thrown if the active ProblemListener and XPathContext decide
	* the error condition is severe enough to halt processing.
	*
	* @return  FILTER_MATCH_PREDICATES, if this method successfully matched a
	*          FilterExpr with one or more Predicates;
	*          FILTER_MATCH_PRIMARY, if this method successfully matched a
	*          FilterExpr that was just a PrimaryExpr; or
	*          FILTER_MATCH_FAILED, if this method did not match a FilterExpr
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function FilterExpr() : Int;
	
	/**
	*
	* PrimaryExpr  ::=  VariableReference
	* | '(' Expr ')'
	* | Literal
	* | Number
	* | FunctionCall
	*
	* @return true if this method successfully matched a PrimaryExpr
	*
	* @throws javax.xml.transform.TransformerException
	*
	*/
	@:overload @:protected private function PrimaryExpr() : Bool;
	
	/**
	*
	* Argument    ::=    Expr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Argument() : Void;
	
	/**
	*
	* FunctionCall    ::=    FunctionName '(' ( Argument ( ',' Argument)*)? ')'
	*
	* @return true if, and only if, a FunctionCall was matched
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function FunctionCall() : Bool;
	
	/**
	*
	* LocationPath ::= RelativeLocationPath
	* | AbsoluteLocationPath
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function LocationPath() : Void;
	
	/**
	*
	* RelativeLocationPath ::= Step
	* | RelativeLocationPath '/' Step
	* | AbbreviatedRelativeLocationPath
	*
	* @returns true if, and only if, a RelativeLocationPath was matched
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function RelativeLocationPath() : Bool;
	
	/**
	*
	* Step    ::=    Basis Predicate
	* | AbbreviatedStep
	*
	* @returns false if step was empty (or only a '/'); true, otherwise
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Step() : Bool;
	
	/**
	*
	* Basis    ::=    AxisName '::' NodeTest
	* | AbbreviatedBasis
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Basis() : Void;
	
	/**
	*
	* Basis    ::=    AxisName '::' NodeTest
	* | AbbreviatedBasis
	*
	* @return FROM_XXX axes type, found in {@link com.sun.org.apache.xpath.internal.compiler.Keywords}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function AxisName() : Int;
	
	/**
	*
	* NodeTest    ::=    WildcardName
	* | NodeType '(' ')'
	* | 'processing-instruction' '(' Literal ')'
	*
	* @param axesType FROM_XXX axes type, found in {@link com.sun.org.apache.xpath.internal.compiler.Keywords}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function NodeTest(axesType : Int) : Void;
	
	/**
	*
	* Predicate ::= '[' PredicateExpr ']'
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Predicate() : Void;
	
	/**
	*
	* PredicateExpr ::= Expr
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function PredicateExpr() : Void;
	
	/**
	* QName ::=  (Prefix ':')? LocalPart
	* Prefix ::=  NCName
	* LocalPart ::=  NCName
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function QName() : Void;
	
	/**
	* NCName ::=  (Letter | '_') (NCNameChar)
	* NCNameChar ::=  Letter | Digit | '.' | '-' | '_' | CombiningChar | Extender
	*/
	@:overload @:protected private function NCName() : Void;
	
	/**
	* The value of the Literal is the sequence of characters inside
	* the " or ' characters>.
	*
	* Literal  ::=  '"' [^"]* '"'
	* | "'" [^']* "'"
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Literal() : Void;
	
	/**
	*
	* Number ::= [0-9]+('.'[0-9]+)? | '.'[0-9]+
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Number() : Void;
	
	/**
	*
	* Pattern  ::=  LocationPathPattern
	* | Pattern '|' LocationPathPattern
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function Pattern() : Void;
	
	/**
	*
	*
	* LocationPathPattern  ::=  '/' RelativePathPattern?
	* | IdKeyPattern (('/' | '//') RelativePathPattern)?
	* | '//'? RelativePathPattern
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function LocationPathPattern() : Void;
	
	/**
	*
	* IdKeyPattern  ::=  'id' '(' Literal ')'
	* | 'key' '(' Literal ',' Literal ')'
	* (Also handle doc())
	*
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function IdKeyPattern() : Void;
	
	/**
	*
	* RelativePathPattern  ::=  StepPattern
	* | RelativePathPattern '/' StepPattern
	* | RelativePathPattern '//' StepPattern
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function RelativePathPattern() : Void;
	
	/**
	*
	* StepPattern  ::=  AbbreviatedNodeTestStep
	*
	* @param isLeadingSlashPermitted a boolean indicating whether a slash can
	*        appear at the start of this step
	*
	* @return boolean indicating whether a slash following the step was consumed
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function StepPattern(isLeadingSlashPermitted : Bool) : Bool;
	
	/**
	*
	* AbbreviatedNodeTestStep    ::=    '@'? NodeTest Predicate
	*
	* @param isLeadingSlashPermitted a boolean indicating whether a slash can
	*        appear at the start of this step
	*
	* @return boolean indicating whether a slash following the step was consumed
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:protected private function AbbreviatedNodeTestStep(isLeadingSlashPermitted : Bool) : Bool;
	
	
}
