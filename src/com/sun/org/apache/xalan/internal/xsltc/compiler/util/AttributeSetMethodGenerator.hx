package com.sun.org.apache.xalan.internal.xsltc.compiler.util;
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
* $Id: AttributeSetMethodGenerator.java,v 1.5 2005/09/28 13:48:24 pvedula Exp $
*/
extern class AttributeSetMethodGenerator extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator
{
	/**
	* @author Santiago Pericas-Geertsen
	*/
	@:protected @:static @:final private static var CURRENT_INDEX(default, null) : Int;
	
	@:overload @:public public function new(methodName : String, classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator) : Void;
	
	@:overload @:public override public function getLocalIndex(name : String) : Int;
	
	@:overload @:public public function loadParameter(index : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeParameter(index : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
