package com.sun.corba.se.spi.orb;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class OperationFactory
{
	@:overload public static function maskErrorAction(op : com.sun.corba.se.spi.orb.Operation) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function indexAction(index : Int) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function identityAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function suffixAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function valueAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function booleanAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function integerAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function stringAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function classAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function setFlagAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function URLAction() : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function integerRangeAction(min : Int, max : Int) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function listAction(sep : String, act : com.sun.corba.se.spi.orb.Operation) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function sequenceAction(sep : String, actions : java.NativeArray<com.sun.corba.se.spi.orb.Operation>) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function compose(op1 : com.sun.corba.se.spi.orb.Operation, op2 : com.sun.corba.se.spi.orb.Operation) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function mapAction(op : com.sun.corba.se.spi.orb.Operation) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function mapSequenceAction(op : java.NativeArray<com.sun.corba.se.spi.orb.Operation>) : com.sun.corba.se.spi.orb.Operation;
	
	@:overload public static function convertIntegerToShort() : com.sun.corba.se.spi.orb.Operation;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$OperationBase') @:internal extern class OperationFactory_OperationBase implements com.sun.corba.se.spi.orb.Operation
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/** Apply some function to a value and return the result.
	*/
	@:overload public function operate(value : Dynamic) : Dynamic;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$MaskErrorAction') @:internal extern class OperationFactory_MaskErrorAction extends OperationFactory_OperationBase
{
	@:overload public function new(op : com.sun.corba.se.spi.orb.Operation) : Void;
	
	@:overload override public function operate(arg : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$IndexAction') @:internal extern class OperationFactory_IndexAction extends OperationFactory_OperationBase
{
	@:overload public function new(index : Int) : Void;
	
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$SuffixAction') @:internal extern class OperationFactory_SuffixAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$ValueAction') @:internal extern class OperationFactory_ValueAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$IdentityAction') @:internal extern class OperationFactory_IdentityAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$BooleanAction') @:internal extern class OperationFactory_BooleanAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$IntegerAction') @:internal extern class OperationFactory_IntegerAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$StringAction') @:internal extern class OperationFactory_StringAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$ClassAction') @:internal extern class OperationFactory_ClassAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$SetFlagAction') @:internal extern class OperationFactory_SetFlagAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$URLAction') @:internal extern class OperationFactory_URLAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$IntegerRangeAction') @:internal extern class OperationFactory_IntegerRangeAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$ListAction') @:internal extern class OperationFactory_ListAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$SequenceAction') @:internal extern class OperationFactory_SequenceAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$ComposeAction') @:internal extern class OperationFactory_ComposeAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$MapAction') @:internal extern class OperationFactory_MapAction extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$MapSequenceAction') @:internal extern class OperationFactory_MapSequenceAction extends OperationFactory_OperationBase
{
	@:overload public function new(op : java.NativeArray<com.sun.corba.se.spi.orb.Operation>) : Void;
	
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$corba$se$spi$orb$OperationFactory$ConvertIntegerToShort') @:internal extern class OperationFactory_ConvertIntegerToShort extends OperationFactory_OperationBase
{
	@:overload override public function operate(value : Dynamic) : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
