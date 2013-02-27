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
* $Id: SlotAllocator.java,v 1.2.4.1 2005/09/05 11:32:51 pvedula Exp $
*/
@:internal extern class SlotAllocator
{
	@:overload public function initialize(vars : java.NativeArray<com.sun.org.apache.bcel.internal.generic.LocalVariableGen>) : Void;
	
	@:overload public function allocateSlot(type : com.sun.org.apache.bcel.internal.generic.Type) : Int;
	
	@:overload public function releaseSlot(lvg : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	
}
