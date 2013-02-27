package com.sun.org.apache.xalan.internal.xsltc.compiler;
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
* $Id: xpath.lex,v 1.12 2005/08/02 02:59:03 mcnamara Exp $
*/
/*
* @author Jacek Ambroziak
* @author Santiago Pericas-Geertsen
* @author Morten Jorgensen
*
*/
@:internal extern class XPathLexer implements com.sun.java_cup.internal.runtime.Scanner
{
	public var YYEOF(default, null) : Int;
	
	@:overload public function next_token() : com.sun.java_cup.internal.runtime.Symbol;
	
	
}
