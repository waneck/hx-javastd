package com.sun.tools.javah;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Gen
{
	/**
	* An abstraction for generating support files required by native methods.
	* Subclasses are for specific native interfaces. At the time of its
	* original writing, this interface is rich enough to support JNI and the
	* old 1.0-style native method interface.
	*
	* <p><b>This is NOT part of any supported API.
	* If you write code that depends on this, you do so at your own
	* risk.  This code and its internal interfaces are subject to change
	* or deletion without notice.</b></p>
	*
	* @author  Sucheta Dambalkar(Revised)
	*/
	private var lineSep : String;
	
	private var processingEnvironment : javax.annotation.processing.ProcessingEnvironment;
	
	private var types : javax.lang.model.util.Types;
	
	private var elems : javax.lang.model.util.Elements;
	
	private var mangler : com.sun.tools.javah.Mangle;
	
	private var util : com.sun.tools.javah.Util;
	
	@:overload private function new(util : com.sun.tools.javah.Util) : Void;
	
	/*
	* List of classes for which we must generate output.
	*/
	private var classes : java.util.Set<javax.lang.model.element.TypeElement>;
	
	/**
	* Override this abstract method, generating content for the named
	* class into the outputstream.
	*/
	@:overload @:abstract private function write(o : java.io.OutputStream, clazz : javax.lang.model.element.TypeElement) : Void;
	
	/**
	* Override this method to provide a list of #include statements
	* required by the native interface.
	*/
	@:overload @:abstract private function getIncludes() : String;
	
	/*
	* Output location.
	*/
	private var fileManager : javax.tools.JavaFileManager;
	
	private var outFile : javax.tools.JavaFileObject;
	
	@:overload public function setFileManager(fm : javax.tools.JavaFileManager) : Void;
	
	@:overload public function setOutFile(outFile : javax.tools.JavaFileObject) : Void;
	
	@:overload public function setClasses(classes : java.util.Set<javax.lang.model.element.TypeElement>) : Void;
	
	/*
	* Smartness with generated files.
	*/
	private var force : Bool;
	
	@:overload public function setForce(state : Bool) : Void;
	
	/**
	* We explicitly need to write ASCII files because that is what C
	* compilers understand.
	*/
	@:overload private function wrapWriter(o : java.io.OutputStream) : java.io.PrintWriter;
	
	/**
	* After initializing state of an instance, use this method to start
	* processing.
	*
	* Buffer size chosen as an approximation from a single sampling of:
	*         expr `du -sk` / `ls *.h | wc -l`
	*/
	@:overload public function run() : Void;
	
	@:overload private function readBytes(_in : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function defineForStatic(c : javax.lang.model.element.TypeElement, f : javax.lang.model.element.VariableElement) : String;
	
	/*
	* Deal with the C pre-processor.
	*/
	@:overload private function cppGuardBegin() : String;
	
	@:overload private function cppGuardEnd() : String;
	
	@:overload private function guardBegin(cname : String) : String;
	
	@:overload private function guardEnd(cname : String) : String;
	
	/*
	* File name and file preamble related operations.
	*/
	@:overload private function writeFileTop(o : java.io.OutputStream) : Void;
	
	@:overload private function baseFileName(className : java.lang.CharSequence) : String;
	
	@:overload private function getFileObject(className : java.lang.CharSequence) : javax.tools.FileObject;
	
	@:overload private function getFileSuffix() : String;
	
	
}
