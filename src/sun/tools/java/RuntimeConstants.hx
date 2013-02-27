package sun.tools.java;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern interface RuntimeConstants
{
	/* Signature Characters */
	public var SIGC_VOID : java.StdTypes.Char16;
	
	public var SIG_VOID : String;
	
	public var SIGC_BOOLEAN : java.StdTypes.Char16;
	
	public var SIG_BOOLEAN : String;
	
	public var SIGC_BYTE : java.StdTypes.Char16;
	
	public var SIG_BYTE : String;
	
	public var SIGC_CHAR : java.StdTypes.Char16;
	
	public var SIG_CHAR : String;
	
	public var SIGC_SHORT : java.StdTypes.Char16;
	
	public var SIG_SHORT : String;
	
	public var SIGC_INT : java.StdTypes.Char16;
	
	public var SIG_INT : String;
	
	public var SIGC_LONG : java.StdTypes.Char16;
	
	public var SIG_LONG : String;
	
	public var SIGC_FLOAT : java.StdTypes.Char16;
	
	public var SIG_FLOAT : String;
	
	public var SIGC_DOUBLE : java.StdTypes.Char16;
	
	public var SIG_DOUBLE : String;
	
	public var SIGC_ARRAY : java.StdTypes.Char16;
	
	public var SIG_ARRAY : String;
	
	public var SIGC_CLASS : java.StdTypes.Char16;
	
	public var SIG_CLASS : String;
	
	public var SIGC_METHOD : java.StdTypes.Char16;
	
	public var SIG_METHOD : String;
	
	public var SIGC_ENDCLASS : java.StdTypes.Char16;
	
	public var SIG_ENDCLASS : String;
	
	public var SIGC_ENDMETHOD : java.StdTypes.Char16;
	
	public var SIG_ENDMETHOD : String;
	
	public var SIGC_PACKAGE : java.StdTypes.Char16;
	
	public var SIG_PACKAGE : String;
	
	/* Class File Constants */
	public var JAVA_MAGIC : Int;
	
	public var JAVA_MIN_SUPPORTED_VERSION : Int;
	
	public var JAVA_MAX_SUPPORTED_VERSION : Int;
	
	public var JAVA_MAX_SUPPORTED_MINOR_VERSION : Int;
	
	/* Generate class file version for 1.1  by default */
	public var JAVA_DEFAULT_VERSION : Int;
	
	public var JAVA_DEFAULT_MINOR_VERSION : Int;
	
	/* Constant table */
	public var CONSTANT_UTF8 : Int;
	
	public var CONSTANT_UNICODE : Int;
	
	public var CONSTANT_INTEGER : Int;
	
	public var CONSTANT_FLOAT : Int;
	
	public var CONSTANT_LONG : Int;
	
	public var CONSTANT_DOUBLE : Int;
	
	public var CONSTANT_CLASS : Int;
	
	public var CONSTANT_STRING : Int;
	
	public var CONSTANT_FIELD : Int;
	
	public var CONSTANT_METHOD : Int;
	
	public var CONSTANT_INTERFACEMETHOD : Int;
	
	public var CONSTANT_NAMEANDTYPE : Int;
	
	/* Access and modifier flags */
	public var ACC_PUBLIC : Int;
	
	public var ACC_PRIVATE : Int;
	
	public var ACC_PROTECTED : Int;
	
	public var ACC_STATIC : Int;
	
	public var ACC_FINAL : Int;
	
	public var ACC_SYNCHRONIZED : Int;
	
	public var ACC_VOLATILE : Int;
	
	public var ACC_TRANSIENT : Int;
	
	public var ACC_NATIVE : Int;
	
	public var ACC_INTERFACE : Int;
	
	public var ACC_ABSTRACT : Int;
	
	public var ACC_SUPER : Int;
	
	public var ACC_STRICT : Int;
	
	/* Type codes */
	public var T_CLASS : Int;
	
	public var T_BOOLEAN : Int;
	
	public var T_CHAR : Int;
	
	public var T_FLOAT : Int;
	
	public var T_DOUBLE : Int;
	
	public var T_BYTE : Int;
	
	public var T_SHORT : Int;
	
	public var T_INT : Int;
	
	public var T_LONG : Int;
	
	/* Opcodes */
	public var opc_try : Int;
	
	public var opc_dead : Int;
	
	public var opc_label : Int;
	
	public var opc_nop : Int;
	
	public var opc_aconst_null : Int;
	
	public var opc_iconst_m1 : Int;
	
	public var opc_iconst_0 : Int;
	
	public var opc_iconst_1 : Int;
	
	public var opc_iconst_2 : Int;
	
	public var opc_iconst_3 : Int;
	
	public var opc_iconst_4 : Int;
	
	public var opc_iconst_5 : Int;
	
	public var opc_lconst_0 : Int;
	
	public var opc_lconst_1 : Int;
	
	public var opc_fconst_0 : Int;
	
	public var opc_fconst_1 : Int;
	
	public var opc_fconst_2 : Int;
	
	public var opc_dconst_0 : Int;
	
	public var opc_dconst_1 : Int;
	
	public var opc_bipush : Int;
	
	public var opc_sipush : Int;
	
	public var opc_ldc : Int;
	
	public var opc_ldc_w : Int;
	
	public var opc_ldc2_w : Int;
	
	public var opc_iload : Int;
	
	public var opc_lload : Int;
	
	public var opc_fload : Int;
	
	public var opc_dload : Int;
	
	public var opc_aload : Int;
	
	public var opc_iload_0 : Int;
	
	public var opc_iload_1 : Int;
	
	public var opc_iload_2 : Int;
	
	public var opc_iload_3 : Int;
	
	public var opc_lload_0 : Int;
	
	public var opc_lload_1 : Int;
	
	public var opc_lload_2 : Int;
	
	public var opc_lload_3 : Int;
	
	public var opc_fload_0 : Int;
	
	public var opc_fload_1 : Int;
	
	public var opc_fload_2 : Int;
	
	public var opc_fload_3 : Int;
	
	public var opc_dload_0 : Int;
	
	public var opc_dload_1 : Int;
	
	public var opc_dload_2 : Int;
	
	public var opc_dload_3 : Int;
	
	public var opc_aload_0 : Int;
	
	public var opc_aload_1 : Int;
	
	public var opc_aload_2 : Int;
	
	public var opc_aload_3 : Int;
	
	public var opc_iaload : Int;
	
	public var opc_laload : Int;
	
	public var opc_faload : Int;
	
	public var opc_daload : Int;
	
	public var opc_aaload : Int;
	
	public var opc_baload : Int;
	
	public var opc_caload : Int;
	
	public var opc_saload : Int;
	
	public var opc_istore : Int;
	
	public var opc_lstore : Int;
	
	public var opc_fstore : Int;
	
	public var opc_dstore : Int;
	
	public var opc_astore : Int;
	
	public var opc_istore_0 : Int;
	
	public var opc_istore_1 : Int;
	
	public var opc_istore_2 : Int;
	
	public var opc_istore_3 : Int;
	
	public var opc_lstore_0 : Int;
	
	public var opc_lstore_1 : Int;
	
	public var opc_lstore_2 : Int;
	
	public var opc_lstore_3 : Int;
	
	public var opc_fstore_0 : Int;
	
	public var opc_fstore_1 : Int;
	
	public var opc_fstore_2 : Int;
	
	public var opc_fstore_3 : Int;
	
	public var opc_dstore_0 : Int;
	
	public var opc_dstore_1 : Int;
	
	public var opc_dstore_2 : Int;
	
	public var opc_dstore_3 : Int;
	
	public var opc_astore_0 : Int;
	
	public var opc_astore_1 : Int;
	
	public var opc_astore_2 : Int;
	
	public var opc_astore_3 : Int;
	
	public var opc_iastore : Int;
	
	public var opc_lastore : Int;
	
	public var opc_fastore : Int;
	
	public var opc_dastore : Int;
	
	public var opc_aastore : Int;
	
	public var opc_bastore : Int;
	
	public var opc_castore : Int;
	
	public var opc_sastore : Int;
	
	public var opc_pop : Int;
	
	public var opc_pop2 : Int;
	
	public var opc_dup : Int;
	
	public var opc_dup_x1 : Int;
	
	public var opc_dup_x2 : Int;
	
	public var opc_dup2 : Int;
	
	public var opc_dup2_x1 : Int;
	
	public var opc_dup2_x2 : Int;
	
	public var opc_swap : Int;
	
	public var opc_iadd : Int;
	
	public var opc_ladd : Int;
	
	public var opc_fadd : Int;
	
	public var opc_dadd : Int;
	
	public var opc_isub : Int;
	
	public var opc_lsub : Int;
	
	public var opc_fsub : Int;
	
	public var opc_dsub : Int;
	
	public var opc_imul : Int;
	
	public var opc_lmul : Int;
	
	public var opc_fmul : Int;
	
	public var opc_dmul : Int;
	
	public var opc_idiv : Int;
	
	public var opc_ldiv : Int;
	
	public var opc_fdiv : Int;
	
	public var opc_ddiv : Int;
	
	public var opc_irem : Int;
	
	public var opc_lrem : Int;
	
	public var opc_frem : Int;
	
	public var opc_drem : Int;
	
	public var opc_ineg : Int;
	
	public var opc_lneg : Int;
	
	public var opc_fneg : Int;
	
	public var opc_dneg : Int;
	
	public var opc_ishl : Int;
	
	public var opc_lshl : Int;
	
	public var opc_ishr : Int;
	
	public var opc_lshr : Int;
	
	public var opc_iushr : Int;
	
	public var opc_lushr : Int;
	
	public var opc_iand : Int;
	
	public var opc_land : Int;
	
	public var opc_ior : Int;
	
	public var opc_lor : Int;
	
	public var opc_ixor : Int;
	
	public var opc_lxor : Int;
	
	public var opc_iinc : Int;
	
	public var opc_i2l : Int;
	
	public var opc_i2f : Int;
	
	public var opc_i2d : Int;
	
	public var opc_l2i : Int;
	
	public var opc_l2f : Int;
	
	public var opc_l2d : Int;
	
	public var opc_f2i : Int;
	
	public var opc_f2l : Int;
	
	public var opc_f2d : Int;
	
	public var opc_d2i : Int;
	
	public var opc_d2l : Int;
	
	public var opc_d2f : Int;
	
	public var opc_i2b : Int;
	
	public var opc_i2c : Int;
	
	public var opc_i2s : Int;
	
	public var opc_lcmp : Int;
	
	public var opc_fcmpl : Int;
	
	public var opc_fcmpg : Int;
	
	public var opc_dcmpl : Int;
	
	public var opc_dcmpg : Int;
	
	public var opc_ifeq : Int;
	
	public var opc_ifne : Int;
	
	public var opc_iflt : Int;
	
	public var opc_ifge : Int;
	
	public var opc_ifgt : Int;
	
	public var opc_ifle : Int;
	
	public var opc_if_icmpeq : Int;
	
	public var opc_if_icmpne : Int;
	
	public var opc_if_icmplt : Int;
	
	public var opc_if_icmpge : Int;
	
	public var opc_if_icmpgt : Int;
	
	public var opc_if_icmple : Int;
	
	public var opc_if_acmpeq : Int;
	
	public var opc_if_acmpne : Int;
	
	public var opc_goto : Int;
	
	public var opc_jsr : Int;
	
	public var opc_ret : Int;
	
	public var opc_tableswitch : Int;
	
	public var opc_lookupswitch : Int;
	
	public var opc_ireturn : Int;
	
	public var opc_lreturn : Int;
	
	public var opc_freturn : Int;
	
	public var opc_dreturn : Int;
	
	public var opc_areturn : Int;
	
	public var opc_return : Int;
	
	public var opc_getstatic : Int;
	
	public var opc_putstatic : Int;
	
	public var opc_getfield : Int;
	
	public var opc_putfield : Int;
	
	public var opc_invokevirtual : Int;
	
	public var opc_invokespecial : Int;
	
	public var opc_invokestatic : Int;
	
	public var opc_invokeinterface : Int;
	
	public var opc_invokedynamic : Int;
	
	public var opc_new : Int;
	
	public var opc_newarray : Int;
	
	public var opc_anewarray : Int;
	
	public var opc_arraylength : Int;
	
	public var opc_athrow : Int;
	
	public var opc_checkcast : Int;
	
	public var opc_instanceof : Int;
	
	public var opc_monitorenter : Int;
	
	public var opc_monitorexit : Int;
	
	public var opc_wide : Int;
	
	public var opc_multianewarray : Int;
	
	public var opc_ifnull : Int;
	
	public var opc_ifnonnull : Int;
	
	public var opc_goto_w : Int;
	
	public var opc_jsr_w : Int;
	
	public var opc_breakpoint : Int;
	
	/* Opcode Names */
	public var opcNames : java.NativeArray<String>;
	
	/* Opcode Lengths */
	public var opcLengths : java.NativeArray<Int>;
	
	
}
