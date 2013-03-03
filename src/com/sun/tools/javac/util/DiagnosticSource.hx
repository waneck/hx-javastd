package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A simple abstraction of a source file, as needed for use in a diagnostic message.
* Provides access to the line and position in a line for any given character offset.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class DiagnosticSource
{
	/* constant DiagnosticSource to be used when sourcefile is missing */
	@:public @:static @:final public static var NO_SOURCE(default, null) : com.sun.tools.javac.util.DiagnosticSource;
	
	@:overload @:public public function new(fo : javax.tools.JavaFileObject, log : com.sun.tools.javac.util.AbstractLog) : Void;
	
	/** Return the underlying file object handled by this
	*  DiagnosticSource object.
	*/
	@:overload @:public public function getFile() : javax.tools.JavaFileObject;
	
	/** Return the one-based line number associated with a given pos
	* for the current source file.  Zero is returned if no line exists
	* for the given position.
	*/
	@:overload @:public public function getLineNumber(pos : Int) : Int;
	
	/** Return the one-based column number associated with a given pos
	* for the current source file.  Zero is returned if no column exists
	* for the given position.
	*/
	@:overload @:public public function getColumnNumber(pos : Int, expandTabs : Bool) : Int;
	
	/** Return the content of the line containing a given pos.
	*/
	@:overload @:public public function getLine(pos : Int) : String;
	
	@:overload @:public public function getEndPosTable() : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>;
	
	@:overload @:public public function setEndPosTable(t : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>) : Void;
	
	/** Find the line in the buffer that contains the current position
	* @param pos      Character offset into the buffer
	*/
	@:overload @:protected private function findLine(pos : Int) : Bool;
	
	@:overload @:protected private function initBuf(fileObject : javax.tools.JavaFileObject) : java.NativeArray<java.StdTypes.Char16>;
	
	/** The underlying file object. */
	@:protected private var fileObject : javax.tools.JavaFileObject;
	
	@:protected private var endPosTable : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>;
	
	/** A soft reference to the content of the file object. */
	@:protected private var refBuf : java.lang.ref.SoftReference<java.NativeArray<java.StdTypes.Char16>>;
	
	/** A temporary hard reference to the content of the file object. */
	@:protected private var buf : java.NativeArray<java.StdTypes.Char16>;
	
	/** The length of the content. */
	@:protected private var bufLen : Int;
	
	/** The start of a line found by findLine. */
	@:protected private var lineStart : Int;
	
	/** The line number of a line found by findLine. */
	@:protected private var line : Int;
	
	/** A log for reporting errors, such as errors accessing the content. */
	@:protected private var log : com.sun.tools.javac.util.AbstractLog;
	
	
}
