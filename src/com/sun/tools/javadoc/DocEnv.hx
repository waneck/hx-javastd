package com.sun.tools.javadoc;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DocEnv
{
	/**
	* Holds the environment for a run of javadoc.
	* Holds only the information needed throughout the
	* run and not the compiler info that could be GC'ed
	* or ported.
	*
	* @since 1.4
	* @author Robert Field
	* @author Neal Gafter (rewrite)
	* @author Scott Seligman (generics)
	*/
	@:require(java4) private static var docEnvKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javadoc.DocEnv>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javadoc.DocEnv;
	
	/** Access filter (public, protected, ...).  */
	private var showAccess : com.sun.tools.javadoc.ModifierFilter;
	
	/** Does the doclet only expect pre-1.5 doclet API? */
	private var legacyDoclet : Bool;
	
	/**
	* Constructor
	*
	* @param context      Context for this javadoc instance.
	*/
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function setSilent(silent : Bool) : Void;
	
	/**
	* Look up ClassDoc by qualified name.
	*/
	@:overload public function lookupClass(name : String) : com.sun.tools.javadoc.ClassDocImpl;
	
	/**
	* Load ClassDoc by qualified name.
	*/
	@:overload public function loadClass(name : String) : com.sun.tools.javadoc.ClassDocImpl;
	
	/**
	* Look up PackageDoc by qualified name.
	*/
	@:overload public function lookupPackage(name : String) : com.sun.tools.javadoc.PackageDocImpl;
	
	/**
	* Set the locale.
	*/
	@:overload public function setLocale(localeName : String) : Void;
	
	/** Check whether this member should be documented. */
	@:overload public function shouldDocument(sym : VarSymbol) : Bool;
	
	/** Check whether this member should be documented. */
	@:overload public function shouldDocument(sym : MethodSymbol) : Bool;
	
	/** check whether this class should be documented. */
	@:overload public function shouldDocument(sym : ClassSymbol) : Bool;
	
	/**
	* Check the visibility if this is an nested class.
	* if this is not a nested class, return true.
	* if this is an static visible nested class,
	*    return true.
	* if this is an visible nested class
	*    if the outer class is visible return true.
	*    else return false.
	* IMPORTANT: This also allows, static nested classes
	* to be defined inside an nested class, which is not
	* allowed by the compiler. So such an test case will
	* not reach upto this method itself, but if compiler
	* allows it, then that will go through.
	*/
	@:overload private function isVisible(sym : ClassSymbol) : Bool;
	
	/**
	* Print error message, increment error count.
	*
	* @param msg message to print.
	*/
	@:overload public function printError(msg : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	*/
	@:overload public function error(doc : com.sun.tools.javadoc.DocImpl, key : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	*/
	@:overload public function error(pos : com.sun.javadoc.SourcePosition, key : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param msg message to print.
	*/
	@:overload public function printError(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload public function error(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload public function error(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload public function error(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param msg message to print.
	*/
	@:overload public function printWarning(msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	*/
	@:overload public function warning(doc : com.sun.tools.javadoc.DocImpl, key : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param msg message to print.
	*/
	@:overload public function printWarning(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload public function warning(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload public function warning(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload public function warning(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload public function warning(doc : com.sun.tools.javadoc.DocImpl, key : String, a1 : String, a2 : String, a3 : String, a4 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param msg message to print.
	*/
	@:overload public function printNotice(msg : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	*/
	@:overload public function notice(key : String) : Void;
	
	/**
	* Print a message.
	*
	* @param msg message to print.
	*/
	@:overload public function printNotice(pos : com.sun.javadoc.SourcePosition, msg : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	*/
	@:overload public function notice(key : String, a1 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	*/
	@:overload public function notice(key : String, a1 : String, a2 : String) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param a1 first argument
	* @param a2 second argument
	* @param a3 third argument
	*/
	@:overload public function notice(key : String, a1 : String, a2 : String, a3 : String) : Void;
	
	/**
	* Exit, reporting errors and warnings.
	*/
	@:overload public function exit() : Void;
	
	private var packageMap : java.util.Map<PackageSymbol, com.sun.tools.javadoc.PackageDocImpl>;
	
	/**
	* Return the PackageDoc of this package symbol.
	*/
	@:overload public function getPackageDoc(pack : PackageSymbol) : com.sun.tools.javadoc.PackageDocImpl;
	
	private var classMap : java.util.Map<ClassSymbol, com.sun.tools.javadoc.ClassDocImpl>;
	
	/**
	* Return the ClassDoc (or a subtype) of this class symbol.
	*/
	@:overload public function getClassDoc(clazz : ClassSymbol) : com.sun.tools.javadoc.ClassDocImpl;
	
	/**
	* Create the ClassDoc (or a subtype) for a class symbol.
	*/
	@:overload private function makeClassDoc(clazz : ClassSymbol, docComment : String, tree : JCClassDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	@:overload private static function isAnnotationType(clazz : ClassSymbol) : Bool;
	
	@:overload private static function isAnnotationType(tree : JCClassDecl) : Bool;
	
	private var fieldMap : java.util.Map<VarSymbol, com.sun.tools.javadoc.FieldDocImpl>;
	
	/**
	* Return the FieldDoc of this var symbol.
	*/
	@:overload public function getFieldDoc(_var : VarSymbol) : com.sun.tools.javadoc.FieldDocImpl;
	
	/**
	* Create a FieldDoc for a var symbol.
	*/
	@:overload private function makeFieldDoc(_var : VarSymbol, docComment : String, tree : JCVariableDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	private var methodMap : java.util.Map<MethodSymbol, com.sun.tools.javadoc.ExecutableMemberDocImpl>;
	
	/**
	* Create a MethodDoc for this MethodSymbol.
	* Should be called only on symbols representing methods.
	*/
	@:overload private function makeMethodDoc(meth : MethodSymbol, docComment : String, tree : JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Return the MethodDoc for a MethodSymbol.
	* Should be called only on symbols representing methods.
	*/
	@:overload public function getMethodDoc(meth : MethodSymbol) : com.sun.tools.javadoc.MethodDocImpl;
	
	/**
	* Create the ConstructorDoc for a MethodSymbol.
	* Should be called only on symbols representing constructors.
	*/
	@:overload private function makeConstructorDoc(meth : MethodSymbol, docComment : String, tree : JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Return the ConstructorDoc for a MethodSymbol.
	* Should be called only on symbols representing constructors.
	*/
	@:overload public function getConstructorDoc(meth : MethodSymbol) : com.sun.tools.javadoc.ConstructorDocImpl;
	
	/**
	* Create the AnnotationTypeElementDoc for a MethodSymbol.
	* Should be called only on symbols representing annotation type elements.
	*/
	@:overload private function makeAnnotationTypeElementDoc(meth : MethodSymbol, docComment : String, tree : JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Return the AnnotationTypeElementDoc for a MethodSymbol.
	* Should be called only on symbols representing annotation type elements.
	*/
	@:overload public function getAnnotationTypeElementDoc(meth : MethodSymbol) : com.sun.tools.javadoc.AnnotationTypeElementDocImpl;
	
	/**
	* Set the encoding.
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	* Get the encoding.
	*/
	@:overload public function getEncoding() : String;
	
	
}
