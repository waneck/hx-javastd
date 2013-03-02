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
* Represents a chunk of bytecodes.
* @author John Rose
*/
@:internal extern class Code extends com.sun.java.util.jar.pack.Attribute.Attribute_Holder
{
	@:overload public function new(m : com.sun.java.util.jar.pack.Package.Package_Class_Method) : Void;
	
	@:overload public function getMethod() : com.sun.java.util.jar.pack.Package.Package_Class_Method;
	
	@:overload public function thisClass() : com.sun.java.util.jar.pack.Package.Package_Class;
	
	@:overload public function getPackage() : com.sun.java.util.jar.pack.Package;
	
	@:overload public function getCPMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload public function trimToSize() : Void;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	/** Encode the given BCI as an instruction boundary number.
	*  For completeness, irregular (non-boundary) BCIs are
	*  encoded compactly immediately after the boundary numbers.
	*  This encoding is the identity mapping outside 0..length,
	*  and it is 1-1 everywhere.  All by itself this technique
	*  improved zipped rt.jar compression by 2.6%.
	*/
	@:overload public function encodeBCI(bci : Int) : Int;
	
	@:overload public function decodeBCI(bciCode : Int) : Int;
	
	@:overload public function finishRefs(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function getInt(pc : Int) : Int;
	
	@:overload public function getShort(pc : Int) : Int;
	
	@:overload public function getByte(pc : Int) : Int;
	
	
}
