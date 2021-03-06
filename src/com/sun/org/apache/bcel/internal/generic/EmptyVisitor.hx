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
* Supplies empty method bodies to be overridden by subclasses.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class EmptyVisitor implements com.sun.org.apache.bcel.internal.generic.Visitor
{
	@:overload @:public public function visitStackInstruction(obj : com.sun.org.apache.bcel.internal.generic.StackInstruction) : Void;
	
	@:overload @:public public function visitLocalVariableInstruction(obj : com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction) : Void;
	
	@:overload @:public public function visitBranchInstruction(obj : com.sun.org.apache.bcel.internal.generic.BranchInstruction) : Void;
	
	@:overload @:public public function visitLoadClass(obj : com.sun.org.apache.bcel.internal.generic.LoadClass) : Void;
	
	@:overload @:public public function visitFieldInstruction(obj : com.sun.org.apache.bcel.internal.generic.FieldInstruction) : Void;
	
	@:overload @:public public function visitIfInstruction(obj : com.sun.org.apache.bcel.internal.generic.IfInstruction) : Void;
	
	@:overload @:public public function visitConversionInstruction(obj : com.sun.org.apache.bcel.internal.generic.ConversionInstruction) : Void;
	
	@:overload @:public public function visitPopInstruction(obj : com.sun.org.apache.bcel.internal.generic.PopInstruction) : Void;
	
	@:overload @:public public function visitJsrInstruction(obj : com.sun.org.apache.bcel.internal.generic.JsrInstruction) : Void;
	
	@:overload @:public public function visitGotoInstruction(obj : com.sun.org.apache.bcel.internal.generic.GotoInstruction) : Void;
	
	@:overload @:public public function visitStoreInstruction(obj : com.sun.org.apache.bcel.internal.generic.StoreInstruction) : Void;
	
	@:overload @:public public function visitTypedInstruction(obj : com.sun.org.apache.bcel.internal.generic.TypedInstruction) : Void;
	
	@:overload @:public public function visitSelect(obj : com.sun.org.apache.bcel.internal.generic.Select) : Void;
	
	@:overload @:public public function visitUnconditionalBranch(obj : com.sun.org.apache.bcel.internal.generic.UnconditionalBranch) : Void;
	
	@:overload @:public public function visitPushInstruction(obj : com.sun.org.apache.bcel.internal.generic.PushInstruction) : Void;
	
	@:overload @:public public function visitArithmeticInstruction(obj : com.sun.org.apache.bcel.internal.generic.ArithmeticInstruction) : Void;
	
	@:overload @:public public function visitCPInstruction(obj : com.sun.org.apache.bcel.internal.generic.CPInstruction) : Void;
	
	@:overload @:public public function visitInvokeInstruction(obj : com.sun.org.apache.bcel.internal.generic.InvokeInstruction) : Void;
	
	@:overload @:public public function visitArrayInstruction(obj : com.sun.org.apache.bcel.internal.generic.ArrayInstruction) : Void;
	
	@:overload @:public public function visitAllocationInstruction(obj : com.sun.org.apache.bcel.internal.generic.AllocationInstruction) : Void;
	
	@:overload @:public public function visitReturnInstruction(obj : com.sun.org.apache.bcel.internal.generic.ReturnInstruction) : Void;
	
	@:overload @:public public function visitFieldOrMethod(obj : com.sun.org.apache.bcel.internal.generic.FieldOrMethod) : Void;
	
	@:overload @:public public function visitConstantPushInstruction(obj : com.sun.org.apache.bcel.internal.generic.ConstantPushInstruction) : Void;
	
	@:overload @:public public function visitExceptionThrower(obj : com.sun.org.apache.bcel.internal.generic.ExceptionThrower) : Void;
	
	@:overload @:public public function visitLoadInstruction(obj : com.sun.org.apache.bcel.internal.generic.LoadInstruction) : Void;
	
	@:overload @:public public function visitVariableLengthInstruction(obj : com.sun.org.apache.bcel.internal.generic.VariableLengthInstruction) : Void;
	
	@:overload @:public public function visitStackProducer(obj : com.sun.org.apache.bcel.internal.generic.StackProducer) : Void;
	
	@:overload @:public public function visitStackConsumer(obj : com.sun.org.apache.bcel.internal.generic.StackConsumer) : Void;
	
	@:overload @:public public function visitACONST_NULL(obj : com.sun.org.apache.bcel.internal.generic.ACONST_NULL) : Void;
	
	@:overload @:public public function visitGETSTATIC(obj : com.sun.org.apache.bcel.internal.generic.GETSTATIC) : Void;
	
	@:overload @:public public function visitIF_ICMPLT(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPLT) : Void;
	
	@:overload @:public public function visitMONITOREXIT(obj : com.sun.org.apache.bcel.internal.generic.MONITOREXIT) : Void;
	
	@:overload @:public public function visitIFLT(obj : com.sun.org.apache.bcel.internal.generic.IFLT) : Void;
	
	@:overload @:public public function visitLSTORE(obj : com.sun.org.apache.bcel.internal.generic.LSTORE) : Void;
	
	@:overload @:public public function visitPOP2(obj : com.sun.org.apache.bcel.internal.generic.POP2) : Void;
	
	@:overload @:public public function visitBASTORE(obj : com.sun.org.apache.bcel.internal.generic.BASTORE) : Void;
	
	@:overload @:public public function visitISTORE(obj : com.sun.org.apache.bcel.internal.generic.ISTORE) : Void;
	
	@:overload @:public public function visitCHECKCAST(obj : com.sun.org.apache.bcel.internal.generic.CHECKCAST) : Void;
	
	@:overload @:public public function visitFCMPG(obj : com.sun.org.apache.bcel.internal.generic.FCMPG) : Void;
	
	@:overload @:public public function visitI2F(obj : com.sun.org.apache.bcel.internal.generic.I2F) : Void;
	
	@:overload @:public public function visitATHROW(obj : com.sun.org.apache.bcel.internal.generic.ATHROW) : Void;
	
	@:overload @:public public function visitDCMPL(obj : com.sun.org.apache.bcel.internal.generic.DCMPL) : Void;
	
	@:overload @:public public function visitARRAYLENGTH(obj : com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH) : Void;
	
	@:overload @:public public function visitDUP(obj : com.sun.org.apache.bcel.internal.generic.DUP) : Void;
	
	@:overload @:public public function visitINVOKESTATIC(obj : com.sun.org.apache.bcel.internal.generic.INVOKESTATIC) : Void;
	
	@:overload @:public public function visitLCONST(obj : com.sun.org.apache.bcel.internal.generic.LCONST) : Void;
	
	@:overload @:public public function visitDREM(obj : com.sun.org.apache.bcel.internal.generic.DREM) : Void;
	
	@:overload @:public public function visitIFGE(obj : com.sun.org.apache.bcel.internal.generic.IFGE) : Void;
	
	@:overload @:public public function visitCALOAD(obj : com.sun.org.apache.bcel.internal.generic.CALOAD) : Void;
	
	@:overload @:public public function visitLASTORE(obj : com.sun.org.apache.bcel.internal.generic.LASTORE) : Void;
	
	@:overload @:public public function visitI2D(obj : com.sun.org.apache.bcel.internal.generic.I2D) : Void;
	
	@:overload @:public public function visitDADD(obj : com.sun.org.apache.bcel.internal.generic.DADD) : Void;
	
	@:overload @:public public function visitINVOKESPECIAL(obj : com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL) : Void;
	
	@:overload @:public public function visitIAND(obj : com.sun.org.apache.bcel.internal.generic.IAND) : Void;
	
	@:overload @:public public function visitPUTFIELD(obj : com.sun.org.apache.bcel.internal.generic.PUTFIELD) : Void;
	
	@:overload @:public public function visitILOAD(obj : com.sun.org.apache.bcel.internal.generic.ILOAD) : Void;
	
	@:overload @:public public function visitDLOAD(obj : com.sun.org.apache.bcel.internal.generic.DLOAD) : Void;
	
	@:overload @:public public function visitDCONST(obj : com.sun.org.apache.bcel.internal.generic.DCONST) : Void;
	
	@:overload @:public public function visitNEW(obj : com.sun.org.apache.bcel.internal.generic.NEW) : Void;
	
	@:overload @:public public function visitIFNULL(obj : com.sun.org.apache.bcel.internal.generic.IFNULL) : Void;
	
	@:overload @:public public function visitLSUB(obj : com.sun.org.apache.bcel.internal.generic.LSUB) : Void;
	
	@:overload @:public public function visitL2I(obj : com.sun.org.apache.bcel.internal.generic.L2I) : Void;
	
	@:overload @:public public function visitISHR(obj : com.sun.org.apache.bcel.internal.generic.ISHR) : Void;
	
	@:overload @:public public function visitTABLESWITCH(obj : com.sun.org.apache.bcel.internal.generic.TABLESWITCH) : Void;
	
	@:overload @:public public function visitIINC(obj : com.sun.org.apache.bcel.internal.generic.IINC) : Void;
	
	@:overload @:public public function visitDRETURN(obj : com.sun.org.apache.bcel.internal.generic.DRETURN) : Void;
	
	@:overload @:public public function visitFSTORE(obj : com.sun.org.apache.bcel.internal.generic.FSTORE) : Void;
	
	@:overload @:public public function visitDASTORE(obj : com.sun.org.apache.bcel.internal.generic.DASTORE) : Void;
	
	@:overload @:public public function visitIALOAD(obj : com.sun.org.apache.bcel.internal.generic.IALOAD) : Void;
	
	@:overload @:public public function visitDDIV(obj : com.sun.org.apache.bcel.internal.generic.DDIV) : Void;
	
	@:overload @:public public function visitIF_ICMPGE(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPGE) : Void;
	
	@:overload @:public public function visitLAND(obj : com.sun.org.apache.bcel.internal.generic.LAND) : Void;
	
	@:overload @:public public function visitIDIV(obj : com.sun.org.apache.bcel.internal.generic.IDIV) : Void;
	
	@:overload @:public public function visitLOR(obj : com.sun.org.apache.bcel.internal.generic.LOR) : Void;
	
	@:overload @:public public function visitCASTORE(obj : com.sun.org.apache.bcel.internal.generic.CASTORE) : Void;
	
	@:overload @:public public function visitFREM(obj : com.sun.org.apache.bcel.internal.generic.FREM) : Void;
	
	@:overload @:public public function visitLDC(obj : com.sun.org.apache.bcel.internal.generic.LDC) : Void;
	
	@:overload @:public public function visitBIPUSH(obj : com.sun.org.apache.bcel.internal.generic.BIPUSH) : Void;
	
	@:overload @:public public function visitDSTORE(obj : com.sun.org.apache.bcel.internal.generic.DSTORE) : Void;
	
	@:overload @:public public function visitF2L(obj : com.sun.org.apache.bcel.internal.generic.F2L) : Void;
	
	@:overload @:public public function visitFMUL(obj : com.sun.org.apache.bcel.internal.generic.FMUL) : Void;
	
	@:overload @:public public function visitLLOAD(obj : com.sun.org.apache.bcel.internal.generic.LLOAD) : Void;
	
	@:overload @:public public function visitJSR(obj : com.sun.org.apache.bcel.internal.generic.JSR) : Void;
	
	@:overload @:public public function visitFSUB(obj : com.sun.org.apache.bcel.internal.generic.FSUB) : Void;
	
	@:overload @:public public function visitSASTORE(obj : com.sun.org.apache.bcel.internal.generic.SASTORE) : Void;
	
	@:overload @:public public function visitALOAD(obj : com.sun.org.apache.bcel.internal.generic.ALOAD) : Void;
	
	@:overload @:public public function visitDUP2_X2(obj : com.sun.org.apache.bcel.internal.generic.DUP2_X2) : Void;
	
	@:overload @:public public function visitRETURN(obj : com.sun.org.apache.bcel.internal.generic.RETURN) : Void;
	
	@:overload @:public public function visitDALOAD(obj : com.sun.org.apache.bcel.internal.generic.DALOAD) : Void;
	
	@:overload @:public public function visitSIPUSH(obj : com.sun.org.apache.bcel.internal.generic.SIPUSH) : Void;
	
	@:overload @:public public function visitDSUB(obj : com.sun.org.apache.bcel.internal.generic.DSUB) : Void;
	
	@:overload @:public public function visitL2F(obj : com.sun.org.apache.bcel.internal.generic.L2F) : Void;
	
	@:overload @:public public function visitIF_ICMPGT(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPGT) : Void;
	
	@:overload @:public public function visitF2D(obj : com.sun.org.apache.bcel.internal.generic.F2D) : Void;
	
	@:overload @:public public function visitI2L(obj : com.sun.org.apache.bcel.internal.generic.I2L) : Void;
	
	@:overload @:public public function visitIF_ACMPNE(obj : com.sun.org.apache.bcel.internal.generic.IF_ACMPNE) : Void;
	
	@:overload @:public public function visitPOP(obj : com.sun.org.apache.bcel.internal.generic.POP) : Void;
	
	@:overload @:public public function visitI2S(obj : com.sun.org.apache.bcel.internal.generic.I2S) : Void;
	
	@:overload @:public public function visitIFEQ(obj : com.sun.org.apache.bcel.internal.generic.IFEQ) : Void;
	
	@:overload @:public public function visitSWAP(obj : com.sun.org.apache.bcel.internal.generic.SWAP) : Void;
	
	@:overload @:public public function visitIOR(obj : com.sun.org.apache.bcel.internal.generic.IOR) : Void;
	
	@:overload @:public public function visitIREM(obj : com.sun.org.apache.bcel.internal.generic.IREM) : Void;
	
	@:overload @:public public function visitIASTORE(obj : com.sun.org.apache.bcel.internal.generic.IASTORE) : Void;
	
	@:overload @:public public function visitNEWARRAY(obj : com.sun.org.apache.bcel.internal.generic.NEWARRAY) : Void;
	
	@:overload @:public public function visitINVOKEINTERFACE(obj : com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE) : Void;
	
	@:overload @:public public function visitINEG(obj : com.sun.org.apache.bcel.internal.generic.INEG) : Void;
	
	@:overload @:public public function visitLCMP(obj : com.sun.org.apache.bcel.internal.generic.LCMP) : Void;
	
	@:overload @:public public function visitJSR_W(obj : com.sun.org.apache.bcel.internal.generic.JSR_W) : Void;
	
	@:overload @:public public function visitMULTIANEWARRAY(obj : com.sun.org.apache.bcel.internal.generic.MULTIANEWARRAY) : Void;
	
	@:overload @:public public function visitDUP_X2(obj : com.sun.org.apache.bcel.internal.generic.DUP_X2) : Void;
	
	@:overload @:public public function visitSALOAD(obj : com.sun.org.apache.bcel.internal.generic.SALOAD) : Void;
	
	@:overload @:public public function visitIFNONNULL(obj : com.sun.org.apache.bcel.internal.generic.IFNONNULL) : Void;
	
	@:overload @:public public function visitDMUL(obj : com.sun.org.apache.bcel.internal.generic.DMUL) : Void;
	
	@:overload @:public public function visitIFNE(obj : com.sun.org.apache.bcel.internal.generic.IFNE) : Void;
	
	@:overload @:public public function visitIF_ICMPLE(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPLE) : Void;
	
	@:overload @:public public function visitLDC2_W(obj : com.sun.org.apache.bcel.internal.generic.LDC2_W) : Void;
	
	@:overload @:public public function visitGETFIELD(obj : com.sun.org.apache.bcel.internal.generic.GETFIELD) : Void;
	
	@:overload @:public public function visitLADD(obj : com.sun.org.apache.bcel.internal.generic.LADD) : Void;
	
	@:overload @:public public function visitNOP(obj : com.sun.org.apache.bcel.internal.generic.NOP) : Void;
	
	@:overload @:public public function visitFALOAD(obj : com.sun.org.apache.bcel.internal.generic.FALOAD) : Void;
	
	@:overload @:public public function visitINSTANCEOF(obj : com.sun.org.apache.bcel.internal.generic.INSTANCEOF) : Void;
	
	@:overload @:public public function visitIFLE(obj : com.sun.org.apache.bcel.internal.generic.IFLE) : Void;
	
	@:overload @:public public function visitLXOR(obj : com.sun.org.apache.bcel.internal.generic.LXOR) : Void;
	
	@:overload @:public public function visitLRETURN(obj : com.sun.org.apache.bcel.internal.generic.LRETURN) : Void;
	
	@:overload @:public public function visitFCONST(obj : com.sun.org.apache.bcel.internal.generic.FCONST) : Void;
	
	@:overload @:public public function visitIUSHR(obj : com.sun.org.apache.bcel.internal.generic.IUSHR) : Void;
	
	@:overload @:public public function visitBALOAD(obj : com.sun.org.apache.bcel.internal.generic.BALOAD) : Void;
	
	@:overload @:public public function visitDUP2(obj : com.sun.org.apache.bcel.internal.generic.DUP2) : Void;
	
	@:overload @:public public function visitIF_ACMPEQ(obj : com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ) : Void;
	
	@:overload @:public public function visitIMPDEP1(obj : com.sun.org.apache.bcel.internal.generic.IMPDEP1) : Void;
	
	@:overload @:public public function visitMONITORENTER(obj : com.sun.org.apache.bcel.internal.generic.MONITORENTER) : Void;
	
	@:overload @:public public function visitLSHL(obj : com.sun.org.apache.bcel.internal.generic.LSHL) : Void;
	
	@:overload @:public public function visitDCMPG(obj : com.sun.org.apache.bcel.internal.generic.DCMPG) : Void;
	
	@:overload @:public public function visitD2L(obj : com.sun.org.apache.bcel.internal.generic.D2L) : Void;
	
	@:overload @:public public function visitIMPDEP2(obj : com.sun.org.apache.bcel.internal.generic.IMPDEP2) : Void;
	
	@:overload @:public public function visitL2D(obj : com.sun.org.apache.bcel.internal.generic.L2D) : Void;
	
	@:overload @:public public function visitRET(obj : com.sun.org.apache.bcel.internal.generic.RET) : Void;
	
	@:overload @:public public function visitIFGT(obj : com.sun.org.apache.bcel.internal.generic.IFGT) : Void;
	
	@:overload @:public public function visitIXOR(obj : com.sun.org.apache.bcel.internal.generic.IXOR) : Void;
	
	@:overload @:public public function visitINVOKEVIRTUAL(obj : com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL) : Void;
	
	@:overload @:public public function visitFASTORE(obj : com.sun.org.apache.bcel.internal.generic.FASTORE) : Void;
	
	@:overload @:public public function visitIRETURN(obj : com.sun.org.apache.bcel.internal.generic.IRETURN) : Void;
	
	@:overload @:public public function visitIF_ICMPNE(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPNE) : Void;
	
	@:overload @:public public function visitFLOAD(obj : com.sun.org.apache.bcel.internal.generic.FLOAD) : Void;
	
	@:overload @:public public function visitLDIV(obj : com.sun.org.apache.bcel.internal.generic.LDIV) : Void;
	
	@:overload @:public public function visitPUTSTATIC(obj : com.sun.org.apache.bcel.internal.generic.PUTSTATIC) : Void;
	
	@:overload @:public public function visitAALOAD(obj : com.sun.org.apache.bcel.internal.generic.AALOAD) : Void;
	
	@:overload @:public public function visitD2I(obj : com.sun.org.apache.bcel.internal.generic.D2I) : Void;
	
	@:overload @:public public function visitIF_ICMPEQ(obj : com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ) : Void;
	
	@:overload @:public public function visitAASTORE(obj : com.sun.org.apache.bcel.internal.generic.AASTORE) : Void;
	
	@:overload @:public public function visitARETURN(obj : com.sun.org.apache.bcel.internal.generic.ARETURN) : Void;
	
	@:overload @:public public function visitDUP2_X1(obj : com.sun.org.apache.bcel.internal.generic.DUP2_X1) : Void;
	
	@:overload @:public public function visitFNEG(obj : com.sun.org.apache.bcel.internal.generic.FNEG) : Void;
	
	@:overload @:public public function visitGOTO_W(obj : com.sun.org.apache.bcel.internal.generic.GOTO_W) : Void;
	
	@:overload @:public public function visitD2F(obj : com.sun.org.apache.bcel.internal.generic.D2F) : Void;
	
	@:overload @:public public function visitGOTO(obj : com.sun.org.apache.bcel.internal.generic.GOTO) : Void;
	
	@:overload @:public public function visitISUB(obj : com.sun.org.apache.bcel.internal.generic.ISUB) : Void;
	
	@:overload @:public public function visitF2I(obj : com.sun.org.apache.bcel.internal.generic.F2I) : Void;
	
	@:overload @:public public function visitDNEG(obj : com.sun.org.apache.bcel.internal.generic.DNEG) : Void;
	
	@:overload @:public public function visitICONST(obj : com.sun.org.apache.bcel.internal.generic.ICONST) : Void;
	
	@:overload @:public public function visitFDIV(obj : com.sun.org.apache.bcel.internal.generic.FDIV) : Void;
	
	@:overload @:public public function visitI2B(obj : com.sun.org.apache.bcel.internal.generic.I2B) : Void;
	
	@:overload @:public public function visitLNEG(obj : com.sun.org.apache.bcel.internal.generic.LNEG) : Void;
	
	@:overload @:public public function visitLREM(obj : com.sun.org.apache.bcel.internal.generic.LREM) : Void;
	
	@:overload @:public public function visitIMUL(obj : com.sun.org.apache.bcel.internal.generic.IMUL) : Void;
	
	@:overload @:public public function visitIADD(obj : com.sun.org.apache.bcel.internal.generic.IADD) : Void;
	
	@:overload @:public public function visitLSHR(obj : com.sun.org.apache.bcel.internal.generic.LSHR) : Void;
	
	@:overload @:public public function visitLOOKUPSWITCH(obj : com.sun.org.apache.bcel.internal.generic.LOOKUPSWITCH) : Void;
	
	@:overload @:public public function visitDUP_X1(obj : com.sun.org.apache.bcel.internal.generic.DUP_X1) : Void;
	
	@:overload @:public public function visitFCMPL(obj : com.sun.org.apache.bcel.internal.generic.FCMPL) : Void;
	
	@:overload @:public public function visitI2C(obj : com.sun.org.apache.bcel.internal.generic.I2C) : Void;
	
	@:overload @:public public function visitLMUL(obj : com.sun.org.apache.bcel.internal.generic.LMUL) : Void;
	
	@:overload @:public public function visitLUSHR(obj : com.sun.org.apache.bcel.internal.generic.LUSHR) : Void;
	
	@:overload @:public public function visitISHL(obj : com.sun.org.apache.bcel.internal.generic.ISHL) : Void;
	
	@:overload @:public public function visitLALOAD(obj : com.sun.org.apache.bcel.internal.generic.LALOAD) : Void;
	
	@:overload @:public public function visitASTORE(obj : com.sun.org.apache.bcel.internal.generic.ASTORE) : Void;
	
	@:overload @:public public function visitANEWARRAY(obj : com.sun.org.apache.bcel.internal.generic.ANEWARRAY) : Void;
	
	@:overload @:public public function visitFRETURN(obj : com.sun.org.apache.bcel.internal.generic.FRETURN) : Void;
	
	@:overload @:public public function visitFADD(obj : com.sun.org.apache.bcel.internal.generic.FADD) : Void;
	
	@:overload @:public public function visitBREAKPOINT(obj : com.sun.org.apache.bcel.internal.generic.BREAKPOINT) : Void;
	
	
}
