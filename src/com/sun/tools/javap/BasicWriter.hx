package com.sun.tools.javap;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicWriter
{
	/*
	*  A writer similar to a PrintWriter but which does not hide exceptions.
	*  The standard print calls are line-buffered; report calls write messages directly.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload private function print(s : String) : Void;
	
	@:overload private function print(o : Dynamic) : Void;
	
	@:overload private function println() : Void;
	
	@:overload private function println(s : String) : Void;
	
	@:overload private function println(o : Dynamic) : Void;
	
	@:overload private function indent(delta : Int) : Void;
	
	@:overload private function tab() : Void;
	
	@:overload private function setPendingNewline(b : Bool) : Void;
	
	@:overload private function report(e : com.sun.tools.classfile.AttributeException) : String;
	
	@:overload private function report(e : com.sun.tools.classfile.ConstantPoolException) : String;
	
	@:overload private function report(e : com.sun.tools.classfile.DescriptorException) : String;
	
	@:overload private function report(msg : String) : String;
	
	@:overload private function space(w : Int) : String;
	
	private var messages : com.sun.tools.javap.Messages;
	
	
}
@:native('com$sun$tools$javap$BasicWriter$LineWriter') @:internal extern class BasicWriter_LineWriter
{
	@:overload private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload private function print(s : String) : Void;
	
	@:overload private function println() : Void;
	
	@:overload private function indent(delta : Int) : Void;
	
	@:overload private function tab() : Void;
	
	
}
