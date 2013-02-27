package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class ArrayTypeImpl extends com.sun.tools.jdi.ReferenceTypeImpl implements com.sun.jdi.ArrayType
{
	@:overload private function new(aVm : com.sun.jdi.VirtualMachine, aRef : haxe.Int64) : Void;
	
	@:overload public function newInstance(length : Int) : com.sun.jdi.ArrayReference;
	
	@:overload public function componentSignature() : String;
	
	@:overload public function componentTypeName() : String;
	
	@:overload override public function allMethods() : java.util.List<com.sun.jdi.Method>;
	
	@:overload public function componentType() : com.sun.jdi.Type;
	
	@:overload override public function toString() : String;
	
	/*
	* Save a pointless trip over the wire for these methods
	* which have undefined results for arrays.
	*/
	@:overload override public function isPrepared() : Bool;
	
	@:overload override public function isVerified() : Bool;
	
	@:overload override public function isInitialized() : Bool;
	
	@:overload override public function failedToInitialize() : Bool;
	
	@:overload override public function isAbstract() : Bool;
	
	/*
	* Defined always to be true for arrays
	*/
	@:overload override public function isFinal() : Bool;
	
	
}
