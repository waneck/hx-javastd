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
* $Id: MethodGenerator.java,v 1.2.4.1 2005/09/05 11:16:47 pvedula Exp $
*/
extern class MethodGenerator extends com.sun.org.apache.bcel.internal.generic.MethodGen implements com.sun.org.apache.xalan.internal.xsltc.compiler.Constants
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:protected @:static @:final private static var INVALID_INDEX(default, null) : Int;
	
	@:overload @:public public function new(access_flags : Int, return_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>, arg_names : java.NativeArray<String>, method_name : String, class_name : String, il : com.sun.org.apache.bcel.internal.generic.InstructionList, cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Allocates a local variable. If the slot allocator has already been
	* initialized, then call addLocalVariable2() so that the new variable
	* is known to the allocator. Failing to do this may cause the allocator
	* to return a slot that is already in use.
	*/
	@:overload @:public override public function addLocalVariable(name : String, type : com.sun.org.apache.bcel.internal.generic.Type, start : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	@:overload @:public public function addLocalVariable2(name : String, type : com.sun.org.apache.bcel.internal.generic.Type, start : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	@:overload @:public override public function removeLocalVariable(lvg : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	@:overload @:public public function loadDOM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeDOM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeHandler() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function loadHandler() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeIterator() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function loadIterator() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function setStartNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function reset() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function nextNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function startElement() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function endElement() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function startDocument() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function endDocument() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function attribute() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function uniqueAttribute() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function namespace() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function loadCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** by default context node is the same as current node. MK437 */
	@:overload @:public public function loadContextNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function storeContextNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function getLocalIndex(name : String) : Int;
	
	@:overload @:public public function getLocalVariable(name : String) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	@:overload @:public override public function setMaxLocals() : Void;
	
	/**
	* Add a pre-compiled pattern to this mode.
	*/
	@:overload @:public public function addInstructionList(pattern : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, ilist : com.sun.org.apache.bcel.internal.generic.InstructionList) : Void;
	
	/**
	* Get the instruction list for a pre-compiled pattern. Used by
	* test sequences to avoid compiling patterns more than once.
	*/
	@:overload @:public public function getInstructionList(pattern : com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern) : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	/**
	* Breaks up the IL for this {@link MethodGenerator} into separate
	* outlined methods so that no method exceeds the 64KB limit on the length
	* of the byte code associated with a method.
	* @param classGen The {@link ClassGen} with which the generated methods
	*                 will be associated
	* @param originalMethodSize The number of bytes of bytecode represented by
	*                 the {@link InstructionList} of this method
	* @return an array of the outlined <code>Method</code>s and the original
	*         method itself
	*/
	@:overload @:public public function outlineChunks(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, originalMethodSize : Int) : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Method>;
	
	/**
	* Mark the end of the method's
	* {@link InstructionList} as the start of an outlineable chunk of code.
	* The outlineable chunk begins after the {@link InstructionHandle} that is
	* at the end of the method's {@link InstructionList}, or at the start of
	* the method if the <code>InstructionList</code> is empty.
	* See {@link OutlineableChunkStart} for more information.
	*/
	@:overload @:public public function markChunkStart() : Void;
	
	/**
	* Mark the end of an outlineable chunk of code.  See
	* {@link OutlineableChunkStart} for more information.
	*/
	@:overload @:public public function markChunkEnd() : Void;
	
	@:overload @:protected private function getThisMethod() : com.sun.org.apache.bcel.internal.classfile.Method;
	
	
}
/**
* Keeps track of all local variables used in the method.
* <p>The
* {@link MethodGen#addLocalVariable(String,Type,InstructionHandle,InstructionHandle)}</code>
* and
* {@link MethodGen#addLocalVariable(String,Type,int,InstructionHandle,InstructionHandle)}</code>
* methods of {@link MethodGen} will only keep track of
* {@link LocalVariableGen} object until it'ss removed by a call to
* {@link MethodGen#removeLocalVariable(LocalVariableGen)}.</p>
* <p>In order to support efficient copying of local variables to outlined
* methods by
* {@link #outline(InstructionHandle,InstructionHandle,String,ClassGenerator)},
* this class keeps track of all local variables defined by the method.</p>
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$compiler$util$MethodGenerator$LocalVariableRegistry') extern class MethodGenerator_LocalVariableRegistry
{
	/**
	* <p>A <code>java.lang.ArrayList</code> of all
	* {@link LocalVariableGen}s created for this method, indexed by the
	* slot number of the local variable.  The JVM stack frame of local
	* variables is divided into "slots".  A single slot can be used to
	* store more than one variable in a method, without regard to type, so
	* long as the byte code keeps the ranges of the two disjoint.</p>
	* <p>If only one registration of use of a particular slot occurs, the
	* corresponding entry of <code>_variables</code> contains the
	* <code>LocalVariableGen</code>; if more than one occurs, the
	* corresponding entry contains all such <code>LocalVariableGen</code>s
	* registered for the same slot; and if none occurs, the entry will be
	* <code>null</code>.
	*/
	@:protected private var _variables : java.util.ArrayList<Dynamic>;
	
	/**
	* Maps a name to a {@link LocalVariableGen}
	*/
	@:protected private var _nameToLVGMap : java.util.HashMap<Dynamic, Dynamic>;
	
	/**
	* Registers a {@link org.apache.bcel.generic.LocalVariableGen}
	* for this method.
	* <p><b>Preconditions:</b>
	* <ul>
	* <li>The range of instructions for <code>lvg</code> does not
	* overlap with the range of instructions for any
	* <code>LocalVariableGen</code> with the same slot index previously
	* registered for this method.  <b><em>(Unchecked.)</em></b></li>
	* </ul></p>
	* @param lvg The variable to be registered
	*/
	@:overload @:protected private function registerLocalVariable(lvg : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	/**
	* <p>Find which {@link LocalVariableGen}, if any, is registered for a
	* particular JVM local stack frame slot at a particular position in the
	* byte code for the method.</p>
	* <p><b>Preconditions:</b>
	* <ul>
	* <li>The {@link InstructionList#setPositions()} has been called for
	* the {@link InstructionList} associated with this
	* {@link MethodGenerator}.</li>
	* </ul></p>
	* @param slot the JVM local stack frame slot number
	* @param offset the position in the byte code
	* @return the <code>LocalVariableGen</code> for the local variable
	* stored in the relevant slot at the relevant offset; <code>null</code>
	* if there is none.
	*/
	@:overload @:protected private function lookupRegisteredLocalVariable(slot : Int, offset : Int) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	/**
	* <p>Set up a mapping of the name of the specified
	* {@link LocalVariableGen} object to the <code>LocalVariableGen</code>
	* itself.</p>
	* <p>This is a bit of a hack.  XSLTC is relying on the fact that the
	* name that is being looked up won't be duplicated, which isn't
	* guaranteed.  It replaces code which used to call
	* {@link MethodGen#getLocalVariables()} and looped through the
	* <code>LocalVariableGen</code> objects it contained to find the one
	* with the specified name.  However, <code>getLocalVariables()</code>
	* has the side effect of setting the start and end for any
	* <code>LocalVariableGen</code> which did not already have them
	* set, which causes problems for outlining..</p>
	* <p>See also {@link #lookUpByName(String)} and
	* {@link #removeByNameTracking(LocalVariableGen)}</P
	* @param lvg a <code>LocalVariableGen</code>
	*/
	@:overload @:protected private function registerByName(lvg : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	/**
	* Remove the mapping from the name of the specified
	* {@link LocalVariableGen} to itself.
	* See also {@link #registerByName(LocalVariableGen)} and
	* {@link #lookUpByName(String)}
	* @param lvg a <code>LocalVariableGen</code>
	*/
	@:overload @:protected private function removeByNameTracking(lvg : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	/**
	* <p>Given the name of a variable, finds a {@link LocalVariableGen}
	* corresponding to it.</p>
	* <p>See also {@link #registerByName(LocalVariableGen)} and
	* {@link #removeByNameTracking(LocalVariableGen)}</p>
	* @param name
	* @return
	*/
	@:overload @:protected private function lookUpByName(name : String) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	/**
	* <p>Gets all {@link LocalVariableGen} objects for this method.</p>
	* <p>When the <code>includeRemoved</code> argument has the value
	* <code>false</code>, this method replaces uses of
	* {@link MethodGen#getLocalVariables()} which has
	* a side-effect of setting the start and end range for any
	* <code>LocalVariableGen</code> if either was <code>null</code>.  That
	* side-effect causes problems for outlining of code in XSLTC.
	* @param includeRemoved Specifies whether all local variables ever
	* declared should be returned (<code>true</code>) or only those not
	* removed (<code>false</code>)
	* @return an array of <code>LocalVariableGen</code> containing all the
	* local variables
	*/
	@:overload @:protected private function getLocals(includeRemoved : Bool) : java.NativeArray<com.sun.org.apache.bcel.internal.generic.LocalVariableGen>;
	
	
}
/**
* Used to keep track of an outlineable chunk of instructions in the
* current method.  See {@link OutlineableChunkStart} and
* {@link OutlineableChunkEnd} for more information.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$compiler$util$MethodGenerator$Chunk') @:internal extern class MethodGenerator_Chunk implements java.lang.Comparable<Dynamic>
{
	/**
	* Implements the <code>java.util.Comparable.compareTo(Object)</code>
	* method.
	* @return
	* <ul>
	* <li>A positive <code>int</code> if the length of <code>this</code>
	* chunk in bytes is greater than that of <code>comparand</code></li>
	* <li>A negative <code>int</code> if the length of <code>this</code>
	* chunk in bytes is less than that of <code>comparand</code></li>
	* <li>Zero, otherwise.</li>
	* </ul>
	*/
	@:overload @:public public function compareTo(comparand : Dynamic) : Int;
	
	
}
