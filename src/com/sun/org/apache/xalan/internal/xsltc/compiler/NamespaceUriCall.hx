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
* $Id: NamespaceUriCall.java,v 1.2.4.1 2005/09/02 10:25:26 pvedula Exp $
*/
@:internal extern class NamespaceUriCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.NameBase
{
	/**
	* Handles calls with no parameter (current node is implicit parameter).
	*/
	@:overload @:public public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	/**
	* Handles calls with one parameter (either node or node-set).
	*/
	@:overload @:public public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Translate code that leaves a node's namespace URI (as a String)
	* on the stack
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
