package com.sun.tools.apt;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Main
{
	/** Command line interface.  If args is <tt>null</tt>, a
	* <tt>NullPointerException</tt> is thrown.
	* @param args   The command line parameters.
	*/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	/** Programatic interface.  If args is <tt>null</tt>, a
	* <tt>NullPointerException</tt> is thrown.
	* Output is directed to <tt>System.err</tt>.
	* @param args   The command line parameters.
	*/
	@:overload public static function process(args : java.NativeArray<String>) : Int;
	
	/** Programmatic interface.  If any argument
	* is <tt>null</tt>, a <tt>NullPointerException</tt> is thrown.
	* @param args   The command line parameters.
	* @param out    Where the tool's output is directed.
	*/
	@:overload public static function process(out : java.io.PrintWriter, args : java.NativeArray<String>) : Int;
	
	/** Programmatic interface.  If <tt>factory</tt> or <tt>args</tt>
	* is <tt>null</tt>, a <tt>NullPointerException</tt> is thrown.
	* The &quot;<tt>-factory</tt>&quot; and &quot;<tt>-factorypath</tt>&quot;
	* command line parameters are ignored by this entry point.
	* Output is directed to <tt>System.err</tt>.
	*
	* @param factory The annotation processor factory to use
	* @param args    The command line parameters.
	*/
	@:overload public static function process(factory : com.sun.mirror.apt.AnnotationProcessorFactory, args : java.NativeArray<String>) : Int;
	
	/** Programmatic interface.  If any argument
	* is <tt>null</tt>, a <tt>NullPointerException</tt> is thrown.
	* The &quot;<tt>-factory</tt>&quot; and &quot;<tt>-factorypath</tt>&quot;
	* command line parameters are ignored by this entry point.
	*
	* @param factory The annotation processor factory to use
	* @param args   The command line parameters.
	* @param out    Where the tool's output is directed.
	*/
	@:overload public static function process(factory : com.sun.mirror.apt.AnnotationProcessorFactory, out : java.io.PrintWriter, args : java.NativeArray<String>) : Int;
	
	
}
