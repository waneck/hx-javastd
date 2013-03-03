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
* $Id: FlowList.java,v 1.2.4.1 2005/09/01 15:21:43 pvedula Exp $
*/
extern class FlowList
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(bh : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	@:overload @:public public function new(list : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList) : Void;
	
	@:overload @:public public function add(bh : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	@:overload @:public public function append(right : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Back patch a flow list. All instruction handles must be branch handles.
	*/
	@:overload @:public public function backPatch(target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Redirect the handles from oldList to newList. "This" flow list
	* is assumed to be relative to oldList.
	*/
	@:overload @:public public function copyAndRedirect(oldList : com.sun.org.apache.bcel.internal.generic.InstructionList, newList : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	
}
