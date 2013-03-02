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
* $Id: AncestorPattern.java,v 1.2.4.1 2005/09/01 09:19:41 pvedula Exp $
*/
@:internal extern class AncestorPattern extends com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern
{
	@:overload public function new(right : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern) : Void;
	
	@:overload public function new(left : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, right : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern) : Void;
	
	@:overload public function getLoopHandle() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function isWildcard() : Bool;
	
	@:overload public function getKernelPattern() : com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern;
	
	@:overload public function reduceKernelPattern() : Void;
	
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function toString() : String;
	
	
}
