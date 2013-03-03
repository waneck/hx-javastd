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
extern class InstructionHandle implements java.io.Serializable
{
	@:protected private var i_position : Int;
	
	@:overload @:public @:final public function getNext() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload @:public @:final public function getPrev() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload @:public @:final public function getInstruction() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Replace current instruction contained in this handle.
	* Old instruction is disposed using Instruction.dispose().
	*/
	@:overload @:public public function setInstruction(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	/**
	* Temporarily swap the current instruction, without disturbing
	* anything. Meant to be used by a debugger, implementing
	* breakpoints. Current instruction is returned.
	*/
	@:overload @:public public function swapInstruction(i : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/*private*/
	@:overload @:protected private function new(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	/**
	* Called by InstructionList.setPositions when setting the position for every
	* instruction. In the presence of variable length instructions `setPositions()'
	* performs multiple passes over the instruction list to calculate the
	* correct (byte) positions and offsets by calling this function.
	*
	* @param offset additional offset caused by preceding (variable length) instructions
	* @param max_offset the maximum offset that may be caused by these instructions
	* @return additional offset caused by possible change of this instruction's length
	*/
	@:overload @:protected private function updatePosition(offset : Int, max_offset : Int) : Int;
	
	/** @return the position, i.e., the byte code offset of the contained
	* instruction. This is accurate only after
	* InstructionList.setPositions() has been called.
	*/
	@:overload @:public public function getPosition() : Int;
	
	/** Overridden in BranchHandle
	*/
	@:overload @:protected private function addHandle() : Void;
	
	/** Remove all targeters, if any.
	*/
	@:overload @:public public function removeAllTargeters() : Void;
	
	/**
	* Denote this handle isn't referenced anymore by t.
	*/
	@:overload @:public public function removeTargeter(t : com.sun.org.apache.bcel.internal.generic.InstructionTargeter) : Void;
	
	/**
	* Denote this handle is being referenced by t.
	*/
	@:overload @:public public function addTargeter(t : com.sun.org.apache.bcel.internal.generic.InstructionTargeter) : Void;
	
	@:overload @:public public function hasTargeters() : Bool;
	
	/**
	* @return null, if there are no targeters
	*/
	@:overload @:public public function getTargeters() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionTargeter>;
	
	/** @return a (verbose) string representation of the contained instruction.
	*/
	@:overload @:public public function toString(verbose : Bool) : String;
	
	/** @return a string representation of the contained instruction.
	*/
	@:overload @:public public function toString() : String;
	
	/** Add an attribute to an instruction handle.
	*
	* @param key the key object to store/retrieve the attribute
	* @param attr the attribute to associate with this handle
	*/
	@:overload @:public public function addAttribute(key : Dynamic, attr : Dynamic) : Void;
	
	/** Delete an attribute of an instruction handle.
	*
	* @param key the key object to retrieve the attribute
	*/
	@:overload @:public public function removeAttribute(key : Dynamic) : Void;
	
	/** Get attribute of an instruction handle.
	*
	* @param key the key object to store/retrieve the attribute
	*/
	@:overload @:public public function getAttribute(key : Dynamic) : Dynamic;
	
	/** @return all attributes associated with this handle
	*/
	@:overload @:public public function getAttributes() : java.util.Collection<Dynamic>;
	
	/** Convenience method, simply calls accept() on the contained instruction.
	*
	* @param v Visitor object
	*/
	@:overload @:public public function accept(v : com.sun.org.apache.bcel.internal.generic.Visitor) : Void;
	
	
}
