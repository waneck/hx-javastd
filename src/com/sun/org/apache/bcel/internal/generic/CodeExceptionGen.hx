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
* This class represents an exception handler, i.e., specifies the  region where
* a handler is active and an instruction where the actual handling is done.
* pool as parameters. Opposed to the JVM specification the end of the handled
* region is set to be inclusive, i.e. all instructions between start and end
* are protected including the start and end instructions (handles) themselves.
* The end of the region is automatically mapped to be exclusive when calling
* getCodeException(), i.e., there is no difference semantically.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     MethodGen
* @see     CodeException
* @see     InstructionHandle
*/
extern class CodeExceptionGen implements com.sun.org.apache.bcel.internal.generic.InstructionTargeter implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Add an exception handler, i.e., specify region where a handler is active and an
	* instruction where the actual handling is done.
	*
	* @param start_pc Start of handled region (inclusive)
	* @param end_pc End of handled region (inclusive)
	* @param handler_pc Where handling is done
	* @param catch_type which exception is handled, null for ANY
	*/
	@:overload public function new(start_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, handler_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle, catch_type : com.sun.org.apache.bcel.internal.generic.ObjectType) : Void;
	
	/**
	* Get CodeException object.<BR>
	*
	* This relies on that the instruction list has already been dumped
	* to byte code or or that the `setPositions' methods has been
	* called for the instruction list.
	*
	* @param cp constant pool
	*/
	@:overload public function getCodeException(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.classfile.CodeException;
	
	/* Set start of handler
	* @param start_pc Start of handled region (inclusive)
	*/
	@:overload public function setStartPC(start_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/* Set end of handler
	* @param end_pc End of handled region (inclusive)
	*/
	@:overload public function setEndPC(end_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/* Set handler code
	* @param handler_pc Start of handler
	*/
	@:overload public function setHandlerPC(handler_pc : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @param old_ih old target, either start or end
	* @param new_ih new target
	*/
	@:overload public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @return true, if ih is target of this handler
	*/
	@:overload public function containsTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	/** Sets the type of the Exception to catch. Set 'null' for ANY. */
	@:overload public function setCatchType(catch_type : com.sun.org.apache.bcel.internal.generic.ObjectType) : Void;
	
	/** Gets the type of the Exception to catch, 'null' for ANY. */
	@:overload public function getCatchType() : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	/** @return start of handled region (inclusive)
	*/
	@:overload public function getStartPC() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/** @return end of handled region (inclusive)
	*/
	@:overload public function getEndPC() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	/** @return start of handler
	*/
	@:overload public function getHandlerPC() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload public function toString() : String;
	
	@:overload public function clone() : Dynamic;
	
	
}
