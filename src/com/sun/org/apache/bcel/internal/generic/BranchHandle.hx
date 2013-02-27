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
/**
* BranchHandle is returned by specialized InstructionList.append() whenever a
* BranchInstruction is appended. This is useful when the target of this
* instruction is not known at time of creation and must be set later
* via setTarget().
*
* @see InstructionHandle
* @see Instruction
* @see InstructionList
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class BranchHandle extends com.sun.org.apache.bcel.internal.generic.InstructionHandle
{
	/** Handle adds itself to the list of resuable handles.
	*/
	@:overload override private function addHandle() : Void;
	
	/* Override InstructionHandle methods: delegate to branch instruction.
	* Through this overriding all access to the private i_position field should
	* be prevented.
	*/
	@:overload override public function getPosition() : Int;
	
	@:overload override private function updatePosition(offset : Int, max_offset : Int) : Int;
	
	/**
	* Pass new target to instruction.
	*/
	@:overload public function setTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Update target of instruction.
	*/
	@:overload public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @return target of instruction.
	*/
	@:overload public function getTarget() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Set new contents. Old instruction is disposed and may not be used anymore.
	*/
	@:overload override public function setInstruction(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	
}
