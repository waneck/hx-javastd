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
* $Id: ParentLocationPath.java,v 1.2.4.1 2005/09/12 10:56:30 pvedula Exp $
*/
@:internal extern class ParentLocationPath extends com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath
{
	@:overload public function new(path : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath, step : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	@:overload public function setAxis(axis : Int) : Void;
	
	@:overload public function getAxis() : Int;
	
	@:overload public function getPath() : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativeLocationPath;
	
	@:overload public function getStep() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload public function enableNodeOrdering() : Void;
	
	/**
	* This method is used to determine if this parent location path is a
	* combination of two step's with axes that will create duplicate or
	* unordered nodes.
	*/
	@:overload public function checkAxisMismatch() : Bool;
	
	@:overload public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function translateStep(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
