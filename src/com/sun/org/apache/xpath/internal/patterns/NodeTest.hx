package com.sun.org.apache.xpath.internal.patterns;
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
* $Id: NodeTest.java,v 1.2.4.2 2005/09/15 00:21:14 jeffsuttor Exp $
*/
extern class NodeTest extends com.sun.org.apache.xpath.internal.Expression
{
	/**
	* The namespace or local name for node tests with a wildcard.
	*  @see <a href="http://www.w3.org/TR/xpath#NT-NameTest">the XPath NameTest production.</a>
	*/
	public static var WILD(default, null) : String;
	
	/**
	* The URL to pass to the Node#supports method, to see if the
	* DOM has already been stripped of whitespace nodes.
	*/
	public static var SUPPORTS_PRE_STRIPPING(default, null) : String;
	
	/**
	* This attribute determines which node types are accepted.
	* @serial
	*/
	private var m_whatToShow : Int;
	
	/**
	* Special bitmap for match patterns starting with a function.
	* Make sure this does not conflict with {@link org.w3c.dom.traversal.NodeFilter}.
	*/
	public static var SHOW_BYFUNCTION(default, null) : Int;
	
	/**
	* This attribute determines which node types are accepted.
	* These constants are defined in the {@link org.w3c.dom.traversal.NodeFilter}
	* interface.
	*
	* @return bitset mainly defined in {@link org.w3c.dom.traversal.NodeFilter}.
	*/
	@:overload public function getWhatToShow() : Int;
	
	/**
	* This attribute determines which node types are accepted.
	* These constants are defined in the {@link org.w3c.dom.traversal.NodeFilter}
	* interface.
	*
	* @param what bitset mainly defined in {@link org.w3c.dom.traversal.NodeFilter}.
	*/
	@:overload public function setWhatToShow(what : Int) : Void;
	
	/**
	* Return the namespace to be tested.
	*
	* @return The namespace to be tested for, or {@link #WILD}, or null.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* Set the namespace to be tested.
	*
	* @param ns The namespace to be tested for, or {@link #WILD}, or null.
	*/
	@:overload public function setNamespace(ns : String) : Void;
	
	/**
	* The local name to be tested for.
	*  @serial
	*/
	private var m_name : String;
	
	/**
	* Return the local name to be tested.
	*
	* @return the local name to be tested, or {@link #WILD}, or an empty string.
	*/
	@:overload public function getLocalName() : String;
	
	/**
	* Set the local name to be tested.
	*
	* @param name the local name to be tested, or {@link #WILD}, or an empty string.
	*/
	@:overload public function setLocalName(name : String) : Void;
	
	/**
	* The match score if the pattern consists of just a NodeTest.
	*  @see <a href="http://www.w3.org/TR/xslt#conflict">XSLT Specification - 5.5 Conflict Resolution for Template Rules</a>
	*/
	public static var SCORE_NODETEST(default, null) : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* The match score if the pattern pattern has the form NCName:*.
	*  @see <a href="http://www.w3.org/TR/xslt#conflict">XSLT Specification - 5.5 Conflict Resolution for Template Rules</a>
	*/
	public static var SCORE_NSWILD(default, null) : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* The match score if the pattern has the form
	* of a QName optionally preceded by an @ character.
	*  @see <a href="http://www.w3.org/TR/xslt#conflict">XSLT Specification - 5.5 Conflict Resolution for Template Rules</a>
	*/
	public static var SCORE_QNAME(default, null) : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* The match score if the pattern consists of something
	* other than just a NodeTest or just a qname.
	*  @see <a href="http://www.w3.org/TR/xslt#conflict">XSLT Specification - 5.5 Conflict Resolution for Template Rules</a>
	*/
	public static var SCORE_OTHER(default, null) : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* The match score if no match is made.
	*  @see <a href="http://www.w3.org/TR/xslt#conflict">XSLT Specification - 5.5 Conflict Resolution for Template Rules</a>
	*/
	public static var SCORE_NONE(default, null) : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* Construct an NodeTest that tests for namespaces and node names.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	* @param namespace The namespace to be tested.
	* @param name The local name to be tested.
	*/
	@:overload public function new(whatToShow : Int, namespace : String, name : String) : Void;
	
	/**
	* Construct an NodeTest that doesn't test for node names.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	*/
	@:overload public function new(whatToShow : Int) : Void;
	
	/**
	* @see Expression#deepEquals(Expression)
	*/
	@:overload public function deepEquals(expr : com.sun.org.apache.xpath.internal.Expression) : Bool;
	
	/**
	* Null argument constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initialize this node test by setting the whatToShow property, and
	* calculating the score that this test will return if a test succeeds.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	*/
	@:overload public function initNodeTest(whatToShow : Int) : Void;
	
	/**
	* Initialize this node test by setting the whatToShow property and the
	* namespace and local name, and
	* calculating the score that this test will return if a test succeeds.
	*
	*
	* @param whatToShow Bit set defined mainly by {@link org.w3c.dom.traversal.NodeFilter}.
	* @param namespace The namespace to be tested.
	* @param name The local name to be tested.
	*/
	@:overload public function initNodeTest(whatToShow : Int, namespace : String, name : String) : Void;
	
	/**
	* Get the static score for this node test.
	* @return Should be one of the SCORE_XXX constants.
	*/
	@:overload public function getStaticScore() : com.sun.org.apache.xpath.internal.objects.XNumber;
	
	/**
	* Set the static score for this node test.
	* @param score Should be one of the SCORE_XXX constants.
	*/
	@:overload public function setStaticScore(score : com.sun.org.apache.xpath.internal.objects.XNumber) : Void;
	
	/**
	* Static calc of match score.
	*/
	@:overload private function calcScore() : Void;
	
	/**
	* Get the score that this test will return if a test succeeds.
	*
	*
	* @return the score that this test will return if a test succeeds.
	*/
	@:overload public function getDefaultScore() : Float;
	
	/**
	* Tell what node type to test, if not DTMFilter.SHOW_ALL.
	*
	* @param whatToShow Bit set defined mainly by
	*        {@link com.sun.org.apache.xml.internal.dtm.DTMFilter}.
	* @return the node type for the whatToShow.  Since whatToShow can specify
	*         multiple types, it will return the first bit tested that is on,
	*         so the caller of this function should take care that this is
	*         the function they really want to call.  If none of the known bits
	*         are set, this function will return zero.
	*/
	@:overload public static function getNodeTypeTest(whatToShow : Int) : Int;
	
	/**
	* Do a diagnostics dump of a whatToShow bit set.
	*
	*
	* @param whatToShow Bit set defined mainly by
	*        {@link com.sun.org.apache.xml.internal.dtm.DTMFilter}.
	*/
	@:overload public static function debugWhatToShow(whatToShow : Int) : Void;
	
	/**
	* Tell what the test score is for the given node.
	*
	*
	* @param xctxt XPath runtime context.
	* @param context The node being tested.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Tell what the test score is for the given node.
	*
	*
	* @param xctxt XPath runtime context.
	* @param context The node being tested.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext, context : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM, expType : Int) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Test the current node to see if it matches the given node test.
	*
	* @param xctxt XPath runtime context.
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload override public function execute(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	/**
	* Node tests by themselves do not need to fix up variables.
	*/
	@:overload override public function fixupVariables(vars : java.util.Vector<Dynamic>, globalsSize : Int) : Void;
	
	/**
	* @see com.sun.org.apache.xpath.internal.XPathVisitable#callVisitors(ExpressionOwner, XPathVisitor)
	*/
	@:overload override public function callVisitors(owner : com.sun.org.apache.xpath.internal.ExpressionOwner, visitor : com.sun.org.apache.xpath.internal.XPathVisitor) : Void;
	
	
}
