package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
* $Id: FilterParentPath.java,v 1.2.4.1 2005/09/12 10:24:55 pvedula Exp $
*/
@:internal extern class FilterParentPath extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	@:overload @:public public function new(filterExpr : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, path : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public public function setDescendantAxis() : Void;
	
	/**
	* Type check a FilterParentPath. If the filter is not a node-set add a
	* cast to node-set only if it is of reference type. This type coercion is
	* needed for expressions like $x/LINE where $x is a parameter reference.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
