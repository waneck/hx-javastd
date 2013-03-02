package com.sun.tools.javac.comp;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
/** Type checking helper class for the attribution phase.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Check
{
	private static var checkKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Check>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Check;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** A table mapping flat names of all compiled classes in this run to their
	*  symbols; maintained from outside.
	*/
	public var compiled : java.util.Map<com.sun.tools.javac.util.Name, ClassSymbol>;
	
	/** Warn about unchecked operation.
	*  @param pos        Position to be used for error reporting.
	*  @param msg        A string describing the problem.
	*/
	@:overload public function warnUnchecked(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/** Warn about using proprietary API.
	*  @param pos        Position to be used for error reporting.
	*  @param msg        A string describing the problem.
	*/
	@:overload public function warnSunApi(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function warnStatic(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Report any deferred diagnostics.
	*/
	@:overload public function reportDeferredDiagnostics() : Void;
	
	/** Report a failure to complete a class.
	*  @param pos        Position to be used for error reporting.
	*  @param ex         The failure to report.
	*/
	@:overload public function completionError(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, ex : CompletionFailure) : com.sun.tools.javac.code.Type;
	
	/**
	* Check that type 't' is a valid instantiation of a generic class
	* (see JLS 4.5)
	*
	* @param t class type to be checked
	* @return true if 't' is well-formed
	*/
	@:overload public function checkValidGenericType(t : com.sun.tools.javac.code.Type) : Bool;
	
	/** Form the intersection of two type lists.
	*/
	@:overload public function intersect(ts1 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, ts2 : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	/** Check that a class does not inherit two concrete methods
	*  with the same signature.
	*  @param pos          Position to be used for error reporting.
	*  @param site         The class type to be checked.
	*/
	@:overload public function checkCompatibleConcretes(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, site : com.sun.tools.javac.code.Type) : Void;
	
	/** Check that classes (or interfaces) do not each define an abstract
	*  method with same name and arguments but incompatible return types.
	*  @param pos          Position to be used for error reporting.
	*  @param t1           The first argument type.
	*  @param t2           The second argument type.
	*/
	@:overload public function checkCompatibleAbstracts(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, t1 : com.sun.tools.javac.code.Type, t2 : com.sun.tools.javac.code.Type) : Bool;
	
	@:overload public function checkCompatibleAbstracts(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, t1 : com.sun.tools.javac.code.Type, t2 : com.sun.tools.javac.code.Type, site : com.sun.tools.javac.code.Type) : Bool;
	
	/** Check the annotations of a symbol.
	*/
	@:overload public function validateAnnotations(annotations : com.sun.tools.javac.util.List<JCAnnotation>, s : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Check an annotation of a symbol.
	*/
	@:overload public function validateAnnotation(a : JCAnnotation, s : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Check an annotation value.
	*/
	@:overload public function validateAnnotation(a : JCAnnotation) : Void;
	
	/** Check that a qualified name is in canonical form (for import decls).
	*/
	@:overload public function checkCanonical(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload public function castWarner(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, found : com.sun.tools.javac.code.Type, expected : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.Warner;
	
	@:overload public function convertWarner(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, found : com.sun.tools.javac.code.Type, expected : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.Warner;
	
	
}
/** A visitor class for type validation.
*/
@:native('com$sun$tools$javac$comp$Check$Validator') @:internal extern class Check_Validator extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	@:overload override public function visitTypeArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	@:overload override public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload override public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload override public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload public function visitSelectInternal(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	/** Default visitor method: do nothing.
	*/
	@:overload override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload public function validateTree(tree : com.sun.tools.javac.tree.JCTree, checkRaw : Bool, isOuter : Bool) : Void;
	
	@:overload public function validateTrees(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, checkRaw : Bool, isOuter : Bool) : Void;
	
	
}
@:native('com$sun$tools$javac$comp$Check$CycleChecker') @:internal extern class Check_CycleChecker extends com.sun.tools.javac.tree.TreeScanner
{
	@:overload public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload public function visitIdent(tree : JCIdent) : Void;
	
	@:overload public function visitTypeApply(tree : JCTypeApply) : Void;
	
	@:overload public function visitTypeArray(tree : JCArrayTypeTree) : Void;
	
	@:overload public function visitClassDef(tree : JCClassDecl) : Void;
	
	
}
@:native('com$sun$tools$javac$comp$Check$ClashFilter') @:internal extern class Check_ClashFilter implements com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>
{
	@:overload public function accepts(s : com.sun.tools.javac.code.Symbol) : Bool;
	
	
}
@:native('com$sun$tools$javac$comp$Check$ConversionWarner') @:internal extern class Check_ConversionWarner extends com.sun.tools.javac.util.Warner
{
	@:overload public function new(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, uncheckedKey : String, found : com.sun.tools.javac.code.Type, expected : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function warn(lint : com.sun.tools.javac.code.Lint.Lint_LintCategory) : Void;
	
	
}
