package sun.tools.jar;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
	@:overload @:public public function new(out : java.io.PrintStream, err : java.io.PrintStream, program : String) : Void;
	
	/**
	* Starts main program with the specified arguments.
	*/
	@:overload @:public @:synchronized public function run(args : java.NativeArray<String>) : Bool;
	
	/**
	* Print an output message; like verbose output and the like
	*/
	@:overload @:protected private function output(s : String) : Void;
	
	/**
	* Print an error mesage; like something is broken
	*/
	@:overload @:protected private function error(s : String) : Void;
	
	/**
	* Main routine to start program.
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
/**
* An OutputStream that doesn't send its output anywhere, (but could).
* It's here to find the CRC32 of an input file, necessary for STORED
* mode in ZIP.
*/
@:native('sun$tools$jar$Main$CRC32OutputStream') @:internal extern class Main_CRC32OutputStream extends java.io.OutputStream
{
	@:overload @:public override public function write(r : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Updates a ZipEntry which describes the data read by this
	* output stream, in STORED mode.
	*/
	@:overload @:public public function updateEntry(e : java.util.zip.ZipEntry) : Void;
	
	
}
