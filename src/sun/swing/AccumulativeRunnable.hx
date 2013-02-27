package sun.swing;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AccumulativeRunnable<T> implements java.lang.Runnable
{
	/**
	* Equivalent to {@code Runnable.run} method with the
	* accumulated arguments to process.
	*
	* @param args accumulated argumets to process.
	*/
	@:overload @:abstract private function run(args : java.util.List<T>) : Void;
	
	/**
	* {@inheritDoc}
	*
	* <p>
	* This implementation calls {@code run(List<T> args)} mehtod
	* with the list of accumulated arguments.
	*/
	@:overload @:final public function run() : Void;
	
	/**
	* appends arguments and sends this {@cod Runnable} for the
	* execution if needed.
	* <p>
	* This implementation uses {@see #submit} to send this
	* {@code Runnable} for execution.
	* @param args the arguments to accumulate
	*/
	@:overload @:final @:synchronized public function add(args : java.NativeArray<T>) : Void;
	
	/**
	* Sends this {@code Runnable} for the execution
	*
	* <p>
	* This method is to be executed only from {@code add} method.
	*
	* <p>
	* This implementation uses {@code SwingWorker.invokeLater}.
	*/
	@:overload private function submit() : Void;
	
	
}
