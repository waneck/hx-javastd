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
* $Id: StepPattern.java,v 1.2.4.1 2005/09/12 11:13:19 pvedula Exp $
*/
@:internal extern class StepPattern extends com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern
{
	@:protected @:final private var _axis(default, null) : Int;
	
	@:protected @:final private var _nodeType(default, null) : Int;
	
	@:protected private var _predicates : java.util.Vector<Dynamic>;
	
	@:overload @:public public function new(axis : Int, nodeType : Int, predicates : java.util.Vector<Dynamic>) : Void;
	
	@:overload @:public override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public public function getNodeType() : Int;
	
	@:overload @:public public function setPriority(priority : Float) : Void;
	
	@:overload @:public override public function getKernelPattern() : com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern;
	
	@:overload @:public override public function isWildcard() : Bool;
	
	@:overload @:public public function setPredicates(predicates : java.util.Vector<Dynamic>) : com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern;
	
	@:overload @:protected private function hasPredicates() : Bool;
	
	@:overload @:public override public function getDefaultPriority() : Float;
	
	@:overload @:public override public function getAxis() : Int;
	
	@:overload @:public override public function reduceKernelPattern() : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
