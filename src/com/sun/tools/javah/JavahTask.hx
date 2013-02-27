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
extern class JavahTask implements com.sun.tools.javah.NativeHeaderTool.NativeHeaderTool_NativeHeaderTask
{
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	@:overload public function setLog(log : java.io.PrintWriter) : Void;
	
	@:overload public function setLog(s : java.io.OutputStream) : Void;
	
	@:overload public function setDiagnosticListener(dl : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>) : Void;
	
	@:overload public function setDiagnosticListener(s : java.io.OutputStream) : Void;
	
	@:overload public function handleOptions(args : java.NativeArray<String>) : Void;
	
	@:overload public function call() : Null<Bool>;
	
	@:overload public function run() : Bool;
	
	
}
/**
* Javah generates support files for native methods.
* Parse commandline options & Invokes javadoc to execute those commands.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*
* @author Sucheta Dambalkar
* @author Jonathan Gibbons
*/
@:native('com$sun$tools$javah$JavahTask$BadArgs') extern class JavahTask_BadArgs extends java.lang.Exception
{
	
}
@:native('com$sun$tools$javah$JavahTask$Option') @:internal extern class JavahTask_Option
{
	
}
@:native('com$sun$tools$javah$JavahTask$HiddenOption') @:internal extern class JavahTask_HiddenOption extends JavahTask_Option
{
	
}
@:native('com$sun$tools$javah$JavahTask$JavahProcessor') @:internal extern class JavahTask_JavahProcessor extends javax.annotation.processing.AbstractProcessor
{
	@:overload override public function getSupportedSourceVersion() : javax.lang.model.SourceVersion;
	
	@:overload override public function init(pEnv : javax.annotation.processing.ProcessingEnvironment) : Void;
	
	@:overload override public function process(annotations : java.util.Set<javax.lang.model.element.TypeElement>, roundEnv : javax.annotation.processing.RoundEnvironment) : Bool;
	
	
}
