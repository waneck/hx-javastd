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
* $Id: LoadDocument.java,v 1.2.4.1 2005/09/06 07:14:12 pvedula Exp $
*/
extern class LoadDocument
{
	/**
	* Interprets the arguments passed from the document() function (see
	* com/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall.java) and returns an
	* iterator containing the requested nodes. Builds a union-iterator if
	* several documents are requested.
	* 2 arguments arg1 and arg2.  document(Obj, node-set) call
	*/
	@:overload @:public @:static public static function documentF(arg1 : Dynamic, arg2 : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, xslURI : String, translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Interprets the arguments passed from the document() function (see
	* com/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall.java) and returns an
	* iterator containing the requested nodes. Builds a union-iterator if
	* several documents are requested.
	* 1 arguments arg.  document(Obj) call
	*/
	@:overload @:public @:static public static function documentF(arg : Dynamic, xslURI : String, translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet, dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
