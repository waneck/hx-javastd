package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Reader for a package file.
*
* @see PackageWriter
* @author John Rose
*/
@:internal extern class PackageReader extends com.sun.java.util.jar.pack.BandStructure
{
	@:overload private function getCPIndex(tag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	
}
/** A buffered input stream which is careful not to
*  read its underlying stream ahead of a given mark,
*  called the 'readLimit'.  This property declares
*  the maximum number of characters that future reads
*  can consume from the underlying stream.
*/
@:native('com$sun$java$util$jar$pack$PackageReader$LimitedBuffer') @:internal extern class PackageReader_LimitedBuffer extends java.io.BufferedInputStream
{
	@:overload public function atLimit() : Bool;
	
	@:overload public function getBytesServed() : haxe.Int64;
	
	@:overload public function setReadLimit(newLimit : haxe.Int64) : Void;
	
	@:overload public function getReadLimit() : haxe.Int64;
	
	@:overload public function read() : Int;
	
	@:overload public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload public function skip(n : haxe.Int64) : haxe.Int64;
	
	
}
