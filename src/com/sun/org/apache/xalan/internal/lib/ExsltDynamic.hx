package com.sun.org.apache.xalan.internal.lib;
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
* $Id: ExsltDynamic.java,v 1.1.2.1 2005/08/01 02:08:51 jeffsuttor Exp $
*/
extern class ExsltDynamic extends com.sun.org.apache.xalan.internal.lib.ExsltBase
{
	/**
	* This class contains EXSLT dynamic extension functions.
	*
	* It is accessed by specifying a namespace URI as follows:
	* <pre>
	*    xmlns:dyn="http://exslt.org/dynamic"
	* </pre>
	* The documentation for each function has been copied from the relevant
	* EXSLT Implementer page.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>

	* @xsl.usage general
	*/
	@:public @:static @:final public static var EXSL_URI(default, null) : String;
	
	/**
	* The dyn:max function calculates the maximum value for the nodes passed as
	* the first argument, where the value of each node is calculated dynamically
	* using an XPath expression passed as a string as the second argument.
	* <p>
	* The expressions are evaluated relative to the nodes passed as the first argument.
	* In other words, the value for each node is calculated by evaluating the XPath
	* expression with all context information being the same as that for the call to
	* the dyn:max function itself, except for the following:
	* <p>
	* <ul>
	*  <li>the context node is the node whose value is being calculated.</li>
	*  <li>the context position is the position of the node within the node set passed as
	*   the first argument to the dyn:max function, arranged in document order.</li>
	*  <li>the context size is the number of nodes passed as the first argument to the
	*   dyn:max function.</li>
	* </ul>
	* <p>
	* The dyn:max function returns the maximum of these values, calculated in exactly
	* the same way as for math:max.
	* <p>
	* If the expression string passed as the second argument is an invalid XPath
	* expression (including an empty string), this function returns NaN.
	* <p>
	* This function must take a second argument. To calculate the maximum of a set of
	* nodes based on their string values, you should use the math:max function.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param nl The node set
	* @param expr The expression string
	*
	* @return The maximum evaluation value
	*/
	@:overload @:public @:static public static function max(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, nl : org.w3c.dom.NodeList, expr : String) : Float;
	
	/**
	* The dyn:min function calculates the minimum value for the nodes passed as the
	* first argument, where the value of each node is calculated dynamically using
	* an XPath expression passed as a string as the second argument.
	* <p>
	* The expressions are evaluated relative to the nodes passed as the first argument.
	* In other words, the value for each node is calculated by evaluating the XPath
	* expression with all context information being the same as that for the call to
	* the dyn:min function itself, except for the following:
	* <p>
	* <ul>
	*  <li>the context node is the node whose value is being calculated.</li>
	*  <li>the context position is the position of the node within the node set passed
	*    as the first argument to the dyn:min function, arranged in document order.</li>
	*  <li>the context size is the number of nodes passed as the first argument to the
	*    dyn:min function.</li>
	* </ul>
	* <p>
	* The dyn:min function returns the minimum of these values, calculated in exactly
	* the same way as for math:min.
	* <p>
	* If the expression string passed as the second argument is an invalid XPath expression
	* (including an empty string), this function returns NaN.
	* <p>
	* This function must take a second argument. To calculate the minimum of a set of
	* nodes based on their string values, you should use the math:min function.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param nl The node set
	* @param expr The expression string
	*
	* @return The minimum evaluation value
	*/
	@:overload @:public @:static public static function min(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, nl : org.w3c.dom.NodeList, expr : String) : Float;
	
	/**
	* The dyn:sum function calculates the sum for the nodes passed as the first argument,
	* where the value of each node is calculated dynamically using an XPath expression
	* passed as a string as the second argument.
	* <p>
	* The expressions are evaluated relative to the nodes passed as the first argument.
	* In other words, the value for each node is calculated by evaluating the XPath
	* expression with all context information being the same as that for the call to
	* the dyn:sum function itself, except for the following:
	* <p>
	* <ul>
	*  <li>the context node is the node whose value is being calculated.</li>
	*  <li>the context position is the position of the node within the node set passed as
	*    the first argument to the dyn:sum function, arranged in document order.</li>
	*  <li>the context size is the number of nodes passed as the first argument to the
	*    dyn:sum function.</li>
	* </ul>
	* <p>
	* The dyn:sum function returns the sumimum of these values, calculated in exactly
	* the same way as for sum.
	* <p>
	* If the expression string passed as the second argument is an invalid XPath
	* expression (including an empty string), this function returns NaN.
	* <p>
	* This function must take a second argument. To calculate the sumimum of a set of
	* nodes based on their string values, you should use the sum function.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param nl The node set
	* @param expr The expression string
	*
	* @return The sum of the evaluation value on each node
	*/
	@:overload @:public @:static public static function sum(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, nl : org.w3c.dom.NodeList, expr : String) : Float;
	
	/**
	* The dyn:map function evaluates the expression passed as the second argument for
	* each of the nodes passed as the first argument, and returns a node set of those values.
	* <p>
	* The expressions are evaluated relative to the nodes passed as the first argument.
	* In other words, the value for each node is calculated by evaluating the XPath
	* expression with all context information being the same as that for the call to
	* the dyn:map function itself, except for the following:
	* <p>
	* <ul>
	*  <li>The context node is the node whose value is being calculated.</li>
	*  <li>the context position is the position of the node within the node set passed
	*    as the first argument to the dyn:map function, arranged in document order.</li>
	*  <li>the context size is the number of nodes passed as the first argument to the
	*    dyn:map function.</li>
	* </ul>
	* <p>
	* If the expression string passed as the second argument is an invalid XPath
	* expression (including an empty string), this function returns an empty node set.
	* <p>
	* If the XPath expression evaluates as a node set, the dyn:map function returns
	* the union of the node sets returned by evaluating the expression for each of the
	* nodes in the first argument. Note that this may mean that the node set resulting
	* from the call to the dyn:map function contains a different number of nodes from
	* the number in the node set passed as the first argument to the function.
	* <p>
	* If the XPath expression evaluates as a number, the dyn:map function returns a
	* node set containing one exsl:number element (namespace http://exslt.org/common)
	* for each node in the node set passed as the first argument to the dyn:map function,
	* in document order. The string value of each exsl:number element is the same as
	* the result of converting the number resulting from evaluating the expression to
	* a string as with the number function, with the exception that Infinity results
	* in an exsl:number holding the highest number the implementation can store, and
	* -Infinity results in an exsl:number holding the lowest number the implementation
	* can store.
	* <p>
	* If the XPath expression evaluates as a boolean, the dyn:map function returns a
	* node set containing one exsl:boolean element (namespace http://exslt.org/common)
	* for each node in the node set passed as the first argument to the dyn:map function,
	* in document order. The string value of each exsl:boolean element is 'true' if the
	* expression evaluates as true for the node, and '' if the expression evaluates as
	* false.
	* <p>
	* Otherwise, the dyn:map function returns a node set containing one exsl:string
	* element (namespace http://exslt.org/common) for each node in the node set passed
	* as the first argument to the dyn:map function, in document order. The string
	* value of each exsl:string element is the same as the result of converting the
	* result of evaluating the expression for the relevant node to a string as with
	* the string function.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param nl The node set
	* @param expr The expression string
	*
	* @return The node set after evaluation
	*/
	@:overload @:public @:static public static function map(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, nl : org.w3c.dom.NodeList, expr : String) : org.w3c.dom.NodeList;
	
	/**
	* The dyn:evaluate function evaluates a string as an XPath expression and returns
	* the resulting value, which might be a boolean, number, string, node set, result
	* tree fragment or external object. The sole argument is the string to be evaluated.
	* <p>
	* If the expression string passed as the second argument is an invalid XPath
	* expression (including an empty string), this function returns an empty node set.
	* <p>
	* You should only use this function if the expression must be constructed dynamically,
	* otherwise it is much more efficient to use the expression literally.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param xpathExpr The XPath expression string
	*
	* @return The evaluation result
	*/
	@:overload @:public @:static public static function evaluate(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, xpathExpr : String) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* The dyn:closure function creates a node set resulting from transitive closure of
	* evaluating the expression passed as the second argument on each of the nodes passed
	* as the first argument, then on the node set resulting from that and so on until no
	* more nodes are found. For example:
	* <pre>
	*  dyn:closure(., '*')
	* </pre>
	* returns all the descendant elements of the node (its element children, their
	* children, their children's children and so on).
	* <p>
	* The expression is thus evaluated several times, each with a different node set
	* acting as the context of the expression. The first time the expression is
	* evaluated, the context node set is the first argument passed to the dyn:closure
	* function. In other words, the node set for each node is calculated by evaluating
	* the XPath expression with all context information being the same as that for
	* the call to the dyn:closure function itself, except for the following:
	* <p>
	* <ul>
	*  <li>the context node is the node whose value is being calculated.</li>
	*  <li>the context position is the position of the node within the node set passed
	*    as the first argument to the dyn:closure function, arranged in document order.</li>
	*  <li>the context size is the number of nodes passed as the first argument to the
	*    dyn:closure function.</li>
	*  <li>the current node is the node whose value is being calculated.</li>
	* </ul>
	* <p>
	* The result for a particular iteration is the union of the node sets resulting
	* from evaluting the expression for each of the nodes in the source node set for
	* that iteration. This result is then used as the source node set for the next
	* iteration, and so on. The result of the function as a whole is the union of
	* the node sets generated by each iteration.
	* <p>
	* If the expression string passed as the second argument is an invalid XPath
	* expression (including an empty string) or an expression that does not return a
	* node set, this function returns an empty node set.
	*
	* @param myContext The ExpressionContext passed by the extension processor
	* @param nl The node set
	* @param expr The expression string
	*
	* @return The node set after evaluation
	*/
	@:overload @:public @:static public static function closure(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, nl : org.w3c.dom.NodeList, expr : String) : org.w3c.dom.NodeList;
	
	
}
