package com.sun.tools.javac.tree;
/*
* Copyright (c) 2006, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TreeCopier<P> implements com.sun.source.tree.TreeVisitor<com.sun.tools.javac.tree.JCTree, P>
{
	/** Creates a new instance of TreeCopier */
	@:overload public function new(M : com.sun.tools.javac.tree.TreeMaker) : Void;
	
	@:overload public function copy<T : com.sun.tools.javac.tree.JCTree>(tree : T) : T;
	
	@:overload public function copy<T : com.sun.tools.javac.tree.JCTree>(tree : T, p : P) : T;
	
	@:overload public function copy<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>) : com.sun.tools.javac.util.List<T>;
	
	@:overload public function copy<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, p : P) : com.sun.tools.javac.util.List<T>;
	
	@:overload public function visitAnnotation(node : com.sun.source.tree.AnnotationTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitAssert(node : com.sun.source.tree.AssertTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitAssignment(node : com.sun.source.tree.AssignmentTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitCompoundAssignment(node : com.sun.source.tree.CompoundAssignmentTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitBinary(node : com.sun.source.tree.BinaryTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitBlock(node : com.sun.source.tree.BlockTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitBreak(node : com.sun.source.tree.BreakTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitCase(node : com.sun.source.tree.CaseTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitCatch(node : com.sun.source.tree.CatchTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitClass(node : com.sun.source.tree.ClassTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitConditionalExpression(node : com.sun.source.tree.ConditionalExpressionTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitContinue(node : com.sun.source.tree.ContinueTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitDoWhileLoop(node : com.sun.source.tree.DoWhileLoopTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitErroneous(node : com.sun.source.tree.ErroneousTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitExpressionStatement(node : com.sun.source.tree.ExpressionStatementTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitEnhancedForLoop(node : com.sun.source.tree.EnhancedForLoopTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitForLoop(node : com.sun.source.tree.ForLoopTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitIdentifier(node : com.sun.source.tree.IdentifierTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitIf(node : com.sun.source.tree.IfTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitImport(node : com.sun.source.tree.ImportTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitArrayAccess(node : com.sun.source.tree.ArrayAccessTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitLabeledStatement(node : com.sun.source.tree.LabeledStatementTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitLiteral(node : com.sun.source.tree.LiteralTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitMethod(node : com.sun.source.tree.MethodTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitMethodInvocation(node : com.sun.source.tree.MethodInvocationTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitModifiers(node : com.sun.source.tree.ModifiersTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitNewArray(node : com.sun.source.tree.NewArrayTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitNewClass(node : com.sun.source.tree.NewClassTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitParenthesized(node : com.sun.source.tree.ParenthesizedTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitReturn(node : com.sun.source.tree.ReturnTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitMemberSelect(node : com.sun.source.tree.MemberSelectTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitEmptyStatement(node : com.sun.source.tree.EmptyStatementTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitSwitch(node : com.sun.source.tree.SwitchTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitSynchronized(node : com.sun.source.tree.SynchronizedTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitThrow(node : com.sun.source.tree.ThrowTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitCompilationUnit(node : com.sun.source.tree.CompilationUnitTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitTry(node : com.sun.source.tree.TryTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitParameterizedType(node : com.sun.source.tree.ParameterizedTypeTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitUnionType(node : com.sun.source.tree.UnionTypeTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitArrayType(node : com.sun.source.tree.ArrayTypeTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitTypeCast(node : com.sun.source.tree.TypeCastTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitPrimitiveType(node : com.sun.source.tree.PrimitiveTypeTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitTypeParameter(node : com.sun.source.tree.TypeParameterTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitInstanceOf(node : com.sun.source.tree.InstanceOfTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitUnary(node : com.sun.source.tree.UnaryTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitVariable(node : com.sun.source.tree.VariableTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitWhileLoop(node : com.sun.source.tree.WhileLoopTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitWildcard(node : com.sun.source.tree.WildcardTree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitOther(node : com.sun.source.tree.Tree, p : P) : com.sun.tools.javac.tree.JCTree;
	
	
}
