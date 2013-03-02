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
* Template class for building up a method. This is done by defining exception
* handlers, adding thrown exceptions, local variables and attributes, whereas
* the `LocalVariableTable' and `LineNumberTable' attributes will be set
* automatically for the code. Use stripAttributes() if you don't like this.
*
* While generating code it may be necessary to insert NOP operations. You can
* use the `removeNOPs' method to get rid off them.
* The resulting method object can be obtained via the `getMethod()' method.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @author  <A HREF="http://www.vmeng.com/beard">Patrick C. Beard</A> [setMaxStack()]
* @see     InstructionList
* @see     Method
*/
extern class MethodGen extends com.sun.org.apache.bcel.internal.generic.FieldGenOrMethodGen
{
	/**
	* Declare method. If the method is non-static the constructor
	* automatically declares a local variable `$this' in slot 0. The
	* actual code is contained in the `il' parameter, which may further
	* manipulated by the user. But he must take care not to remove any
	* instruction (handles) that are still referenced from this object.
	*
	* For example one may not add a local variable and later remove the
	* instructions it refers to without causing havoc. It is safe
	* however if you remove that local variable, too.
	*
	* @param access_flags access qualifiers
	* @param return_type  method type
	* @param arg_types argument types
	* @param arg_names argument names (if this is null, default names will be provided
	* for them)
	* @param method_name name of method
	* @param class_name class name containing this method (may be null, if you don't care)
	* @param il instruction list associated with this method, may be null only for
	* abstract or native methods
	* @param cp constant pool
	*/
	@:overload public function new(access_flags : Int, return_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>, arg_names : java.NativeArray<String>, method_name : String, class_name : String, il : com.sun.org.apache.bcel.internal.generic.InstructionList, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Instantiate from existing method.
	*
	* @param m method
	* @param class_name class name containing this method
	* @param cp constant pool
	*/
	@:overload public function new(m : com.sun.org.apache.bcel.internal.classfile.Method, class_name : String, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/**
	* Adds a local variable to this method.
	*
	* @param name variable name
	* @param type variable type
	* @param slot the index of the local variable, if type is long or double, the next available
	* index is slot+2
	* @param start from where the variable is valid
	* @param end until where the variable is valid
	* @return new local variable object
	* @see LocalVariable
	*/
	@:overload public function addLocalVariable(name : String, type : com.sun.org.apache.bcel.internal.generic.Type, slot : Int, start : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	/**
	* Adds a local variable to this method and assigns an index automatically.
	*
	* @param name variable name
	* @param type variable type
	* @param start from where the variable is valid, if this is null,
	* it is valid from the start
	* @param end until where the variable is valid, if this is null,
	* it is valid to the end
	* @return new local variable object
	* @see LocalVariable
	*/
	@:overload public function addLocalVariable(name : String, type : com.sun.org.apache.bcel.internal.generic.Type, start : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	/**
	* Remove a local variable, its slot will not be reused, if you do not use addLocalVariable
	* with an explicit index argument.
	*/
	@:overload public function removeLocalVariable(l : com.sun.org.apache.bcel.internal.generic.LocalVariableGen) : Void;
	
	/**
	* Remove all local variables.
	*/
	@:overload public function removeLocalVariables() : Void;
	
	/*
	* If the range of the variable has not been set yet, it will be set to be valid from
	* the start to the end of the instruction list.
	*
	* @return array of declared local variables sorted by index
	*/
	@:overload public function getLocalVariables() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.LocalVariableGen>;
	
	/**
	* @return `LocalVariableTable' attribute of all the local variables of this method.
	*/
	@:overload public function getLocalVariableTable(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
	
	/**
	* Give an instruction a line number corresponding to the source code line.
	*
	* @param ih instruction to tag
	* @return new line number object
	* @see LineNumber
	*/
	@:overload public function addLineNumber(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, src_line : Int) : com.sun.org.apache.bcel.internal.generic.LineNumberGen;
	
	/**
	* Remove a line number.
	*/
	@:overload public function removeLineNumber(l : com.sun.org.apache.bcel.internal.generic.LineNumberGen) : Void;
	
	/**
	* Remove all line numbers.
	*/
	@:overload public function removeLineNumbers() : Void;
	
	/*
	* @return array of line numbers
	*/
	@:overload public function getLineNumbers() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.LineNumberGen>;
	
	/**
	* @return `LineNumberTable' attribute of all the local variables of this method.
	*/
	@:overload public function getLineNumberTable(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
	
	/**
	* Add an exception handler, i.e., specify region where a handler is active and an
	* instruction where the actual handling is done.
	*
	* @param start_pc Start of region (inclusive)
	* @param end_pc End of region (inclusive)
	* @param handler_pc Where handling is done
	* @param catch_type class type of handled exception or null if any
	* exception is handled
	* @return new exception handler object
	*/
	@:overload public function addExceptionHandler(start_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, handler_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, catch_type : com.sun.org.apache.bcel.internal.generic.ObjectType) : com.sun.org.apache.bcel.internal.generic.CodeExceptionGen;
	
	/**
	* Remove an exception handler.
	*/
	@:overload public function removeExceptionHandler(c : com.sun.org.apache.bcel.internal.generic.CodeExceptionGen) : Void;
	
	/**
	* Remove all line numbers.
	*/
	@:overload public function removeExceptionHandlers() : Void;
	
	/*
	* @return array of declared exception handlers
	*/
	@:overload public function getExceptionHandlers() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.CodeExceptionGen>;
	
	/**
	* Add an exception possibly thrown by this method.
	*
	* @param class_name (fully qualified) name of exception
	*/
	@:overload public function addException(class_name : String) : Void;
	
	/**
	* Remove an exception.
	*/
	@:overload public function removeException(c : String) : Void;
	
	/**
	* Remove all exceptions.
	*/
	@:overload public function removeExceptions() : Void;
	
	/*
	* @return array of thrown exceptions
	*/
	@:overload public function getExceptions() : java.NativeArray<String>;
	
	/**
	* Add an attribute to the code. Currently, the JVM knows about the
	* LineNumberTable, LocalVariableTable and StackMap attributes,
	* where the former two will be generated automatically and the
	* latter is used for the MIDP only. Other attributes will be
	* ignored by the JVM but do no harm.
	*
	* @param a attribute to be added
	*/
	@:overload public function addCodeAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Remove a code attribute.
	*/
	@:overload public function removeCodeAttribute(a : com.sun.org.apache.bcel.internal.classfile.Attribute) : Void;
	
	/**
	* Remove all code attributes.
	*/
	@:overload public function removeCodeAttributes() : Void;
	
	/**
	* @return all attributes of this method.
	*/
	@:overload public function getCodeAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	/**
	* Get method object. Never forget to call setMaxStack() or setMaxStack(max), respectively,
	* before calling this method (the same applies for max locals).
	*
	* @return method object
	*/
	@:overload public function getMethod() : com.sun.org.apache.bcel.internal.classfile.Method;
	
	/**
	* Remove all NOPs from the instruction list (if possible) and update every
	* object refering to them, i.e., branch instructions, local variables and
	* exception handlers.
	*/
	@:overload public function removeNOPs() : Void;
	
	/**
	* Set maximum number of local variables.
	*/
	@:overload public function setMaxLocals(m : Int) : Void;
	
	@:overload public function getMaxLocals() : Int;
	
	/**
	* Set maximum stack size for this method.
	*/
	@:overload public function setMaxStack(m : Int) : Void;
	
	@:overload public function getMaxStack() : Int;
	
	/** @return class that contains this method
	*/
	@:overload public function getClassName() : String;
	
	@:overload public function setClassName(class_name : String) : Void;
	
	@:overload public function setReturnType(return_type : com.sun.org.apache.bcel.internal.generic.Type) : Void;
	
	@:overload public function getReturnType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload public function setArgumentTypes(arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>) : Void;
	
	@:overload public function getArgumentTypes() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>;
	
	@:overload public function setArgumentType(i : Int, type : com.sun.org.apache.bcel.internal.generic.Type) : Void;
	
	@:overload public function getArgumentType(i : Int) : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload public function setArgumentNames(arg_names : java.NativeArray<String>) : Void;
	
	@:overload public function getArgumentNames() : java.NativeArray<String>;
	
	@:overload public function setArgumentName(i : Int, name : String) : Void;
	
	@:overload public function getArgumentName(i : Int) : String;
	
	@:overload public function getInstructionList() : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	@:overload public function setInstructionList(il : com.sun.org.apache.bcel.internal.generic.InstructionList) : Void;
	
	@:overload override public function getSignature() : String;
	
	/**
	* Computes max. stack size by performing control flow analysis.
	*/
	@:overload public function setMaxStack() : Void;
	
	/**
	* Compute maximum number of local variables.
	*/
	@:overload public function setMaxLocals() : Void;
	
	/** Do not/Do produce attributes code attributesLineNumberTable and
	* LocalVariableTable, like javac -O
	*/
	@:overload public function stripAttributes(flag : Bool) : Void;
	
	/**
	* Computes stack usage of an instruction list by performing control flow analysis.
	*
	* @return maximum stack depth used by method
	*/
	@:native('getMaxStack') @:overload public static function _getMaxStack(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, il : com.sun.org.apache.bcel.internal.generic.InstructionList, et : java.NativeArray<com.sun.org.apache.bcel.internal.generic.CodeExceptionGen>) : Int;
	
	/** Add observer for this object.
	*/
	@:overload public function addObserver(o : com.sun.org.apache.bcel.internal.generic.MethodObserver) : Void;
	
	/** Remove observer for this object.
	*/
	@:overload public function removeObserver(o : com.sun.org.apache.bcel.internal.generic.MethodObserver) : Void;
	
	/** Call notify() method on all observers. This method is not called
	* automatically whenever the state has changed, but has to be
	* called by the user after he has finished editing the object.
	*/
	@:overload public function update() : Void;
	
	/**
	* Return string representation close to declaration format,
	* `public static void _main(String[]) throws IOException', e.g.
	*
	* @return String representation of the method.
	*/
	@:overload @:final public function toString() : String;
	
	/** @return deep copy of this method
	*/
	@:overload public function copy(class_name : String, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.MethodGen;
	
	
}
@:native('com$sun$org$apache$bcel$internal$generic$MethodGen$BranchTarget') @:internal extern class MethodGen_BranchTarget
{
	
}
@:native('com$sun$org$apache$bcel$internal$generic$MethodGen$BranchStack') @:internal extern class MethodGen_BranchStack
{
	@:overload public function push(target : com.sun.org.apache.bcel.internal.generic.InstructionHandle, stackDepth : Int) : Void;
	
	@:overload public function pop() : com.sun.org.apache.bcel.internal.generic.MethodGen.MethodGen_BranchTarget;
	
	
}
