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
* $Id: OutlineableChunkEnd.java,v 1.10 2010-11-01 04:34:19 joehw Exp $
*/
@:internal extern class OutlineableChunkEnd extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.MarkerInstruction
{
	/**
	* A constant instance of {@link OutlineableChunkEnd}.  As it has no fields,
	* there should be no need to create an instance of this class.
	*/
	public static var OUTLINEABLECHUNKEND(default, null) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Get the name of this instruction.  Used for debugging.
	* @return the instruction name
	*/
	@:overload public function getName() : String;
	
	/**
	* Get the name of this instruction.  Used for debugging.
	* @return the instruction name
	*/
	@:overload public function toString() : String;
	
	/**
	* Get the name of this instruction.  Used for debugging.
	* @return the instruction name
	*/
	@:overload public function toString(verbose : Bool) : String;
	
	
}
