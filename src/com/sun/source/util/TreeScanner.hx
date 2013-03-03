package com.sun.source.util;
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
* A TreeVisitor that visits all the child tree nodes.
* To visit nodes of a particular type, just override the
* corresponding visitXYZ method.
* Inside your method, call super.visitXYZ to visit descendant
* nodes.
*
* <p>The default implementation of the visitXYZ methods will determine
* a result as follows:
* <ul>
* <li>If the node being visited has no children, the result will be null.
* <li>If the node being visited has one child, the result will be the
* result of calling {@code scan} on that child. The child may be a simple node
* or itself a list of nodes.
* <li> If the node being visited has more than one child, the result will
* be determined by calling {@code scan} each child in turn, and then combining the
* result of each scan after the first with the cumulative result
* so far, as determined by the {@link #reduce} method. Each child may be either
* a simple node of a list of nodes. The default behavior of the {@code reduce}
* method is such that the result of the visitXYZ method will be the result of
* the last child scanned.
* </ul>
*
* <p>Here is an example to count the number of identifier nodes in a tree:
* <pre>
*   class CountIdentifiers extends TreeScanner<Integer,Void> {
*      {@literal @}Override
*      public Integer visitIdentifier(IdentifierTree node, Void p) {
*          return 1;
*      }
*      {@literal @}Override
*      public Integer reduce(Integer r1, Integer r2) {
*          return (r1 == null ? 0 : r1) + (r2 == null ? 0 : r2);
*      }
*   }
* </pre>
*
* @author Peter von der Ah&eacute;
* @author Jonathan Gibbons
* @since 1.6
*/
@:require(java6) extern class TreeScanner<R, P> implements com.sun.source.tree.TreeVisitor<R, P>
{
	/** Scan a single node.
	*/
	@:overload @:public public function scan(node : com.sun.source.tree.Tree, p : P) : R;
	
	/** Scan a list of nodes.
	*/
	@:overload @:public public function scan(nodes : java.lang.Iterable<com.sun.source.tree.Tree>, p : P) : R;
	
	/**
	* Reduces two results into a combined result.
	* The default implementation is to return the first parameter.
	* The general contract of the method is that it may take any action whatsoever.
	*/
	@:overload @:public public function reduce(r1 : R, r2 : R) : R;
	
	/* ***************************************************************************
	* Visitor methods
	****************************************************************************/
	@:overload @:public public function visitCompilationUnit(node : com.sun.source.tree.CompilationUnitTree, p : P) : R;
	
	@:overload @:public public function visitImport(node : com.sun.source.tree.ImportTree, p : P) : R;
	
	@:overload @:public public function visitClass(node : com.sun.source.tree.ClassTree, p : P) : R;
	
	@:overload @:public public function visitMethod(node : com.sun.source.tree.MethodTree, p : P) : R;
	
	@:overload @:public public function visitVariable(node : com.sun.source.tree.VariableTree, p : P) : R;
	
	@:overload @:public public function visitEmptyStatement(node : com.sun.source.tree.EmptyStatementTree, p : P) : R;
	
	@:overload @:public public function visitBlock(node : com.sun.source.tree.BlockTree, p : P) : R;
	
	@:overload @:public public function visitDoWhileLoop(node : com.sun.source.tree.DoWhileLoopTree, p : P) : R;
	
	@:overload @:public public function visitWhileLoop(node : com.sun.source.tree.WhileLoopTree, p : P) : R;
	
	@:overload @:public public function visitForLoop(node : com.sun.source.tree.ForLoopTree, p : P) : R;
	
	@:overload @:public public function visitEnhancedForLoop(node : com.sun.source.tree.EnhancedForLoopTree, p : P) : R;
	
	@:overload @:public public function visitLabeledStatement(node : com.sun.source.tree.LabeledStatementTree, p : P) : R;
	
	@:overload @:public public function visitSwitch(node : com.sun.source.tree.SwitchTree, p : P) : R;
	
	@:overload @:public public function visitCase(node : com.sun.source.tree.CaseTree, p : P) : R;
	
	@:overload @:public public function visitSynchronized(node : com.sun.source.tree.SynchronizedTree, p : P) : R;
	
	@:overload @:public public function visitTry(node : com.sun.source.tree.TryTree, p : P) : R;
	
	@:overload @:public public function visitCatch(node : com.sun.source.tree.CatchTree, p : P) : R;
	
	@:overload @:public public function visitConditionalExpression(node : com.sun.source.tree.ConditionalExpressionTree, p : P) : R;
	
	@:overload @:public public function visitIf(node : com.sun.source.tree.IfTree, p : P) : R;
	
	@:overload @:public public function visitExpressionStatement(node : com.sun.source.tree.ExpressionStatementTree, p : P) : R;
	
	@:overload @:public public function visitBreak(node : com.sun.source.tree.BreakTree, p : P) : R;
	
	@:overload @:public public function visitContinue(node : com.sun.source.tree.ContinueTree, p : P) : R;
	
	@:overload @:public public function visitReturn(node : com.sun.source.tree.ReturnTree, p : P) : R;
	
	@:overload @:public public function visitThrow(node : com.sun.source.tree.ThrowTree, p : P) : R;
	
	@:overload @:public public function visitAssert(node : com.sun.source.tree.AssertTree, p : P) : R;
	
	@:overload @:public public function visitMethodInvocation(node : com.sun.source.tree.MethodInvocationTree, p : P) : R;
	
	@:overload @:public public function visitNewClass(node : com.sun.source.tree.NewClassTree, p : P) : R;
	
	@:overload @:public public function visitNewArray(node : com.sun.source.tree.NewArrayTree, p : P) : R;
	
	@:overload @:public public function visitParenthesized(node : com.sun.source.tree.ParenthesizedTree, p : P) : R;
	
	@:overload @:public public function visitAssignment(node : com.sun.source.tree.AssignmentTree, p : P) : R;
	
	@:overload @:public public function visitCompoundAssignment(node : com.sun.source.tree.CompoundAssignmentTree, p : P) : R;
	
	@:overload @:public public function visitUnary(node : com.sun.source.tree.UnaryTree, p : P) : R;
	
	@:overload @:public public function visitBinary(node : com.sun.source.tree.BinaryTree, p : P) : R;
	
	@:overload @:public public function visitTypeCast(node : com.sun.source.tree.TypeCastTree, p : P) : R;
	
	@:overload @:public public function visitInstanceOf(node : com.sun.source.tree.InstanceOfTree, p : P) : R;
	
	@:overload @:public public function visitArrayAccess(node : com.sun.source.tree.ArrayAccessTree, p : P) : R;
	
	@:overload @:public public function visitMemberSelect(node : com.sun.source.tree.MemberSelectTree, p : P) : R;
	
	@:overload @:public public function visitIdentifier(node : com.sun.source.tree.IdentifierTree, p : P) : R;
	
	@:overload @:public public function visitLiteral(node : com.sun.source.tree.LiteralTree, p : P) : R;
	
	@:overload @:public public function visitPrimitiveType(node : com.sun.source.tree.PrimitiveTypeTree, p : P) : R;
	
	@:overload @:public public function visitArrayType(node : com.sun.source.tree.ArrayTypeTree, p : P) : R;
	
	@:overload @:public public function visitParameterizedType(node : com.sun.source.tree.ParameterizedTypeTree, p : P) : R;
	
	@:overload @:public public function visitUnionType(node : com.sun.source.tree.UnionTypeTree, p : P) : R;
	
	@:overload @:public public function visitTypeParameter(node : com.sun.source.tree.TypeParameterTree, p : P) : R;
	
	@:overload @:public public function visitWildcard(node : com.sun.source.tree.WildcardTree, p : P) : R;
	
	@:overload @:public public function visitModifiers(node : com.sun.source.tree.ModifiersTree, p : P) : R;
	
	@:overload @:public public function visitAnnotation(node : com.sun.source.tree.AnnotationTree, p : P) : R;
	
	@:overload @:public public function visitOther(node : com.sun.source.tree.Tree, p : P) : R;
	
	@:overload @:public public function visitErroneous(node : com.sun.source.tree.ErroneousTree, p : P) : R;
	
	
}
