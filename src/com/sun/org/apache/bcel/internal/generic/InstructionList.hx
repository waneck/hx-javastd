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
extern class InstructionList implements java.io.Serializable
{
	/**
	* Create (empty) instruction list.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create instruction list containing one instruction.
	* @param i initial instruction
	*/
	@:overload @:public public function new(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	/**
	* Create instruction list containing one instruction.
	* @param i initial instruction
	*/
	@:overload @:public public function new(i : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : Void;
	
	/**
	* Initialize list with (nonnull) compound instruction. Consumes argument
	* list, i.e., it becomes empty.
	*
	* @param c compound instruction (list)
	*/
	@:overload @:public public function new(c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : Void;
	
	/**
	* Test for empty list.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Find the target instruction (handle) that corresponds to the given target
	* position (byte code offset).
	*
	* @param ihs array of instruction handles, i.e. il.getInstructionHandles()
	* @param pos array of positions corresponding to ihs, i.e. il.getInstructionPositions()
	* @param count length of arrays
	* @param target target position to search for
	* @return target position's instruction handle if available
	*/
	@:native('findHandle') @:overload @:public @:static public static function _findHandle(ihs : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionHandle>, pos : java.NativeArray<Int>, count : Int, target : Int) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Get instruction handle for instruction at byte code position pos.
	* This only works properly, if the list is freshly initialized from a byte array or
	* setPositions() has been called before this method.
	*
	* @param pos byte code position to search for
	* @return target position's instruction handle if available
	*/
	@:overload @:public public function findHandle(pos : Int) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Initialize instruction list from byte array.
	*
	* @param code byte array containing the instructions
	*/
	@:overload @:public public function new(code : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Append another list after instruction (handle) ih contained in this list.
	* Consumes argument list, i.e., it becomes empty.
	*
	* @param ih where to append the instruction list
	* @param il Instruction list to append to this one
	* @return instruction handle pointing to the <B>first</B> appended instruction
	*/
	@:overload @:public public function append(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append another list after instruction i contained in this list.
	* Consumes argument list, i.e., it becomes empty.
	*
	* @param i  where to append the instruction list
	* @param il Instruction list to append to this one
	* @return instruction handle pointing to the <B>first</B> appended instruction
	*/
	@:overload @:public public function append(i : com.sun.org.apache.bcel.internal.generic.Instruction, il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append another list to this one.
	* Consumes argument list, i.e., it becomes empty.
	*
	* @param il list to append to end of this list
	* @return instruction handle of the <B>first</B> appended instruction
	*/
	@:overload @:public public function append(il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append an instruction to the end of this list.
	*
	* @param i instruction to append
	* @return instruction handle of the appended instruction
	*/
	@:overload @:public public function append(i : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append a branch instruction to the end of this list.
	*
	* @param i branch instruction to append
	* @return branch instruction handle of the appended instruction
	*/
	@:overload @:public public function append(i : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : com.sun.org.apache.bcel.internal.generic.BranchHandle;
	
	/**
	* Append a single instruction j after another instruction i, which
	* must be in this list of course!
	*
	* @param i Instruction in list
	* @param j Instruction to append after i in list
	* @return instruction handle of the first appended instruction
	*/
	@:overload @:public public function append(i : com.sun.org.apache.bcel.internal.generic.Instruction, j : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append a compound instruction, after instruction i.
	*
	* @param i Instruction in list
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first appended instruction
	*/
	@:overload @:public public function append(i : com.sun.org.apache.bcel.internal.generic.Instruction, c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append a compound instruction.
	*
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first appended instruction
	*/
	@:overload @:public public function append(c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append a compound instruction.
	*
	* @param ih where to append the instruction list
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first appended instruction
	*/
	@:overload @:public public function append(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append an instruction after instruction (handle) ih contained in this list.
	*
	* @param ih where to append the instruction list
	* @param i Instruction to append
	* @return instruction handle pointing to the <B>first</B> appended instruction
	*/
	@:overload @:public public function append(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, i : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Append an instruction after instruction (handle) ih contained in this list.
	*
	* @param ih where to append the instruction list
	* @param i Instruction to append
	* @return instruction handle pointing to the <B>first</B> appended instruction
	*/
	@:overload @:public public function append(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, i : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : com.sun.org.apache.bcel.internal.generic.BranchHandle;
	
	/**
	* Insert another list before Instruction handle ih contained in this list.
	* Consumes argument list, i.e., it becomes empty.
	*
	* @param i  where to append the instruction list
	* @param il Instruction list to insert
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert another list.
	*
	* @param il list to insert before start of this list
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert another list before Instruction i contained in this list.
	* Consumes argument list, i.e., it becomes empty.
	*
	* @param i  where to append the instruction list
	* @param il Instruction list to insert
	* @return instruction handle pointing to the first inserted instruction,
	* i.e., il.getStart()
	*/
	@:overload @:public public function insert(i : com.sun.org.apache.bcel.internal.generic.Instruction, il : com.sun.org.apache.bcel.internal.generic.InstructionList) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert an instruction at start of this list.
	*
	* @param i instruction to insert
	* @return instruction handle of the inserted instruction
	*/
	@:overload @:public public function insert(i : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert a branch instruction at start of this list.
	*
	* @param i branch instruction to insert
	* @return branch instruction handle of the appended instruction
	*/
	@:overload @:public public function insert(i : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : com.sun.org.apache.bcel.internal.generic.BranchHandle;
	
	/**
	* Insert a single instruction j before another instruction i, which
	* must be in this list of course!
	*
	* @param i Instruction in list
	* @param j Instruction to insert before i in list
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(i : com.sun.org.apache.bcel.internal.generic.Instruction, j : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert a compound instruction before instruction i.
	*
	* @param i Instruction in list
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(i : com.sun.org.apache.bcel.internal.generic.Instruction, c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert a compound instruction.
	*
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert an instruction before instruction (handle) ih contained in this list.
	*
	* @param ih where to insert to the instruction list
	* @param i Instruction to insert
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, i : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert a compound instruction.
	*
	* @param ih where to insert the instruction list
	* @param c The composite instruction (containing an InstructionList)
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, c : com.sun.org.apache.bcel.internal.generic.CompoundInstruction) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* Insert an instruction before instruction (handle) ih contained in this list.
	*
	* @param ih where to insert to the instruction list
	* @param i Instruction to insert
	* @return instruction handle of the first inserted instruction
	*/
	@:overload @:public public function insert(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, i : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : com.sun.org.apache.bcel.internal.generic.BranchHandle;
	
	/**
	* Take all instructions (handles) from "start" to "end" and append them after the
	* new location "target". Of course, "end" must be after "start" and target must
	* not be located withing this range. If you want to move something to the start of
	* the list use null as value for target.<br>
	* Any instruction targeters pointing to handles within the block, keep their targets.
	*
	* @param start  of moved block
	* @param end    of moved block
	* @param target of moved block
	*/
	@:overload @:public public function move(start : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end : com.sun.org.apache.bcel.internal.generic.InstructionHandle, target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Move a single instruction (handle) to a new location.
	*
	* @param ih     moved instruction
	* @param target new location of moved instruction
	*/
	@:overload @:public public function move(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Remove instruction from this list. The corresponding Instruction
	* handles must not be reused!
	*
	* @param ih instruction (handle) to remove
	*/
	@:overload @:public public function delete(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Remove instruction from this list. The corresponding Instruction
	* handles must not be reused!
	*
	* @param i instruction to remove
	*/
	@:overload @:public public function delete(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	/**
	* Remove instructions from instruction `from' to instruction `to' contained
	* in this list. The user must ensure that `from' is an instruction before
	* `to', or risk havoc. The corresponding Instruction handles must not be reused!
	*
	* @param from where to start deleting (inclusive)
	* @param to   where to end deleting (inclusive)
	*/
	@:overload @:public public function delete(from : com.sun.org.apache.bcel.internal.generic.InstructionHandle, to : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Remove instructions from instruction `from' to instruction `to' contained
	* in this list. The user must ensure that `from' is an instruction before
	* `to', or risk havoc. The corresponding Instruction handles must not be reused!
	*
	* @param from where to start deleting (inclusive)
	* @param to   where to end deleting (inclusive)
	*/
	@:overload @:public public function delete(from : com.sun.org.apache.bcel.internal.generic.Instruction, to : com.sun.org.apache.bcel.internal.generic.Instruction) : Void;
	
	@:overload @:public public function contains(i : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	@:overload @:public public function contains(i : com.sun.org.apache.bcel.internal.generic.Instruction) : Bool;
	
	@:overload @:public public function setPositions() : Void;
	
	/**
	* Give all instructions their position number (offset in byte stream), i.e.,
	* make the list ready to be dumped.
	*
	* @param check Perform sanity checks, e.g. if all targeted instructions really belong
	* to this list
	*/
	@:overload @:public public function setPositions(check : Bool) : Void;
	
	/**
	* When everything is finished, use this method to convert the instruction
	* list into an array of bytes.
	*
	* @return the byte code ready to be dumped
	*/
	@:overload @:public public function getByteCode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @return an array of instructions without target information for branch instructions.
	*/
	@:overload @:public public function getInstructions() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Instruction>;
	
	@:overload @:public public function toString() : String;
	
	/**
	* @param verbose toggle output format
	* @return String containing all instructions in this list.
	*/
	@:overload @:public public function toString(verbose : Bool) : String;
	
	/**
	* @return Enumeration that lists all instructions (handles)
	*/
	@:overload @:public public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* @return array containing all instructions (handles)
	*/
	@:overload @:public public function getInstructionHandles() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.InstructionHandle>;
	
	/**
	* Get positions (offsets) of all instructions in the list. This relies on that
	* the list has been freshly created from an byte code array, or that setPositions()
	* has been called. Otherwise this may be inaccurate.
	*
	* @return array containing all instruction's offset in byte code
	*/
	@:overload @:public public function getInstructionPositions() : java.NativeArray<Int>;
	
	/**
	* @return complete, i.e., deep copy of this list
	*/
	@:overload @:public public function copy() : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	/** Replace all references to the old constant pool with references to the new
	*  constant pool
	*/
	@:overload @:public public function replaceConstantPool(old_cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, new_cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Delete contents of list. Provides besser memory utilization,
	* because the system then may reuse the instruction handles. This
	* method is typically called right after
	* <href="MethodGen.html#getMethod()">MethodGen.getMethod()</a>.
	*/
	@:overload @:public public function dispose() : Void;
	
	/**
	* @return start of list
	*/
	@:overload @:public public function getStart() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* @return end of list
	*/
	@:overload @:public public function getEnd() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/**
	* @return length of list (Number of instructions, not bytes)
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* @return length of list (Number of instructions, not bytes)
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Redirect all references from old_target to new_target, i.e., update targets
	* of branch instructions.
	*
	* @param old_target the old target instruction handle
	* @param new_target the new target instruction handle
	*/
	@:overload @:public public function redirectBranches(old_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Redirect all references of local variables from old_target to new_target.
	*
	* @param lg array of local variables
	* @param old_target the old target instruction handle
	* @param new_target the new target instruction handle
	* @see MethodGen
	*/
	@:overload @:public public function redirectLocalVariables(lg : java.NativeArray<com.sun.org.apache.bcel.internal.generic.LocalVariableGen>, old_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Redirect all references of exception handlers from old_target to new_target.
	*
	* @param exceptions array of exception handlers
	* @param old_target the old target instruction handle
	* @param new_target the new target instruction handle
	* @see MethodGen
	*/
	@:overload @:public public function redirectExceptionHandlers(exceptions : java.NativeArray<com.sun.org.apache.bcel.internal.generic.CodeExceptionGen>, old_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/** Add observer for this object.
	*/
	@:overload @:public public function addObserver(o : com.sun.org.apache.bcel.internal.generic.InstructionListObserver) : Void;
	
	/** Remove observer for this object.
	*/
	@:overload @:public public function removeObserver(o : com.sun.org.apache.bcel.internal.generic.InstructionListObserver) : Void;
	
	/** Call notify() method on all observers. This method is not called
	* automatically whenever the state has changed, but has to be
	* called by the user after he has finished editing the object.
	*/
	@:overload @:public public function update() : Void;
	
	
}
