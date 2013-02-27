package com.sun.corba.se.spi.orbutil.fsm;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class TestInput
{
	@:overload public function toString() : String;
	
	@:overload public function getInput() : com.sun.corba.se.spi.orbutil.fsm.Input;
	
	
}
@:internal extern class TestAction1 implements com.sun.corba.se.spi.orbutil.fsm.Action
{
	@:overload public function doIt(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : Void;
	
	@:overload public function new(oldState : com.sun.corba.se.spi.orbutil.fsm.State, label : com.sun.corba.se.spi.orbutil.fsm.Input, newState : com.sun.corba.se.spi.orbutil.fsm.State) : Void;
	
	
}
@:internal extern class TestAction2 implements com.sun.corba.se.spi.orbutil.fsm.Action
{
	@:overload public function doIt(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : Void;
	
	@:overload public function new(oldState : com.sun.corba.se.spi.orbutil.fsm.State, newState : com.sun.corba.se.spi.orbutil.fsm.State) : Void;
	
	
}
@:internal extern class TestAction3 implements com.sun.corba.se.spi.orbutil.fsm.Action
{
	@:overload public function doIt(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : Void;
	
	@:overload public function new(oldState : com.sun.corba.se.spi.orbutil.fsm.State, label : com.sun.corba.se.spi.orbutil.fsm.Input) : Void;
	
	
}
@:internal extern class NegateGuard implements com.sun.corba.se.spi.orbutil.fsm.Guard
{
	@:overload public function new(guard : com.sun.corba.se.spi.orbutil.fsm.Guard) : Void;
	
	@:overload public function evaluate(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	
}
@:internal extern class MyFSM extends com.sun.corba.se.spi.orbutil.fsm.FSMImpl
{
	@:overload public function new(se : com.sun.corba.se.spi.orbutil.fsm.StateEngine) : Void;
	
	public var counter : Int;
	
	
}
extern class FSMTest
{
	public static var STATE1(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var STATE2(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var STATE3(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var STATE4(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var INPUT1(default, null) : com.sun.corba.se.spi.orbutil.fsm.Input;
	
	public static var INPUT2(default, null) : com.sun.corba.se.spi.orbutil.fsm.Input;
	
	public static var INPUT3(default, null) : com.sun.corba.se.spi.orbutil.fsm.Input;
	
	public static var INPUT4(default, null) : com.sun.corba.se.spi.orbutil.fsm.Input;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
