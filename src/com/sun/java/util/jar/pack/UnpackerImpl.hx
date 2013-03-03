package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class UnpackerImpl extends com.sun.java.util.jar.pack.TLGlobals implements java.util.jar.Pack200.Pack200_Unpacker
{
	/**
	* Register a listener for changes to options.
	* @param listener  An object to be invoked when a property is changed.
	*/
	@:overload @:public public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a listener for the PropertyChange event.
	* @param listener  The PropertyChange listener to be removed.
	*/
	@:overload @:public public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Get the set of options for the pack and unpack engines.
	* @return A sorted association of option key strings to option values.
	*/
	@:overload @:public public function properties() : java.util.SortedMap<String, String>;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Takes a packed-stream InputStream, and writes to a JarOutputStream. Internally
	* the entire buffer must be read, it may be more efficient to read the packed-stream
	* to a file and pass the File object, in the alternate method described below.
	* <p>
	* Closes its input but not its output.  (The output can accumulate more elements.)
	* @param in an InputStream.
	* @param out a JarOutputStream.
	* @exception IOException if an error is encountered.
	*/
	@:overload @:public @:synchronized public function unpack(_in : java.io.InputStream, out : java.util.jar.JarOutputStream) : Void;
	
	/**
	* Takes an input File containing the pack file, and generates a JarOutputStream.
	* <p>
	* Does not close its output.  (The output can accumulate more elements.)
	* @param in a File.
	* @param out a JarOutputStream.
	* @exception IOException if an error is encountered.
	*/
	@:overload @:public @:synchronized public function unpack(_in : java.io.File, out : java.util.jar.JarOutputStream) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$UnpackerImpl$DoUnpack') @:internal extern class UnpackerImpl_DoUnpack
{
	@:overload @:public public function run(_in : java.io.BufferedInputStream, out : java.util.jar.JarOutputStream) : Void;
	
	
}
