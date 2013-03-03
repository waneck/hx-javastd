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
* A parsed bytecode instruction.
* Provides accessors to various relevant bits.
* @author John Rose
*/
@:internal extern class Instruction
{
	@:protected private var bytes : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var pc : Int;
	
	@:protected private var bc : Int;
	
	@:protected private var w : Int;
	
	@:protected private var length : Int;
	
	@:protected private var special : Bool;
	
	@:overload @:protected private function new(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, bc : Int, w : Int, length : Int) : Void;
	
	@:overload @:public public function getBC() : Int;
	
	@:overload @:public public function isWide() : Bool;
	
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getPC() : Int;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function getNextPC() : Int;
	
	@:overload @:public public function next() : com.sun.java.util.jar.pack.Instruction;
	
	@:overload @:public public function isNonstandard() : Bool;
	
	@:overload @:public public function setNonstandardLength(length : Int) : Void;
	
	/** A fake instruction at this pc whose next() will be at nextpc. */
	@:overload @:public public function forceNextPC(nextpc : Int) : com.sun.java.util.jar.pack.Instruction;
	
	@:overload @:public @:static public static function at(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int) : com.sun.java.util.jar.pack.Instruction;
	
	@:overload @:public @:static public static function at(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, reuse : com.sun.java.util.jar.pack.Instruction) : com.sun.java.util.jar.pack.Instruction;
	
	@:overload @:public public function getCPTag() : java.StdTypes.Int8;
	
	@:overload @:public public function getCPIndex() : Int;
	
	@:overload @:public public function setCPIndex(cpi : Int) : Void;
	
	@:overload @:public public function getCPRef(cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function getLocalSlot() : Int;
	
	@:overload @:public public function getBranchLabel() : Int;
	
	@:overload @:public public function setBranchLabel(targetPC : Int) : Void;
	
	@:overload @:public public function getConstant() : Int;
	
	@:overload @:public public function setConstant(con : Int) : Void;
	
	/** Two instructions are equal if they have the same bytes. */
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(that : com.sun.java.util.jar.pack.Instruction) : Bool;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function toString(cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : String;
	
	@:overload @:public public function getIntAt(off : Int) : Int;
	
	@:overload @:public public function getShortAt(off : Int) : Int;
	
	@:overload @:public public function getByteAt(off : Int) : Int;
	
	@:overload @:public @:static public static function getInt(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int) : Int;
	
	@:overload @:public @:static public static function getShort(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int) : Int;
	
	@:overload @:public @:static public static function getByte(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int) : Int;
	
	@:overload @:public @:static public static function setInt(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, x : Int) : Void;
	
	@:overload @:public @:static public static function setShort(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, x : Int) : Void;
	
	@:overload @:public @:static public static function setByte(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, x : Int) : Void;
	
	@:native('isNonstandard') @:overload @:public @:static public static function _isNonstandard(bc : Int) : Bool;
	
	@:overload @:public @:static public static function opLength(bc : Int) : Int;
	
	@:overload @:public @:static public static function opWideLength(bc : Int) : Int;
	
	@:overload @:public @:static public static function isLocalSlotOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function isBranchOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function isCPRefOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function getCPRefOpTag(bc : Int) : java.StdTypes.Int8;
	
	@:overload @:public @:static public static function isFieldOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function isInvokeInitOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function isSelfLinkerOp(bc : Int) : Bool;
	
	@:overload @:public @:static public static function byteName(bc : Int) : String;
	
	@:overload @:public @:static public static function opcodeChecker(code : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Instruction$Switch') extern class Instruction_Switch extends com.sun.java.util.jar.pack.Instruction
{
	@:overload @:public @:abstract public function getCaseCount() : Int;
	
	@:overload @:public @:abstract public function getCaseValue(n : Int) : Int;
	
	@:overload @:public @:abstract public function getCaseLabel(n : Int) : Int;
	
	@:overload @:public @:abstract public function setCaseCount(caseCount : Int) : Void;
	
	@:overload @:public @:abstract public function setCaseValue(n : Int, value : Int) : Void;
	
	@:overload @:public @:abstract public function setCaseLabel(n : Int, targetPC : Int) : Void;
	
	@:overload @:protected @:abstract private function getLength(caseCount : Int) : Int;
	
	@:overload @:public public function getDefaultLabel() : Int;
	
	@:overload @:public public function setDefaultLabel(targetPC : Int) : Void;
	
	@:protected private var apc : Int;
	
	@:overload @:protected private function intAt(n : Int) : Int;
	
	@:overload @:protected private function setIntAt(n : Int, x : Int) : Void;
	
	@:overload @:protected private function new(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int, bc : Int) : Void;
	
	@:overload @:public public function getAlignedPC() : Int;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public @:static public static function alignPC(apc : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$Instruction$TableSwitch') extern class Instruction_TableSwitch extends com.sun.java.util.jar.pack.Instruction.Instruction_Switch
{
	@:overload @:public public function getLowCase() : Int;
	
	@:overload @:public public function getHighCase() : Int;
	
	@:overload @:public override public function getCaseCount() : Int;
	
	@:overload @:public override public function getCaseValue(n : Int) : Int;
	
	@:overload @:public override public function getCaseLabel(n : Int) : Int;
	
	@:overload @:public public function setLowCase(val : Int) : Void;
	
	@:overload @:public public function setHighCase(val : Int) : Void;
	
	@:overload @:public override public function setCaseLabel(n : Int, tpc : Int) : Void;
	
	@:overload @:public override public function setCaseCount(caseCount : Int) : Void;
	
	@:overload @:public override public function setCaseValue(n : Int, val : Int) : Void;
	
	@:overload @:protected override private function getLength(caseCount : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$Instruction$LookupSwitch') extern class Instruction_LookupSwitch extends com.sun.java.util.jar.pack.Instruction.Instruction_Switch
{
	@:overload @:public override public function getCaseCount() : Int;
	
	@:overload @:public override public function getCaseValue(n : Int) : Int;
	
	@:overload @:public override public function getCaseLabel(n : Int) : Int;
	
	@:overload @:public override public function setCaseCount(caseCount : Int) : Void;
	
	@:overload @:public override public function setCaseValue(n : Int, val : Int) : Void;
	
	@:overload @:public override public function setCaseLabel(n : Int, tpc : Int) : Void;
	
	@:overload @:protected override private function getLength(caseCount : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$Instruction$FormatException') @:internal extern class Instruction_FormatException extends java.io.IOException
{
	
}
