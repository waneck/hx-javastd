package com.sun.xml.internal.ws.org.objectweb.asm;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* ASM: a very small and fast Java bytecode manipulation framework
* Copyright (c) 2000-2007 INRIA, France Telecom
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the
*    documentation and/or other materials provided with the distribution.
* 3. Neither the name of the copyright holders nor the names of its
*    contributors may be used to endorse or promote products derived from
*    this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
* THE POSSIBILITY OF SUCH DAMAGE.
*/
/**
* Defines the JVM opcodes, access flags and array type codes. This interface
* does not define all the JVM opcodes because some opcodes are automatically
* handled. For example, the xLOAD and xSTORE opcodes are automatically replaced
* by xLOAD_n and xSTORE_n opcodes when possible. The xLOAD_n and xSTORE_n
* opcodes are therefore not defined in this interface. Likewise for LDC,
* automatically replaced by LDC_W or LDC2_W when necessary, WIDE, GOTO_W and
* JSR_W.
*
* @author Eric Bruneton
* @author Eugene Kuleshov
*/
extern interface Opcodes
{
	public var V1_1 : Int;
	
	public var V1_2 : Int;
	
	public var V1_3 : Int;
	
	public var V1_4 : Int;
	
	public var V1_5 : Int;
	
	public var V1_6 : Int;
	
	public var ACC_PUBLIC : Int;
	
	public var ACC_PRIVATE : Int;
	
	public var ACC_PROTECTED : Int;
	
	public var ACC_STATIC : Int;
	
	public var ACC_FINAL : Int;
	
	public var ACC_SUPER : Int;
	
	public var ACC_SYNCHRONIZED : Int;
	
	public var ACC_VOLATILE : Int;
	
	public var ACC_BRIDGE : Int;
	
	public var ACC_VARARGS : Int;
	
	public var ACC_TRANSIENT : Int;
	
	public var ACC_NATIVE : Int;
	
	public var ACC_INTERFACE : Int;
	
	public var ACC_ABSTRACT : Int;
	
	public var ACC_STRICT : Int;
	
	public var ACC_SYNTHETIC : Int;
	
	public var ACC_ANNOTATION : Int;
	
	public var ACC_ENUM : Int;
	
	public var ACC_DEPRECATED : Int;
	
	public var T_BOOLEAN : Int;
	
	public var T_CHAR : Int;
	
	public var T_FLOAT : Int;
	
	public var T_DOUBLE : Int;
	
	public var T_BYTE : Int;
	
	public var T_SHORT : Int;
	
	public var T_INT : Int;
	
	public var T_LONG : Int;
	
	/**
	* Represents an expanded frame. See {@link ClassReader#EXPAND_FRAMES}.
	*/
	public var F_NEW : Int;
	
	/**
	* Represents a compressed frame with complete frame data.
	*/
	public var F_FULL : Int;
	
	/**
	* Represents a compressed frame where locals are the same as the locals in
	* the previous frame, except that additional 1-3 locals are defined, and
	* with an empty stack.
	*/
	public var F_APPEND : Int;
	
	/**
	* Represents a compressed frame where locals are the same as the locals in
	* the previous frame, except that the last 1-3 locals are absent and with
	* an empty stack.
	*/
	public var F_CHOP : Int;
	
	/**
	* Represents a compressed frame with exactly the same locals as the
	* previous frame and with an empty stack.
	*/
	public var F_SAME : Int;
	
	/**
	* Represents a compressed frame with exactly the same locals as the
	* previous frame and with a single value on the stack.
	*/
	public var F_SAME1 : Int;
	
	public var TOP : Null<Int>;
	
	public var INTEGER : Null<Int>;
	
	public var FLOAT : Null<Int>;
	
	public var DOUBLE : Null<Int>;
	
	public var LONG : Null<Int>;
	
	public var NULL : Null<Int>;
	
	public var UNINITIALIZED_THIS : Null<Int>;
	
	public var NOP : Int;
	
	public var ACONST_NULL : Int;
	
	public var ICONST_M1 : Int;
	
	public var ICONST_0 : Int;
	
	public var ICONST_1 : Int;
	
	public var ICONST_2 : Int;
	
	public var ICONST_3 : Int;
	
	public var ICONST_4 : Int;
	
	public var ICONST_5 : Int;
	
	public var LCONST_0 : Int;
	
	public var LCONST_1 : Int;
	
	public var FCONST_0 : Int;
	
	public var FCONST_1 : Int;
	
	public var FCONST_2 : Int;
	
	public var DCONST_0 : Int;
	
	public var DCONST_1 : Int;
	
	public var BIPUSH : Int;
	
	public var SIPUSH : Int;
	
	public var LDC : Int;
	
	public var ILOAD : Int;
	
	public var LLOAD : Int;
	
	public var FLOAD : Int;
	
	public var DLOAD : Int;
	
	public var ALOAD : Int;
	
	public var IALOAD : Int;
	
	public var LALOAD : Int;
	
	public var FALOAD : Int;
	
	public var DALOAD : Int;
	
	public var AALOAD : Int;
	
	public var BALOAD : Int;
	
	public var CALOAD : Int;
	
	public var SALOAD : Int;
	
	public var ISTORE : Int;
	
	public var LSTORE : Int;
	
	public var FSTORE : Int;
	
	public var DSTORE : Int;
	
	public var ASTORE : Int;
	
	public var IASTORE : Int;
	
	public var LASTORE : Int;
	
	public var FASTORE : Int;
	
	public var DASTORE : Int;
	
	public var AASTORE : Int;
	
	public var BASTORE : Int;
	
	public var CASTORE : Int;
	
	public var SASTORE : Int;
	
	public var POP : Int;
	
	public var POP2 : Int;
	
	public var DUP : Int;
	
	public var DUP_X1 : Int;
	
	public var DUP_X2 : Int;
	
	public var DUP2 : Int;
	
	public var DUP2_X1 : Int;
	
	public var DUP2_X2 : Int;
	
	public var SWAP : Int;
	
	public var IADD : Int;
	
	public var LADD : Int;
	
	public var FADD : Int;
	
	public var DADD : Int;
	
	public var ISUB : Int;
	
	public var LSUB : Int;
	
	public var FSUB : Int;
	
	public var DSUB : Int;
	
	public var IMUL : Int;
	
	public var LMUL : Int;
	
	public var FMUL : Int;
	
	public var DMUL : Int;
	
	public var IDIV : Int;
	
	public var LDIV : Int;
	
	public var FDIV : Int;
	
	public var DDIV : Int;
	
	public var IREM : Int;
	
	public var LREM : Int;
	
	public var FREM : Int;
	
	public var DREM : Int;
	
	public var INEG : Int;
	
	public var LNEG : Int;
	
	public var FNEG : Int;
	
	public var DNEG : Int;
	
	public var ISHL : Int;
	
	public var LSHL : Int;
	
	public var ISHR : Int;
	
	public var LSHR : Int;
	
	public var IUSHR : Int;
	
	public var LUSHR : Int;
	
	public var IAND : Int;
	
	public var LAND : Int;
	
	public var IOR : Int;
	
	public var LOR : Int;
	
	public var IXOR : Int;
	
	public var LXOR : Int;
	
	public var IINC : Int;
	
	public var I2L : Int;
	
	public var I2F : Int;
	
	public var I2D : Int;
	
	public var L2I : Int;
	
	public var L2F : Int;
	
	public var L2D : Int;
	
	public var F2I : Int;
	
	public var F2L : Int;
	
	public var F2D : Int;
	
	public var D2I : Int;
	
	public var D2L : Int;
	
	public var D2F : Int;
	
	public var I2B : Int;
	
	public var I2C : Int;
	
	public var I2S : Int;
	
	public var LCMP : Int;
	
	public var FCMPL : Int;
	
	public var FCMPG : Int;
	
	public var DCMPL : Int;
	
	public var DCMPG : Int;
	
	public var IFEQ : Int;
	
	public var IFNE : Int;
	
	public var IFLT : Int;
	
	public var IFGE : Int;
	
	public var IFGT : Int;
	
	public var IFLE : Int;
	
	public var IF_ICMPEQ : Int;
	
	public var IF_ICMPNE : Int;
	
	public var IF_ICMPLT : Int;
	
	public var IF_ICMPGE : Int;
	
	public var IF_ICMPGT : Int;
	
	public var IF_ICMPLE : Int;
	
	public var IF_ACMPEQ : Int;
	
	public var IF_ACMPNE : Int;
	
	public var GOTO : Int;
	
	public var JSR : Int;
	
	public var RET : Int;
	
	public var TABLESWITCH : Int;
	
	public var LOOKUPSWITCH : Int;
	
	public var IRETURN : Int;
	
	public var LRETURN : Int;
	
	public var FRETURN : Int;
	
	public var DRETURN : Int;
	
	public var ARETURN : Int;
	
	public var RETURN : Int;
	
	public var GETSTATIC : Int;
	
	public var PUTSTATIC : Int;
	
	public var GETFIELD : Int;
	
	public var PUTFIELD : Int;
	
	public var INVOKEVIRTUAL : Int;
	
	public var INVOKESPECIAL : Int;
	
	public var INVOKESTATIC : Int;
	
	public var INVOKEINTERFACE : Int;
	
	public var NEW : Int;
	
	public var NEWARRAY : Int;
	
	public var ANEWARRAY : Int;
	
	public var ARRAYLENGTH : Int;
	
	public var ATHROW : Int;
	
	public var CHECKCAST : Int;
	
	public var INSTANCEOF : Int;
	
	public var MONITORENTER : Int;
	
	public var MONITOREXIT : Int;
	
	public var MULTIANEWARRAY : Int;
	
	public var IFNULL : Int;
	
	public var IFNONNULL : Int;
	
	
}
