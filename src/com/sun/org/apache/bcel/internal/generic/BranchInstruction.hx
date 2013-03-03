package com.sun.org.apache.bcel.internal.generic;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class BranchInstruction extends com.sun.org.apache.bcel.internal.generic.Instruction implements com.sun.org.apache.bcel.internal.generic.InstructionTargeter
{
	/**
	* Abstract super class for branching instructions like GOTO, IFEQ, etc..
	* Branch instructions may have a variable length, namely GOTO, JSR,
	* LOOKUPSWITCH and TABLESWITCH.
	*
	* @see InstructionList
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	@:protected private var index : Int;
	
	@:protected private var target : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:protected private var position : Int;
	
	/** Common super constructor
	* @param opcodee Instruction opcode
	* @param target instruction to branch to
	*/
	@:overload @:protected private function new(opcode : java.StdTypes.Int16, target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Dump instruction as byte code to stream out.
	* @param out Output stream
	*/
	@:overload @:public override public function dump(out : java.io.DataOutputStream) : Void;
	
	/**
	* @param target branch target
	* @return the offset to  `target' relative to this instruction
	*/
	@:overload @:protected private function getTargetOffset(target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Int;
	
	/**
	* @return the offset to this instruction's target
	*/
	@:overload @:protected private function getTargetOffset() : Int;
	
	/**
	* Called by InstructionList.setPositions when setting the position for every
	* instruction. In the presence of variable length instructions `setPositions'
	* performs multiple passes over the instruction list to calculate the
	* correct (byte) positions and offsets by calling this function.
	*
	* @param offset additional offset caused by preceding (variable length) instructions
	* @param max_offset the maximum offset that may be caused by these instructions
	* @return additional offset caused by possible change of this instruction's length
	*/
	@:overload @:protected private function updatePosition(offset : Int, max_offset : Int) : Int;
	
	/**
	* Long output format:
	*
	* &lt;position in byte code&gt;
	* &lt;name of opcode&gt; "["&lt;opcode number&gt;"]"
	* "("&lt;length of instruction&gt;")"
	* "&lt;"&lt;target instruction&gt;"&gt;" "@"&lt;branch target offset&gt;
	*
	* @param verbose long/short format switch
	* @return mnemonic for instruction
	*/
	@:overload @:public override public function toString(verbose : Bool) : String;
	
	/**
	* Read needed data (e.g. index) from file. Conversion to a InstructionHandle
	* is done in InstructionList(byte[]).
	*
	* @param bytes input stream
	* @param wide wide prefix?
	* @see InstructionList
	*/
	@:overload @:protected override private function initFromFile(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, wide : Bool) : Void;
	
	/**
	* @return target offset in byte code
	*/
	@:overload @:public @:final public function getIndex() : Int;
	
	/**
	* @return target of branch instruction
	*/
	@:overload @:public public function getTarget() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Set branch target
	* @param target branch target
	*/
	@:overload @:public public function setTarget(target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @param old_ih old target
	* @param new_ih new target
	*/
	@:overload @:public public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @return true, if ih is target of this instruction
	*/
	@:overload @:public public function containsTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	
}
