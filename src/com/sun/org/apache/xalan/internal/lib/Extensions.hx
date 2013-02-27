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
* $Id: Extensions.java,v 1.2.4.1 2005/09/10 18:53:32 jeffsuttor Exp $
*/
extern class Extensions
{
	/**
	* This method is an extension that implements as a Xalan extension
	* the node-set function also found in xt and saxon.
	* If the argument is a Result Tree Fragment, then <code>nodeset</code>
	* returns a node-set consisting of a single root node as described in
	* section 11.1 of the XSLT 1.0 Recommendation.  If the argument is a
	* node-set, <code>nodeset</code> returns a node-set.  If the argument
	* is a string, number, or boolean, then <code>nodeset</code> returns
	* a node-set consisting of a single root node with a single text node
	* child that is the result of calling the XPath string() function on the
	* passed parameter.  If the argument is anything else, then a node-set
	* is returned consisting of a single root node with a single text node
	* child that is the result of calling the java <code>toString()</code>
	* method on the passed argument.
	* Most of the
	* actual work here is done in <code>MethodResolver</code> and
	* <code>XRTreeFrag</code>.
	* @param myProcessor Context passed by the extension processor
	* @param rtf Argument in the stylesheet to the nodeset extension function
	*
	* NEEDSDOC ($objectName$) @return
	*/
	@:overload public static function nodeset(myProcessor : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, rtf : Dynamic) : com.sun.org.apache.xpath.internal.NodeSet;
	
	/**
	* Returns the intersection of two node-sets.
	*
	* @param nl1 NodeList for first node-set
	* @param nl2 NodeList for second node-set
	* @return a NodeList containing the nodes in nl1 that are also in nl2
	*
	* Note: The usage of this extension function in the xalan namespace
	* is deprecated. Please use the same function in the EXSLT sets extension
	* (http://exslt.org/sets).
	*/
	@:overload public static function intersection(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* Returns the difference between two node-sets.
	*
	* @param nl1 NodeList for first node-set
	* @param nl2 NodeList for second node-set
	* @return a NodeList containing the nodes in nl1 that are not in nl2
	*
	* Note: The usage of this extension function in the xalan namespace
	* is deprecated. Please use the same function in the EXSLT sets extension
	* (http://exslt.org/sets).
	*/
	@:overload public static function difference(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* Returns node-set containing distinct string values.
	*
	* @param nl NodeList for node-set
	* @return a NodeList with nodes from nl containing distinct string values.
	* In other words, if more than one node in nl contains the same string value,
	* only include the first such node found.
	*
	* Note: The usage of this extension function in the xalan namespace
	* is deprecated. Please use the same function in the EXSLT sets extension
	* (http://exslt.org/sets).
	*/
	@:overload public static function distinct(nl : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* Returns true if both node-sets contain the same set of nodes.
	*
	* @param nl1 NodeList for first node-set
	* @param nl2 NodeList for second node-set
	* @return true if nl1 and nl2 contain exactly the same set of nodes.
	*/
	@:overload public static function hasSameNodes(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : Bool;
	
	/**
	* Returns the result of evaluating the argument as a string containing
	* an XPath expression.  Used where the XPath expression is not known until
	* run-time.  The expression is evaluated as if the run-time value of the
	* argument appeared in place of the evaluate function call at compile time.
	*
	* @param myContext an <code>ExpressionContext</code> passed in by the
	*                  extension mechanism.  This must be an XPathContext.
	* @param xpathExpr The XPath expression to be evaluated.
	* @return the XObject resulting from evaluating the XPath
	*
	* @throws SAXNotSupportedException
	*
	* Note: The usage of this extension function in the xalan namespace
	* is deprecated. Please use the same function in the EXSLT dynamic extension
	* (http://exslt.org/dynamic).
	*/
	@:overload public static function evaluate(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext, xpathExpr : String) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Returns a NodeSet containing one text node for each token in the first argument.
	* Delimiters are specified in the second argument.
	* Tokens are determined by a call to <code>StringTokenizer</code>.
	* If the first argument is an empty string or contains only delimiters, the result
	* will be an empty NodeSet.
	*
	* Contributed to XalanJ1 by <a href="mailto:benoit.cerrina@writeme.com">Benoit Cerrina</a>.
	*
	* @param toTokenize The string to be split into text tokens.
	* @param delims The delimiters to use.
	* @return a NodeSet as described above.
	*/
	@:overload public static function tokenize(toTokenize : String, delims : String) : org.w3c.dom.NodeList;
	
	/**
	* Returns a NodeSet containing one text node for each token in the first argument.
	* Delimiters are whitespace.  That is, the delimiters that are used are tab (&#x09),
	* linefeed (&#x0A), return (&#x0D), and space (&#x20).
	* Tokens are determined by a call to <code>StringTokenizer</code>.
	* If the first argument is an empty string or contains only delimiters, the result
	* will be an empty NodeSet.
	*
	* Contributed to XalanJ1 by <a href="mailto:benoit.cerrina@writeme.com">Benoit Cerrina</a>.
	*
	* @param toTokenize The string to be split into text tokens.
	* @return a NodeSet as described above.
	*/
	@:overload public static function tokenize(toTokenize : String) : org.w3c.dom.NodeList;
	
	/**
	* Return a Node of basic debugging information from the
	* EnvironmentCheck utility about the Java environment.
	*
	* <p>Simply calls the {@link com.sun.org.apache.xalan.internal.xslt.EnvironmentCheck}
	* utility to grab info about the Java environment and CLASSPATH,
	* etc., and then returns the resulting Node.  Stylesheets can
	* then maniuplate this data or simply xsl:copy-of the Node.  Note
	* that we first attempt to load the more advanced
	* org.apache.env.Which utility by reflection; only if that fails
	* to we still use the internal version.  Which is available from
	* <a href="http://xml.apache.org/commons/">http://xml.apache.org/commons/</a>.</p>
	*
	* <p>We throw a WrappedRuntimeException in the unlikely case
	* that reading information from the environment throws us an
	* exception. (Is this really the best thing to do?)</p>
	*
	* @param myContext an <code>ExpressionContext</code> passed in by the
	*                  extension mechanism.  This must be an XPathContext.
	* @return a Node as described above.
	*/
	@:overload public static function checkEnvironment(myContext : com.sun.org.apache.xalan.internal.extensions.ExpressionContext) : org.w3c.dom.Node;
	
	
}
/**
* This class is not loaded until first referenced (see Java Language
* Specification by Gosling/Joy/Steele, section 12.4.1)
*
* The static members are created when this class is first referenced, as a
* lazy initialization not needing checking against null or any
* synchronization.
*
*/
@:native('com$sun$org$apache$xalan$internal$lib$Extensions$DocumentHolder') @:internal extern class Extensions_DocumentHolder
{
	
}
