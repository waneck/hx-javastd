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
extern class Select extends com.sun.org.apache.bcel.internal.generic.BranchInstruction implements com.sun.org.apache.bcel.internal.generic.VariableLengthInstruction implements com.sun.org.apache.bcel.internal.generic.StackProducer
{
	/**
	* Select - Abstract super class for LOOKUPSWITCH and TABLESWITCH instructions.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	* @see LOOKUPSWITCH
	* @see TABLESWITCH
	* @see InstructionList
	*/
	@:protected private var match : java.NativeArray<Int>;
	
	@:protected private var indices : java.NativeArray<Int>;
	
	@:protected private var targets : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionHandle>;
	
	@:protected private var fixed_length : Int;
	
	@:protected private var match_length : Int;
	
	@:protected private var padding : Int;
	
	/**
	* Since this is a variable length instruction, it may shift the following
	* instructions which then need to update their position.
	*
	* Called by InstructionList.setPositions when setting the position for every
	* instruction. In the presence of variable length instructions `setPositions'
	* performs multiple passes over the instruction list to calculate the
	* correct (byte) positions and offsets by calling this function.
	*
	* @param offset additional offset caused by preceding (variable length) instructions
	* @param max_offset the maximum offset that may be caused by these instructions
	* @return additional offset caused by possible change of this instruction's length
	*/
	@:overload @:protected override private function updatePosition(offset : Int, max_offset : Int) : Int;
	
	/**
	* Dump instruction as byte code to stream out.
	* @param out Output stream
	*/
	@:overload @:public override public function dump(out : java.io.DataOutputStream) : Void;
	
	/**
	* Read needed data (e.g. index) from file.
	*/
	@:overload @:protected override private function initFromFile(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, wide : Bool) : Void;
	
	/**
	* @return mnemonic for instruction
	*/
	@:overload @:public override public function toString(verbose : Bool) : String;
	
	/**
	* Set branch target for `i'th case
	*/
	@:overload @:public public function setTarget(i : Int, target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @param old_ih old target
	* @param new_ih new target
	*/
	@:overload @:public override public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @return true, if ih is target of this instruction
	*/
	@:overload @:public override public function containsTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	/**
	* @return array of match indices
	*/
	@:overload @:public public function getMatchs() : java.NativeArray<Int>;
	
	/**
	* @return array of match target offsets
	*/
	@:overload @:public public function getIndices() : java.NativeArray<Int>;
	
	/**
	* @return array of match targets
	*/
	@:overload @:public public function getTargets() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionHandle>;
	
	/** @return how many words are produced on stack
	*/
	@:overload @:public @:public @:public @:public @:public @:public override public function produceStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	
}
