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
* $Id: AbsoluteLocationPath.java,v 1.2.4.1 2005/09/12 09:44:03 pvedula Exp $
*/
@:internal extern class AbsoluteLocationPath extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	@:overload public function new() : Void;
	
	@:overload public function new(path : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	@:overload override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function getPath() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload override public function toString() : String;
	
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
