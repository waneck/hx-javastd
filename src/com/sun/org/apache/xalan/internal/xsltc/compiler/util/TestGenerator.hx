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
* $Id: TestGenerator.java,v 1.2.4.1 2005/09/05 11:36:49 pvedula Exp $
*/
extern class TestGenerator extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator
{
	@:overload public function new(access_flags : Int, return_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>, arg_names : java.NativeArray<String>, method_name : String, class_name : String, il : com.sun.org.apache.bcel.internal.generic.InstructionList, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	@:overload public function getHandlerIndex() : Int;
	
	@:overload public function getIteratorIndex() : Int;
	
	@:overload public function setDomIndex(domIndex : Int) : Void;
	
	@:overload override public function loadDOM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function loadCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** by default context node is the same as current node. MK437 */
	@:overload override public function loadContextNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function storeContextNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function storeCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function storeIterator() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function loadIterator() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function getLocalIndex(name : String) : Int;
	
	
}
