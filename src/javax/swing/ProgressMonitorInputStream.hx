package javax.swing;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class ProgressMonitorInputStream extends java.io.FilterInputStream
{
	/**
	* Constructs an object to monitor the progress of an input stream.
	*
	* @param message Descriptive text to be placed in the dialog box
	*                if one is popped up.
	* @param parentComponent The component triggering the operation
	*                        being monitored.
	* @param in The input stream to be monitored.
	*/
	@:overload @:public public function new(parentComponent : java.awt.Component, message : Dynamic, _in : java.io.InputStream) : Void;
	
	/**
	* Get the ProgressMonitor object being used by this stream. Normally
	* this isn't needed unless you want to do something like change the
	* descriptive text partway through reading the file.
	* @return the ProgressMonitor object used by this object
	*/
	@:overload @:public public function getProgressMonitor() : javax.swing.ProgressMonitor;
	
	/**
	* Overrides <code>FilterInputStream.read</code>
	* to update the progress monitor after the read.
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Overrides <code>FilterInputStream.read</code>
	* to update the progress monitor after the read.
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Overrides <code>FilterInputStream.read</code>
	* to update the progress monitor after the read.
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Overrides <code>FilterInputStream.skip</code>
	* to update the progress monitor after the skip.
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Overrides <code>FilterInputStream.close</code>
	* to close the progress monitor as well as the stream.
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Overrides <code>FilterInputStream.reset</code>
	* to reset the progress monitor as well as the stream.
	*/
	@:overload @:public @:synchronized override public function reset() : Void;
	
	
}
