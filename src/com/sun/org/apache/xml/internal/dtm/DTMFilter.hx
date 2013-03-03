package com.sun.org.apache.xml.internal.dtm;
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
* $Id: DTMFilter.java,v 1.2.4.1 2005/09/15 08:14:53 suresh_emailid Exp $
*/
/**
* Simple filter for doing node tests.  Note the semantics of this are
* somewhat different that the DOM's NodeFilter.
*/
extern interface DTMFilter
{
	/**
	* Test whether a specified node is visible in the logical view of a
	* <code>DTMIterator</code>. Normally, this function
	* will be called by the implementation of <code>DTMIterator</code>;
	* it is not normally called directly from
	* user code.
	*
	* @param nodeHandle int Handle of the node.
	* @param whatToShow one of SHOW_XXX values.
	* @return one of FILTER_ACCEPT, FILTER_REJECT, or FILTER_SKIP.
	*/
	@:overload @:public public function acceptNode(nodeHandle : Int, whatToShow : Int) : java.StdTypes.Int16;
	
	/**
	* Test whether a specified node is visible in the logical view of a
	* <code>DTMIterator</code>. Normally, this function
	* will be called by the implementation of <code>DTMIterator</code>;
	* it is not normally called directly from
	* user code.
	* <p>
	* TODO: Should this be setNameMatch(expandedName) followed by accept()?
	* Or will we really be testing a different name at every invocation?
	*
	* <p>%REVIEW% Under what circumstances will this be used? The cases
	* I've considered are just as easy and just about as efficient if
	* the name test is performed in the DTMIterator... -- Joe</p>
	*
	* <p>%REVIEW% Should that 0xFFFF have a mnemonic assigned to it?
	* Also: This representation is assuming the expanded name is indeed
	* split into high/low 16-bit halfwords. If we ever change the
	* balance between namespace and localname bits (eg because we
	* decide there are many more localnames than namespaces, which is
	* fairly likely), this is going to break. It might be safer to
	* encapsulate the details with a makeExpandedName method and make
	* that responsible for setting up the wildcard version as well.</p>
	*
	* @param nodeHandle int Handle of the node.
	* @param whatToShow one of SHOW_XXX values.
	* @param expandedName a value defining the exanded name as defined in
	*                     the DTM interface.  Wild cards will be defined
	*                     by 0xFFFF in the namespace and/or localname
	*                     portion of the expandedName.
	* @return one of FILTER_ACCEPT, FILTER_REJECT, or FILTER_SKIP.  */
	@:overload @:public public function acceptNode(nodeHandle : Int, whatToShow : Int, expandedName : Int) : java.StdTypes.Int16;
	
	
}
