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
* $Id: ContextMatchStepPattern.java,v 1.2.4.2 2005/09/15 00:21:15 jeffsuttor Exp $
*/
extern class ContextMatchStepPattern extends com.sun.org.apache.xpath.internal.patterns.StepPattern
{
	/**
	* Construct a ContextMatchStepPattern.
	*
	*/
	@:overload public function new(axis : Int, paxis : Int) : Void;
	
	/**
	* Execute this pattern step, including predicates.
	*
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
	* Execute the match pattern step relative to another step.
	*
	*
	* @param xctxt The XPath runtime context.
	* NEEDSDOC @param prevStep
	*
	* @return {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NODETEST},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NONE},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_NSWILD},
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_QNAME}, or
	*         {@link com.sun.org.apache.xpath.internal.patterns.NodeTest#SCORE_OTHER}.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload public function executeRelativePathPattern(xctxt : com.sun.org.apache.xpath.internal.XPathContext, prevStep : com.sun.org.apache.xpath.internal.patterns.StepPattern) : com.sun.org.apache.xpath.internal.objects.XObject;
	
	
}
