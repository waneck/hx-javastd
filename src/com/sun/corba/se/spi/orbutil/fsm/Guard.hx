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
/**
*
* @author Ken Cavanaugh
*/
extern interface Guard
{
	/** Called by the state engine to determine whether a
	* transition is enabled, defered, or disabled.
	* The result is interpreted as follows:
	* <ul>
	* <li>ENABLED if the transition is ready to proceed
	* <li>DISABLED if the transition is not ready to proceed
	* <li>DEFERED if the action associated with the transition
	* is to be deferred.  This means that the input will not be
	* acted upon, but rather it will be saved for later execution.
	* Typically this is implemented using a CondVar wait, and the
	* blocked thread represents the defered input.  The defered
	* input is retried when the thread runs again.
	* </ul>
	*
	* @param FSM fsm is the state machine causing this action.
	* @param Input in is the input that caused the transition.
	*/
	@:overload @:public public function evaluate(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	
}
@:native('com$sun$corba$se$spi$orbutil$fsm$Guard$Complement') extern class Guard_Complement extends com.sun.corba.se.spi.orbutil.fsm.GuardBase
{
	@:overload @:public public function new(guard : com.sun.corba.se.spi.orbutil.fsm.GuardBase) : Void;
	
	@:overload @:public public function evaluate(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM, _in : com.sun.corba.se.spi.orbutil.fsm.Input) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	
}
@:native('com$sun$corba$se$spi$orbutil$fsm$Guard$Result') extern class Guard_Result
{
	@:overload @:public @:static public static function convert(res : Bool) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	@:overload @:public public function complement() : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	@:overload @:public public function toString() : String;
	
	@:public @:static @:final public static var ENABLED(default, null) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	@:public @:static @:final public static var DISABLED(default, null) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	@:public @:static @:final public static var DEFERED(default, null) : com.sun.corba.se.spi.orbutil.fsm.Guard.Guard_Result;
	
	
}
