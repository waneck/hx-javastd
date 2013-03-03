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
extern class Attributes implements java.lang.Iterable<com.sun.tools.classfile.Attribute>
{
	@:overload @:public public function new(constant_pool : com.sun.tools.classfile.ConstantPool, attrs : java.NativeArray<com.sun.tools.classfile.Attribute>) : Void;
	
	@:overload @:public public function iterator() : java.util.Iterator<com.sun.tools.classfile.Attribute>;
	
	@:overload @:public public function get(index : Int) : com.sun.tools.classfile.Attribute;
	
	@:overload @:public public function get(name : String) : com.sun.tools.classfile.Attribute;
	
	@:overload @:public public function getIndex(constant_pool : com.sun.tools.classfile.ConstantPool, name : String) : Int;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function byteLength() : Int;
	
	@:public @:final public var attrs(default, null) : java.NativeArray<com.sun.tools.classfile.Attribute>;
	
	@:public @:final public var map(default, null) : java.util.Map<String, com.sun.tools.classfile.Attribute>;
	
	
}
