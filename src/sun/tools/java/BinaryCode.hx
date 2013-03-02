package sun.tools.java;
/*
* Copyright (c) 1995, 2003, Oracle and/or its affiliates. All rights reserved.
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
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class BinaryCode implements sun.tools.java.Constants
{
	/**
	* Construct the binary code from the code attribute
	*/
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>, cpool : sun.tools.java.BinaryConstantPool, env : sun.tools.java.Environment) : Void;
	
	/**
	* Accessors
	*/
	@:overload public function getExceptionHandlers() : java.NativeArray<sun.tools.java.BinaryExceptionHandler>;
	
	@:overload public function getCode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getMaxStack() : Int;
	
	@:overload public function getMaxLocals() : Int;
	
	@:overload public function getAttributes() : sun.tools.java.BinaryAttribute;
	
	/**
	* Load a binary class
	*/
	@:overload public static function load(bf : sun.tools.java.BinaryMember, cpool : sun.tools.java.BinaryConstantPool, env : sun.tools.java.Environment) : sun.tools.java.BinaryCode;
	
	
}
