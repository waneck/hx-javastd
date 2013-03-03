package com.sun.tools.classfile;
/*
* Copyright (c) 2007, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Descriptor
{
	@:overload @:public public function new(cr : com.sun.tools.classfile.ClassReader) : Void;
	
	@:overload @:public public function new(index : Int) : Void;
	
	@:overload @:public public function getValue(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload @:public public function getParameterCount(constant_pool : com.sun.tools.classfile.ConstantPool) : Int;
	
	@:overload @:public public function getParameterTypes(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload @:public public function getReturnType(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:overload @:public public function getFieldType(constant_pool : com.sun.tools.classfile.ConstantPool) : String;
	
	@:public @:final public var index(default, null) : Int;
	
	
}
/**
* See JVMS, section 4.4.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$classfile$Descriptor$InvalidDescriptor') extern class Descriptor_InvalidDescriptor extends com.sun.tools.classfile.DescriptorException
{
	@:overload @:public override public function getMessage() : String;
	
	@:public @:final public var desc(default, null) : String;
	
	@:public @:final public var index(default, null) : Int;
	
	
}
