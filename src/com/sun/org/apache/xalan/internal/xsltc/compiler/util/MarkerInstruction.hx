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
* $Id: MethodGenerator.java,v 1.10 2010-11-01 04:34:19 joehw Exp $
*/
@:internal extern class MarkerInstruction extends com.sun.org.apache.bcel.internal.generic.Instruction
{
	/**
	* Zero-argument constructor.  Sets the opcode to an invalid value and
	* sets the length to zero, as it will not be written as part of the
	* generated byte code.
	*/
	@:overload public function new() : Void;
	
	/**
	* {@link com.sun.org.apache.bcel.internal.generic.Visitor}s will know nothing about this
	* kind of {@link org.apche.bcel.generic.Instruction}, so this method does
	* nothing.
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.generic.Visitor) : Void;
	
	/**
	* The number of JVM stack entries consumed by the instruction.
	* This instruction is just a place holder, so it does not consume any
	* stack entries.
	* @param cpg The {@link com.sun.org.apache.bcel.internal.generic.ConstantPoolGen} for the
	* current {@link com.sun.org.apache.bcel.internal.generic.ClassGen}
	* @return <code>0</code> always
	*/
	@:overload @:final public function consumeStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	/**
	* The number of JVM stack entries produced by the instruction.
	* This instruction is just a place holder, so it does not produce any
	* stack entries.
	* @param cpg The {@link com.sun.org.apache.bcel.internal.generic.ConstantPoolGen} for the
	* current {@link com.sun.org.apache.bcel.internal.generic.ClassGen}
	* @return <code>0</code> always
	*/
	@:overload @:final public function produceStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	/**
	* Produce a copy of the instruction.  By default a
	* {@link MarkerInstruction} has no parameters, so the base implementation
	* of {@link #copy()} returns the instruction itself.
	* @return The instruction itself.
	*/
	@:overload public function copy() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Dump instruction as byte code to stream out.  A {@link MarkerInstruction}
	* has no effect on the generated byte code so it is never emitted to the
	* output stream.
	* @param out Output stream
	*/
	@:overload @:final public function dump(out : java.io.DataOutputStream) : Void;
	
	
}
