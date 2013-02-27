package com.sun.source.tree;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A visitor of trees, in the style of the visitor design pattern.
* Classes implementing this interface are used to operate
* on a tree when the kind of tree is unknown at compile time.
* When a visitor is passed to an tree's {@link Tree#accept
* accept} method, the <tt>visit<i>XYZ</i></tt> method most applicable
* to that tree is invoked.
*
* <p> Classes implementing this interface may or may not throw a
* {@code NullPointerException} if the additional parameter {@code p}
* is {@code null}; see documentation of the implementing class for
* details.
*
* <p> <b>WARNING:</b> It is possible that methods will be added to
* this interface to accommodate new, currently unknown, language
* structures added to future versions of the Java&trade; programming
* language.  Therefore, visitor classes directly implementing this
* interface may be source incompatible with future versions of the
* platform.
*
* @param <R> the return type of this visitor's methods.  Use {@link
*            Void} for visitors that do not need to return results.
* @param <P> the type of the additional parameter to this visitor's
*            methods.  Use {@code Void} for visitors that do not need an
*            additional parameter.
*
* @author Peter von der Ah&eacute;
* @author Jonathan Gibbons
*
* @since 1.6
*/
@:require(java6) extern interface TreeVisitor<R, P>
{
	@:overload public function visitAnnotation(node : com.sun.source.tree.AnnotationTree, p : P) : R;
	
	@:overload public function visitMethodInvocation(node : com.sun.source.tree.MethodInvocationTree, p : P) : R;
	
	@:overload public function visitAssert(node : com.sun.source.tree.AssertTree, p : P) : R;
	
	@:overload public function visitAssignment(node : com.sun.source.tree.AssignmentTree, p : P) : R;
	
	@:overload public function visitCompoundAssignment(node : com.sun.source.tree.CompoundAssignmentTree, p : P) : R;
	
	@:overload public function visitBinary(node : com.sun.source.tree.BinaryTree, p : P) : R;
	
	@:overload public function visitBlock(node : com.sun.source.tree.BlockTree, p : P) : R;
	
	@:overload public function visitBreak(node : com.sun.source.tree.BreakTree, p : P) : R;
	
	@:overload public function visitCase(node : com.sun.source.tree.CaseTree, p : P) : R;
	
	@:overload public function visitCatch(node : com.sun.source.tree.CatchTree, p : P) : R;
	
	@:overload public function visitClass(node : com.sun.source.tree.ClassTree, p : P) : R;
	
	@:overload public function visitConditionalExpression(node : com.sun.source.tree.ConditionalExpressionTree, p : P) : R;
	
	@:overload public function visitContinue(node : com.sun.source.tree.ContinueTree, p : P) : R;
	
	@:overload public function visitDoWhileLoop(node : com.sun.source.tree.DoWhileLoopTree, p : P) : R;
	
	@:overload public function visitErroneous(node : com.sun.source.tree.ErroneousTree, p : P) : R;
	
	@:overload public function visitExpressionStatement(node : com.sun.source.tree.ExpressionStatementTree, p : P) : R;
	
	@:overload public function visitEnhancedForLoop(node : com.sun.source.tree.EnhancedForLoopTree, p : P) : R;
	
	@:overload public function visitForLoop(node : com.sun.source.tree.ForLoopTree, p : P) : R;
	
	@:overload public function visitIdentifier(node : com.sun.source.tree.IdentifierTree, p : P) : R;
	
	@:overload public function visitIf(node : com.sun.source.tree.IfTree, p : P) : R;
	
	@:overload public function visitImport(node : com.sun.source.tree.ImportTree, p : P) : R;
	
	@:overload public function visitArrayAccess(node : com.sun.source.tree.ArrayAccessTree, p : P) : R;
	
	@:overload public function visitLabeledStatement(node : com.sun.source.tree.LabeledStatementTree, p : P) : R;
	
	@:overload public function visitLiteral(node : com.sun.source.tree.LiteralTree, p : P) : R;
	
	@:overload public function visitMethod(node : com.sun.source.tree.MethodTree, p : P) : R;
	
	@:overload public function visitModifiers(node : com.sun.source.tree.ModifiersTree, p : P) : R;
	
	@:overload public function visitNewArray(node : com.sun.source.tree.NewArrayTree, p : P) : R;
	
	@:overload public function visitNewClass(node : com.sun.source.tree.NewClassTree, p : P) : R;
	
	@:overload public function visitParenthesized(node : com.sun.source.tree.ParenthesizedTree, p : P) : R;
	
	@:overload public function visitReturn(node : com.sun.source.tree.ReturnTree, p : P) : R;
	
	@:overload public function visitMemberSelect(node : com.sun.source.tree.MemberSelectTree, p : P) : R;
	
	@:overload public function visitEmptyStatement(node : com.sun.source.tree.EmptyStatementTree, p : P) : R;
	
	@:overload public function visitSwitch(node : com.sun.source.tree.SwitchTree, p : P) : R;
	
	@:overload public function visitSynchronized(node : com.sun.source.tree.SynchronizedTree, p : P) : R;
	
	@:overload public function visitThrow(node : com.sun.source.tree.ThrowTree, p : P) : R;
	
	@:overload public function visitCompilationUnit(node : com.sun.source.tree.CompilationUnitTree, p : P) : R;
	
	@:overload public function visitTry(node : com.sun.source.tree.TryTree, p : P) : R;
	
	@:overload public function visitParameterizedType(node : com.sun.source.tree.ParameterizedTypeTree, p : P) : R;
	
	@:overload public function visitUnionType(node : com.sun.source.tree.UnionTypeTree, p : P) : R;
	
	@:overload public function visitArrayType(node : com.sun.source.tree.ArrayTypeTree, p : P) : R;
	
	@:overload public function visitTypeCast(node : com.sun.source.tree.TypeCastTree, p : P) : R;
	
	@:overload public function visitPrimitiveType(node : com.sun.source.tree.PrimitiveTypeTree, p : P) : R;
	
	@:overload public function visitTypeParameter(node : com.sun.source.tree.TypeParameterTree, p : P) : R;
	
	@:overload public function visitInstanceOf(node : com.sun.source.tree.InstanceOfTree, p : P) : R;
	
	@:overload public function visitUnary(node : com.sun.source.tree.UnaryTree, p : P) : R;
	
	@:overload public function visitVariable(node : com.sun.source.tree.VariableTree, p : P) : R;
	
	@:overload public function visitWhileLoop(node : com.sun.source.tree.WhileLoopTree, p : P) : R;
	
	@:overload public function visitWildcard(node : com.sun.source.tree.WildcardTree, p : P) : R;
	
	@:overload public function visitOther(node : com.sun.source.tree.Tree, p : P) : R;
	
	
}
