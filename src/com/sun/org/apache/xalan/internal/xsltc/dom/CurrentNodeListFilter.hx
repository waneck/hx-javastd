package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: CurrentNodeListFilter.java,v 1.2.4.1 2005/09/06 06:04:06 pvedula Exp $
*/
extern interface CurrentNodeListFilter
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	*/
	@:overload @:public @:abstract public function test(node : Int, position : Int, last : Int, current : Int, translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet, iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Bool;
	
	
}
