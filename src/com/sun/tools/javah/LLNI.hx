package com.sun.tools.javah;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class LLNI extends com.sun.tools.javah.Gen
{
	/*
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own
	* risk.  This code and its internal interfaces are subject to change
	* or deletion without notice.</b></p>
	*
	* @author  Sucheta Dambalkar(Revised)
	*/
	private var innerDelim(default, null) : java.StdTypes.Char16;
	
	/* For inner classes */
	private var doneHandleTypes : java.util.Set<String>;
	
	@:overload private function getIncludes() : String;
	
	@:overload private function write(o : java.io.OutputStream, clazz : javax.lang.model.element.TypeElement) : Void;
	
	@:overload private function generateDeclsForClass(pw : java.io.PrintWriter, clazz : javax.lang.model.element.TypeElement, cname : String) : Void;
	
	@:overload private function genHandleType(pw : java.io.PrintWriter, clazzname : String) : Void;
	
	@:overload private function mangleClassName(s : String) : String;
	
	@:overload private function forwardDecls(pw : java.io.PrintWriter, clazz : javax.lang.model.element.TypeElement) : Void;
	
	@:overload private function forwardDeclsFromSig(pw : java.io.PrintWriter, sig : String) : Void;
	
	@:overload private function structSectionForClass(pw : java.io.PrintWriter, jclazz : javax.lang.model.element.TypeElement, cname : String) : Void;
	
	/* OVERRIDE: This method handles instance fields */
	@:overload private function addStructMember(member : javax.lang.model.element.VariableElement, cname : String, padWord : Bool) : String;
	
	/*
	* This method only handles static final fields.
	*/
	@:overload private function addStaticStructMember(field : javax.lang.model.element.VariableElement, cname : String) : String;
	
	@:overload private function methodSectionForClass(pw : java.io.PrintWriter, clazz : javax.lang.model.element.TypeElement, cname : String) : Void;
	
	@:overload private function methodDecls(clazz : javax.lang.model.element.TypeElement, cname : String) : String;
	
	@:overload private function methodDecl(method : javax.lang.model.element.ExecutableElement, clazz : javax.lang.model.element.TypeElement, cname : String) : String;
	
	@:overload @:final private function needLongName(method : javax.lang.model.element.ExecutableElement, clazz : javax.lang.model.element.TypeElement) : Bool;
	
	@:overload @:final private function jniMethodName(method : javax.lang.model.element.ExecutableElement, cname : String, longName : Bool) : String;
	
	@:overload @:final private function jniType(t : javax.lang.model.type.TypeMirror) : String;
	
	@:overload private function llniType(t : javax.lang.model.type.TypeMirror, handleize : Bool, longDoubleOK : Bool) : String;
	
	@:overload @:final private function cRcvrDecl(field : javax.lang.model.element.Element, cname : String) : String;
	
	@:overload private function maskName(s : String) : String;
	
	@:overload private function llniFieldName(field : javax.lang.model.element.VariableElement) : String;
	
	@:overload @:final private function isLongOrDouble(t : javax.lang.model.type.TypeMirror) : Bool;
	
	/* Do unicode to ansi C identifier conversion.
	%%% This may not be right, but should be called more often. */
	@:overload @:final private function nameToIdentifier(name : String) : String;
	
	@:overload @:final private function isASCIILetterOrDigit(c : java.StdTypes.Char16) : Bool;
	
	
}
@:native('com$sun$tools$javah$LLNI$FieldDefsRes') @:internal extern class LLNI_FieldDefsRes
{
	public var className : String;
	
	/* Name of the current class. */
	public var parent : com.sun.tools.javah.LLNI.LLNI_FieldDefsRes;
	
	public var s : String;
	
	public var byteSize : Int;
	
	public var bottomMost : Bool;
	
	public var printedOne : Bool;
	
	
}
