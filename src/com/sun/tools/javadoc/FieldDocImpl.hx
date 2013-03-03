package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FieldDocImpl extends com.sun.tools.javadoc.MemberDocImpl implements com.sun.javadoc.FieldDoc
{
	/**
	* Represents a field in a java class.
	*
	* @see MemberDocImpl
	*
	* @since 1.2
	* @author Robert Field
	* @author Neal Gafter (rewrite)
	* @author Scott Seligman (generics, enums, annotations)
	*/
	@:require(java2) @:protected @:final private var sym(default, null) : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol;
	
	/**
	* Constructor.
	*/
	@:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol, rawDocs : String, tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Constructor.
	*/
	@:overload @:public public function new(env : com.sun.tools.javadoc.DocEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_VarSymbol) : Void;
	
	/**
	* Returns the flags in terms of javac's flags
	*/
	@:overload @:protected override private function getFlags() : haxe.Int64;
	
	/**
	* Identify the containing class
	*/
	@:overload @:protected override private function getContainingClass() : com.sun.tools.javac.code.Symbol.Symbol_ClassSymbol;
	
	/**
	* Get type of this field.
	*/
	@:overload @:public public function type() : com.sun.javadoc.Type;
	
	/**
	* Get the value of a constant field.
	*
	* @return the value of a constant field. The value is
	* automatically wrapped in an object if it has a primitive type.
	* If the field is not constant, returns null.
	*/
	@:overload @:public public function constantValue() : Dynamic;
	
	/**
	* Get the value of a constant field.
	*
	* @return the text of a Java language expression whose value
	* is the value of the constant. The expression uses no identifiers
	* other than primitive literals. If the field is
	* not constant, returns null.
	*/
	@:overload @:public public function constantValueExpression() : String;
	
	/**
	* Return true if this field is included in the active set.
	*/
	@:overload @:public override public function isIncluded() : Bool;
	
	/**
	* Is this Doc item a field (but not an enum constant?
	*/
	@:overload @:public override public function isField() : Bool;
	
	/**
	* Is this Doc item an enum constant?
	* (For legacy doclets, return false.)
	*/
	@:overload @:public override public function isEnumConstant() : Bool;
	
	/**
	* Return true if this field is transient
	*/
	@:overload @:public public function isTransient() : Bool;
	
	/**
	* Return true if this field is volatile
	*/
	@:overload @:public public function isVolatile() : Bool;
	
	/**
	* Returns true if this field was synthesized by the compiler.
	*/
	@:overload @:public override public function isSynthetic() : Bool;
	
	/**
	* Return the serialField tags in this FieldDocImpl item.
	*
	* @return an array of <tt>SerialFieldTagImpl</tt> containing all
	*         <code>&#64serialField</code> tags.
	*/
	@:overload @:public public function serialFieldTags() : java.NativeArray<com.sun.javadoc.SerialFieldTag>;
	
	@:overload @:public override public function name() : String;
	
	@:overload @:public override public function qualifiedName() : String;
	
	/**
	* Return the source position of the entity, or null if
	* no position is available.
	*/
	@:overload @:public override public function position() : com.sun.javadoc.SourcePosition;
	
	
}
