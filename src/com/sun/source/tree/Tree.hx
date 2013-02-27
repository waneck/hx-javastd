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
* Common interface for all nodes in an abstract syntax tree.
*
* <p><b>WARNING:</b> This interface and its sub-interfaces are
* subject to change as the Java&trade; programming language evolves.
* These interfaces are implemented by the JDK Java compiler (javac)
* and should not be implemented either directly or indirectly by
* other applications.
*
* @author Peter von der Ah&eacute;
* @author Jonathan Gibbons
*
* @since 1.6
*/
@:require(java6) extern interface Tree
{
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload public function getKind() : Tree_Kind;
	
	/**
	* Accept method used to implement the visitor pattern.  The
	* visitor pattern is used to implement operations on trees.
	*
	* @param <R> result type of this operation.
	* @param <D> type of additonal data.
	*/
	@:overload public function accept<R, D>(visitor : com.sun.source.tree.TreeVisitor<R, D>, data : D) : R;
	
	
}
/**
* Enumerates all kinds of trees.
*/
@:native('com$sun$source$tree$Tree$Kind') extern enum Tree_Kind
{
	/**
	* Used for instances of {@link AnnotationTree}.
	*/
	ANNOTATION;
	/**
	* Used for instances of {@link ArrayAccessTree}.
	*/
	ARRAY_ACCESS;
	/**
	* Used for instances of {@link ArrayTypeTree}.
	*/
	ARRAY_TYPE;
	/**
	* Used for instances of {@link AssertTree}.
	*/
	ASSERT;
	/**
	* Used for instances of {@link AssignmentTree}.
	*/
	ASSIGNMENT;
	/**
	* Used for instances of {@link BlockTree}.
	*/
	BLOCK;
	/**
	* Used for instances of {@link BreakTree}.
	*/
	BREAK;
	/**
	* Used for instances of {@link CaseTree}.
	*/
	CASE;
	/**
	* Used for instances of {@link CatchTree}.
	*/
	CATCH;
	/**
	* Used for instances of {@link ClassTree} representing classes.
	*/
	CLASS;
	/**
	* Used for instances of {@link CompilationUnitTree}.
	*/
	COMPILATION_UNIT;
	/**
	* Used for instances of {@link ConditionalExpressionTree}.
	*/
	CONDITIONAL_EXPRESSION;
	/**
	* Used for instances of {@link ContinueTree}.
	*/
	CONTINUE;
	/**
	* Used for instances of {@link DoWhileLoopTree}.
	*/
	DO_WHILE_LOOP;
	/**
	* Used for instances of {@link EnhancedForLoopTree}.
	*/
	ENHANCED_FOR_LOOP;
	/**
	* Used for instances of {@link ExpressionStatementTree}.
	*/
	EXPRESSION_STATEMENT;
	/**
	* Used for instances of {@link MemberSelectTree}.
	*/
	MEMBER_SELECT;
	/**
	* Used for instances of {@link ForLoopTree}.
	*/
	FOR_LOOP;
	/**
	* Used for instances of {@link IdentifierTree}.
	*/
	IDENTIFIER;
	/**
	* Used for instances of {@link IfTree}.
	*/
	IF;
	/**
	* Used for instances of {@link ImportTree}.
	*/
	IMPORT;
	/**
	* Used for instances of {@link InstanceOfTree}.
	*/
	INSTANCE_OF;
	/**
	* Used for instances of {@link LabeledStatementTree}.
	*/
	LABELED_STATEMENT;
	/**
	* Used for instances of {@link MethodTree}.
	*/
	METHOD;
	/**
	* Used for instances of {@link MethodInvocationTree}.
	*/
	METHOD_INVOCATION;
	/**
	* Used for instances of {@link ModifiersTree}.
	*/
	MODIFIERS;
	/**
	* Used for instances of {@link NewArrayTree}.
	*/
	NEW_ARRAY;
	/**
	* Used for instances of {@link NewClassTree}.
	*/
	NEW_CLASS;
	/**
	* Used for instances of {@link ParenthesizedTree}.
	*/
	PARENTHESIZED;
	/**
	* Used for instances of {@link PrimitiveTypeTree}.
	*/
	PRIMITIVE_TYPE;
	/**
	* Used for instances of {@link ReturnTree}.
	*/
	RETURN;
	/**
	* Used for instances of {@link EmptyStatementTree}.
	*/
	EMPTY_STATEMENT;
	/**
	* Used for instances of {@link SwitchTree}.
	*/
	SWITCH;
	/**
	* Used for instances of {@link SynchronizedTree}.
	*/
	SYNCHRONIZED;
	/**
	* Used for instances of {@link ThrowTree}.
	*/
	THROW;
	/**
	* Used for instances of {@link TryTree}.
	*/
	TRY;
	/**
	* Used for instances of {@link ParameterizedTypeTree}.
	*/
	PARAMETERIZED_TYPE;
	/**
	* Used for instances of {@link UnionTypeTree}.
	*/
	UNION_TYPE;
	/**
	* Used for instances of {@link TypeCastTree}.
	*/
	TYPE_CAST;
	/**
	* Used for instances of {@link TypeParameterTree}.
	*/
	TYPE_PARAMETER;
	/**
	* Used for instances of {@link VariableTree}.
	*/
	VARIABLE;
	/**
	* Used for instances of {@link WhileLoopTree}.
	*/
	WHILE_LOOP;
	/**
	* Used for instances of {@link UnaryTree} representing postfix
	* increment operator {@code ++}.
	*/
	POSTFIX_INCREMENT;
	/**
	* Used for instances of {@link UnaryTree} representing postfix
	* decrement operator {@code --}.
	*/
	POSTFIX_DECREMENT;
	/**
	* Used for instances of {@link UnaryTree} representing prefix
	* increment operator {@code ++}.
	*/
	PREFIX_INCREMENT;
	/**
	* Used for instances of {@link UnaryTree} representing prefix
	* decrement operator {@code --}.
	*/
	PREFIX_DECREMENT;
	/**
	* Used for instances of {@link UnaryTree} representing unary plus
	* operator {@code +}.
	*/
	UNARY_PLUS;
	/**
	* Used for instances of {@link UnaryTree} representing unary minus
	* operator {@code -}.
	*/
	UNARY_MINUS;
	/**
	* Used for instances of {@link UnaryTree} representing bitwise
	* complement operator {@code ~}.
	*/
	BITWISE_COMPLEMENT;
	/**
	* Used for instances of {@link UnaryTree} representing logical
	* complement operator {@code !}.
	*/
	LOGICAL_COMPLEMENT;
	/**
	* Used for instances of {@link BinaryTree} representing
	* multiplication {@code *}.
	*/
	MULTIPLY;
	/**
	* Used for instances of {@link BinaryTree} representing
	* division {@code /}.
	*/
	DIVIDE;
	/**
	* Used for instances of {@link BinaryTree} representing
	* remainder {@code %}.
	*/
	REMAINDER;
	/**
	* Used for instances of {@link BinaryTree} representing
	* addition or string concatenation {@code +}.
	*/
	PLUS;
	/**
	* Used for instances of {@link BinaryTree} representing
	* subtraction {@code -}.
	*/
	MINUS;
	/**
	* Used for instances of {@link BinaryTree} representing
	* left shift {@code <<}.
	*/
	LEFT_SHIFT;
	/**
	* Used for instances of {@link BinaryTree} representing
	* right shift {@code >>}.
	*/
	RIGHT_SHIFT;
	/**
	* Used for instances of {@link BinaryTree} representing
	* unsigned right shift {@code >>>}.
	*/
	UNSIGNED_RIGHT_SHIFT;
	/**
	* Used for instances of {@link BinaryTree} representing
	* less-than {@code <}.
	*/
	LESS_THAN;
	/**
	* Used for instances of {@link BinaryTree} representing
	* greater-than {@code >}.
	*/
	GREATER_THAN;
	/**
	* Used for instances of {@link BinaryTree} representing
	* less-than-equal {@code <=}.
	*/
	LESS_THAN_EQUAL;
	/**
	* Used for instances of {@link BinaryTree} representing
	* greater-than-equal {@code >=}.
	*/
	GREATER_THAN_EQUAL;
	/**
	* Used for instances of {@link BinaryTree} representing
	* equal-to {@code ==}.
	*/
	EQUAL_TO;
	/**
	* Used for instances of {@link BinaryTree} representing
	* not-equal-to {@code !=}.
	*/
	NOT_EQUAL_TO;
	/**
	* Used for instances of {@link BinaryTree} representing
	* bitwise and logical "and" {@code &}.
	*/
	AND;
	/**
	* Used for instances of {@link BinaryTree} representing
	* bitwise and logical "xor" {@code ^}.
	*/
	XOR;
	/**
	* Used for instances of {@link BinaryTree} representing
	* bitwise and logical "or" {@code |}.
	*/
	OR;
	/**
	* Used for instances of {@link BinaryTree} representing
	* conditional-and {@code &&}.
	*/
	CONDITIONAL_AND;
	/**
	* Used for instances of {@link BinaryTree} representing
	* conditional-or {@code ||}.
	*/
	CONDITIONAL_OR;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* multiplication assignment {@code *=}.
	*/
	MULTIPLY_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* division assignment {@code /=}.
	*/
	DIVIDE_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* remainder assignment {@code %=}.
	*/
	REMAINDER_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* addition or string concatenation assignment {@code +=}.
	*/
	PLUS_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* subtraction assignment {@code -=}.
	*/
	MINUS_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* left shift assignment {@code <<=}.
	*/
	LEFT_SHIFT_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* right shift assignment {@code >>=}.
	*/
	RIGHT_SHIFT_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* unsigned right shift assignment {@code >>>=}.
	*/
	UNSIGNED_RIGHT_SHIFT_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* bitwise and logical "and" assignment {@code &=}.
	*/
	AND_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* bitwise and logical "xor" assignment {@code ^=}.
	*/
	XOR_ASSIGNMENT;
	/**
	* Used for instances of {@link CompoundAssignmentTree} representing
	* bitwise and logical "or" assignment {@code |=}.
	*/
	OR_ASSIGNMENT;
	/**
	* Used for instances of {@link LiteralTree} representing
	* an integral literal expression of type {@code int}.
	*/
	INT_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* an integral literal expression of type {@code long}.
	*/
	LONG_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* a floating-point literal expression of type {@code float}.
	*/
	FLOAT_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* a floating-point literal expression of type {@code double}.
	*/
	DOUBLE_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* a boolean literal expression of type {@code boolean}.
	*/
	BOOLEAN_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* a character literal expression of type {@code char}.
	*/
	CHAR_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* a string literal expression of type {@link String}.
	*/
	STRING_LITERAL;
	/**
	* Used for instances of {@link LiteralTree} representing
	* the use of {@code null}.
	*/
	NULL_LITERAL;
	/**
	* Used for instances of {@link WildcardTree} representing
	* an unbounded wildcard type argument.
	*/
	UNBOUNDED_WILDCARD;
	/**
	* Used for instances of {@link WildcardTree} representing
	* an extends bounded wildcard type argument.
	*/
	EXTENDS_WILDCARD;
	/**
	* Used for instances of {@link WildcardTree} representing
	* a super bounded wildcard type argument.
	*/
	SUPER_WILDCARD;
	/**
	* Used for instances of {@link ErroneousTree}.
	*/
	ERRONEOUS;
	/**
	* Used for instances of {@link ClassTree} representing interfaces.
	*/
	INTERFACE;
	/**
	* Used for instances of {@link ClassTree} representing enums.
	*/
	ENUM;
	/**
	* Used for instances of {@link ClassTree} representing annotation types.
	*/
	ANNOTATION_TYPE;
	/**
	* An implementation-reserved node. This is the not the node
	* you are looking for.
	*/
	OTHER;
	
}

