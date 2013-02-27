package com.sun.tools.classfile;
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
extern class EnclosingMethod_attribute extends com.sun.tools.classfile.Attribute
{
	@:overload public function new(constant_pool : com.sun.tools.classfile.ConstantPool, class_index : Int, method_index : Int) : Void;
	
	@:overload public function new(name_index : Int, class_index : Int, method_index : Int) : Void;
	
	@:overload public function getClassName(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload public function getMethodName(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload public function accept<R, D>(visitor : Visitor<R, D>, data : D) : R;
	
	public var class_index(default, null) : Int;
	
	public var method_index(default, null) : Int;
	
	
}