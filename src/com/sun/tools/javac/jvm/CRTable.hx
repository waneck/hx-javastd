package com.sun.tools.javac.jvm;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** This class contains the CharacterRangeTable for some method
*  and the hashtable for mapping trees or lists of trees to their
*  ending positions.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class CRTable implements com.sun.tools.javac.jvm.CRTFlags
{
	/** Constructor
	*/
	@:overload @:public public function new(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl, endPositions : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>) : Void;
	
	/** Create a new CRTEntry and add it to the entries.
	*  @param tree     The tree or the list of trees for which
	*                  we are storing the code pointers.
	*  @param flags    The set of flags designating type of the entry.
	*  @param startPc  The starting code position.
	*  @param endPc    The ending code position.
	*/
	@:overload @:public public function put(tree : Dynamic, flags : Int, startPc : Int, endPc : Int) : Void;
	
	/** Compute source positions and write CRT to the databuf.
	*  @param databuf  The buffer to write bytecodes to.
	*/
	@:overload @:public public function writeCRT(databuf : com.sun.tools.javac.util.ByteBuffer, lineMap : com.sun.tools.javac.util.Position.Position_LineMap, log : com.sun.tools.javac.util.Log) : Int;
	
	/** Return the number of the entries.
	*/
	@:overload @:public public function length() : Int;
	
	
}
/**
*  This class contains methods to compute source positions for trees.
*  Extends Tree.Visitor to traverse the abstract syntax tree.
*/
@:native('com$sun$tools$javac$jvm$CRTable$SourceComputer') @:internal extern class CRTable_SourceComputer extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	/** Visitor method: compute source positions for a single node.
	*/
	@:overload @:public public function csp(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.jvm.CRTable.CRTable_SourceRange;
	
	/** Visitor method: compute source positions for a list of nodes.
	*/
	@:overload @:public public function csp(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.jvm.CRTable.CRTable_SourceRange;
	
	/**  Visitor method: compute source positions for
	*    a list of case blocks of switch statements.
	*/
	@:overload @:public public function cspCases(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>) : com.sun.tools.javac.jvm.CRTable.CRTable_SourceRange;
	
	/**  Visitor method: compute source positions for
	*   a list of catch clauses in try statements.
	*/
	@:overload @:public public function cspCatchers(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>) : com.sun.tools.javac.jvm.CRTable.CRTable_SourceRange;
	
	@:overload @:public override public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload @:public override public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload @:public override public function visitSkip(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip) : Void;
	
	@:overload @:public override public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public override public function visitDoLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload @:public override public function visitWhileLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload @:public override public function visitForLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload @:public override public function visitForeachLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload @:public override public function visitLabelled(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement) : Void;
	
	@:overload @:public override public function visitSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload @:public override public function visitCase(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCase) : Void;
	
	@:overload @:public override public function visitSynchronized(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload @:public override public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload @:public override public function visitCatch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch) : Void;
	
	@:overload @:public override public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload @:public override public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload @:public override public function visitExec(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload @:public override public function visitBreak(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload @:public override public function visitContinue(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload @:public override public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload @:public override public function visitThrow(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	@:overload @:public override public function visitAssert(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	@:overload @:public override public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload @:public override public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload @:public override public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload @:public override public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload @:public override public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload @:public override public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload @:public override public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload @:public override public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload @:public override public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload @:public override public function visitTypeTest(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload @:public override public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload @:public override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload @:public override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload @:public override public function visitLiteral(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload @:public override public function visitTypeIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload @:public override public function visitTypeArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	@:overload @:public override public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload @:public override public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload @:public override public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload @:public override public function visitErroneous(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	@:overload @:public override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** The start position of given tree.
	*/
	@:overload @:public public function startPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** The end position of given tree, if it has
	*  defined endpos, NOPOS otherwise.
	*/
	@:overload @:public public function endPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	
}
/** This class contains a CharacterRangeTableEntry.
*/
@:native('com$sun$tools$javac$jvm$CRTable$CRTEntry') @:internal extern class CRTable_CRTEntry
{
	
}
/** This class contains source positions
*  for some tree or list of trees.
*/
@:native('com$sun$tools$javac$jvm$CRTable$SourceRange') @:internal extern class CRTable_SourceRange
{
	
}
