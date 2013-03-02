package com.sun.codemodel.internal.fmt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JStaticJavaFile extends com.sun.codemodel.internal.JResourceFile
{
	@:overload public function new(_pkg : com.sun.codemodel.internal.JPackage, className : String, _resourceName : String) : Void;
	
	@:overload public function new(_pkg : com.sun.codemodel.internal.JPackage, _className : String, _source : java.net.URL, _filter : com.sun.codemodel.internal.fmt.JStaticJavaFile.JStaticJavaFile_LineFilter) : Void;
	
	/**
	* Returns a class object that represents a statically generated code.
	*/
	@:overload @:final public function getJClass() : com.sun.codemodel.internal.JClass;
	
	@:overload private function isResource() : Bool;
	
	@:overload private function build(os : java.io.OutputStream) : Void;
	
	
}
/**
* Filter that alters the Java source code.
* <p>
* By implementing this interface, derived classes
* can modify the Java source file before it's written out.
*/
@:native('com$sun$codemodel$internal$fmt$JStaticJavaFile$LineFilter') extern interface JStaticJavaFile_LineFilter
{
	/**
	* @param line
	*      a non-null valid String that corresponds to one line.
	*      No '\n' included.
	* @return
	*      null to strip the line off. Otherwise the returned
	*      String will be written out. Do not add '\n' at the end
	*      of this string.
	*
	* @exception ParseException
	*      when for some reason there's an error in the line.
	*/
	@:overload public function process(line : String) : String;
	
	
}
/**
* A {@link LineFilter} that combines two {@link LineFilter}s.
*/
@:native('com$sun$codemodel$internal$fmt$JStaticJavaFile$ChainFilter') extern class JStaticJavaFile_ChainFilter implements com.sun.codemodel.internal.fmt.JStaticJavaFile.JStaticJavaFile_LineFilter
{
	@:overload public function new(first : com.sun.codemodel.internal.fmt.JStaticJavaFile.JStaticJavaFile_LineFilter, second : com.sun.codemodel.internal.fmt.JStaticJavaFile.JStaticJavaFile_LineFilter) : Void;
	
	@:overload public function process(line : String) : String;
	
	
}
@:native('com$sun$codemodel$internal$fmt$JStaticJavaFile$JStaticClass') @:internal extern class JStaticJavaFile_JStaticClass extends com.sun.codemodel.internal.JClass
{
	@:overload public function name() : String;
	
	@:overload public function fullName() : String;
	
	@:overload public function _package() : com.sun.codemodel.internal.JPackage;
	
	@:overload public function _extends() : com.sun.codemodel.internal.JClass;
	
	@:overload public function _implements() : java.util.Iterator<com.sun.codemodel.internal.JClass>;
	
	@:overload public function isInterface() : Bool;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload public function typeParams() : java.NativeArray<com.sun.codemodel.internal.JTypeVar>;
	
	@:overload private function substituteParams(variables : java.NativeArray<com.sun.codemodel.internal.JTypeVar>, bindings : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	
}
