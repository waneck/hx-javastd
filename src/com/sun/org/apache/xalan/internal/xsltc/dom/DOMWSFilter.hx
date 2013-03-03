package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* $Id: DOMWSFilter.java,v 1.2.4.1 2005/09/06 06:14:31 pvedula Exp $
*/
extern class DOMWSFilter implements com.sun.org.apache.xml.internal.dtm.DTMWSFilter
{
	/**
	* Construct an adapter connecting the <code>DTMWSFilter</code> interface
	* to the <code>StripFilter</code> interface.
	*
	* @param translet A translet that also implements the StripFilter
	* interface.
	*
	* @see com.sun.org.apache.xml.internal.dtm.DTMWSFilter
	* @see com.sun.org.apache.xalan.internal.xsltc.StripFilter
	*/
	@:overload @:public public function new(translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet) : Void;
	
	/**
	* Test whether whitespace-only text nodes are visible in the logical
	* view of <code>DTM</code>. Normally, this function
	* will be called by the implementation of <code>DTM</code>;
	* it is not normally called directly from
	* user code.
	*
	* @param node int handle of the node.
	* @param dtm the DTM that owns this node
	* @return one of <code>NOTSTRIP</code>, <code>STRIP</code> or
	* <code>INHERIT</code>.
	*/
	@:overload @:public public function getShouldStripSpace(node : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM) : java.StdTypes.Int16;
	
	
}
