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
* $Id: DTMWSFilter.java,v 1.2.4.1 2005/09/15 08:14:55 suresh_emailid Exp $
*/
/**
* This interface is meant to be implemented by a client of the DTM, and allows
* stripping of whitespace nodes.
*/
extern interface DTMWSFilter
{
	/**
	* Test whether whitespace-only text nodes are visible in the logical
	* view of <code>DTM</code>. Normally, this function
	* will be called by the implementation of <code>DTM</code>;
	* it is not normally called directly from
	* user code.
	*
	* @param elementHandle int Handle of the element.
	* @return one of NOTSTRIP, STRIP, or INHERIT.
	*/
	@:overload @:public public function getShouldStripSpace(elementHandle : Int, dtm : com.sun.org.apache.xml.internal.dtm.DTM) : java.StdTypes.Int16;
	
	
}
