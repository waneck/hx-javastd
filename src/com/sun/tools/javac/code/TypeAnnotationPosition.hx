package com.sun.tools.javac.code;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
/** A type annotation position.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TypeAnnotationPosition
{
	public var type : com.sun.tools.javac.code.TargetType;
	
	public var location : com.sun.tools.javac.util.List<Null<Int>>;
	
	public var pos : Int;
	
	public var isValidOffset : Bool;
	
	public var offset : Int;
	
	public var lvarOffset : java.NativeArray<Int>;
	
	public var lvarLength : java.NativeArray<Int>;
	
	public var lvarIndex : java.NativeArray<Int>;
	
	public var bound_index : Int;
	
	public var parameter_index : Int;
	
	public var type_index : Int;
	
	public var wildcard_position : TypeAnnotationPosition;
	
	@:overload public function toString() : String;
	
	/**
	* Indicates whether the target tree of the annotation has been optimized
	* away from classfile or not.
	* @return true if the target has not been optimized away
	*/
	@:overload public function emitToClassfile() : Bool;
	
	
}
