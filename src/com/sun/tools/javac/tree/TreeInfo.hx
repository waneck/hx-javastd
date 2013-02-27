package com.sun.tools.javac.tree;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/** Utility class containing inspector methods for trees.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TreeInfo
{
	private static var treeInfoKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<TreeInfo>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : TreeInfo;
	
	/** Return name of operator with given tree tag.
	*/
	@:overload public function operatorName(tag : Int) : com.sun.tools.javac.util.Name;
	
	/** Is tree a constructor declaration?
	*/
	@:overload public static function isConstructor(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** Is there a constructor declaration in the given list of trees?
	*/
	@:overload public static function hasConstructors(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Bool;
	
	@:overload public static function isMultiCatch(catchClause : JCCatch) : Bool;
	
	/** Is statement an initializer for a synthetic field?
	*/
	@:overload public static function isSyntheticInit(stat : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** If the expression is a method call, return the method name, null
	*  otherwise. */
	@:overload public static function calledMethodName(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.util.Name;
	
	/** Is this a call to this or super?
	*/
	@:overload public static function isSelfCall(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** Is this a call to super?
	*/
	@:overload public static function isSuperCall(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** Is this a constructor whose first (non-synthetic) statement is not
	*  of the form this(...)?
	*/
	@:overload public static function isInitialConstructor(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** Return the first call in a constructor definition. */
	@:overload public static function firstConstructorCall(tree : com.sun.tools.javac.tree.JCTree) : JCMethodInvocation;
	
	/** Return true if a tree represents a diamond new expr. */
	@:overload public static function isDiamond(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** Return true if a tree represents the null literal. */
	@:overload public static function isNull(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** The position of the first statement in a block, or the position of
	*  the block itself if it is empty.
	*/
	@:overload public static function firstStatPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** The end position of given tree, if it is a block with
	*  defined endpos.
	*/
	@:overload public static function endPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** Get the start position for a tree node.  The start position is
	* defined to be the position of the first character of the first
	* token of the node's source text.
	* @param tree  The tree node
	*/
	@:overload public static function getStartPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** The end position of given tree, given  a table of end positions generated by the parser
	*/
	@:overload public static function getEndPos(tree : com.sun.tools.javac.tree.JCTree, endPositions : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>) : Int;
	
	/** A DiagnosticPosition with the preferred position set to the
	*  end position of given tree, if it is a block with
	*  defined endpos.
	*/
	@:overload public static function diagEndPos(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition;
	
	/** The position of the finalizer of given try/synchronized statement.
	*/
	@:overload public static function finalizerPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** Find the position for reporting an error about a symbol, where
	*  that symbol is defined somewhere in the given tree. */
	@:overload public static function positionFor(sym : com.sun.tools.javac.code.Symbol, tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/** Find the position for reporting an error about a symbol, where
	*  that symbol is defined somewhere in the given tree. */
	@:overload public static function diagnosticPositionFor(sym : com.sun.tools.javac.code.Symbol, tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition;
	
	/** Find the declaration for a symbol, where
	*  that symbol is defined somewhere in the given tree. */
	@:overload public static function declarationFor(sym : com.sun.tools.javac.code.Symbol, tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public static function scopeFor(node : com.sun.tools.javac.tree.JCTree, unit : JCCompilationUnit) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload public static function scopeFor(path : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload public static function pathFor(node : com.sun.tools.javac.tree.JCTree, unit : JCCompilationUnit) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	/** Return the statement referenced by a label.
	*  If the label refers to a loop or switch, return that switch
	*  otherwise return the labelled statement itself
	*/
	@:overload public static function referencedStatement(tree : JCLabeledStatement) : com.sun.tools.javac.tree.JCTree;
	
	/** Skip parens and return the enclosed expression
	*/
	@:overload public static function skipParens(tree : JCExpression) : JCExpression;
	
	/** Skip parens and return the enclosed expression
	*/
	@:overload public static function skipParens(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree;
	
	/** Return the types of a list of trees.
	*/
	@:overload public static function types(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/** If this tree is an identifier or a field or a parameterized type,
	*  return its name, otherwise return null.
	*/
	@:overload public static function name(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.util.Name;
	
	/** If this tree is a qualified identifier, its return fully qualified name,
	*  otherwise return null.
	*/
	@:overload public static function fullName(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.util.Name;
	
	@:overload public static function symbolFor(node : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.code.Symbol;
	
	@:overload public static function isDeclaration(node : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** If this tree is an identifier or a field, return its symbol,
	*  otherwise return null.
	*/
	@:overload public static function symbol(tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.code.Symbol;
	
	/** Return true if this is a nonstatic selection. */
	@:overload public static function nonstaticSelect(tree : com.sun.tools.javac.tree.JCTree) : Bool;
	
	/** If this tree is an identifier or a field, set its symbol, otherwise skip.
	*/
	@:overload public static function setSymbol(tree : com.sun.tools.javac.tree.JCTree, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/** If this tree is a declaration or a block, return its flags field,
	*  otherwise return 0.
	*/
	@:overload public static function flags(tree : com.sun.tools.javac.tree.JCTree) : haxe.Int64;
	
	/** Return first (smallest) flag in `flags':
	*  pre: flags != 0
	*/
	@:overload public static function firstFlag(flags : haxe.Int64) : haxe.Int64;
	
	/** Return flags as a string, separated by " ".
	*/
	@:overload public static function flagNames(flags : haxe.Int64) : String;
	
	/** Operator precedences values.
	*/
	public static var notExpression(default, null) : Int;
	
	/** Map operators to their precedence levels.
	*/
	@:overload public static function opPrec(op : Int) : Int;
	
	/**
	* Returns the underlying type of the tree if it is annotated type,
	* or the tree itself otherwise
	*/
	@:overload public static function typeIn(tree : JCExpression) : JCExpression;
	
	@:overload public static function innermostType(type : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree;
	
	
}
