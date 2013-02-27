package com.sun.corba.se.impl.oa.poa;
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
extern class AOMEntry extends com.sun.corba.se.spi.orbutil.fsm.FSMImpl
{
	public static var INVALID(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var INCARN(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var VALID(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var ETHP(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var ETH(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	public static var DESTROYED(default, null) : com.sun.corba.se.spi.orbutil.fsm.State;
	
	@:overload public function new(poa : com.sun.corba.se.impl.oa.poa.POAImpl) : Void;
	
	@:overload public function startEtherealize(etherealizer : java.lang.Thread) : Void;
	
	@:overload public function etherealizeComplete() : Void;
	
	@:overload public function incarnateComplete() : Void;
	
	@:overload public function incarnateFailure() : Void;
	
	@:overload public function activateObject() : Void;
	
	@:overload public function enter() : Void;
	
	@:overload public function exit() : Void;
	
	
}
@:native('com$sun$corba$se$impl$oa$poa$AOMEntry$CounterGuard') @:internal extern class AOMEntry_CounterGuard extends com.sun.corba.se.spi.orbutil.fsm.GuardBase
{
	@:overload public function new(value : Int) : Void;
	
	@:overload override public function evaluate(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	
}
