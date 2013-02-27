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
extern class StateImpl extends com.sun.corba.se.impl.orbutil.fsm.NameBase implements com.sun.corba.se.spi.orbutil.fsm.State
{
	@:overload public function new(name : String) : Void;
	
	@:overload public function preAction(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM) : Void;
	
	@:overload public function postAction(fsm : com.sun.corba.se.spi.orbutil.fsm.FSM) : Void;
	
	@:overload public function getDefaultNextState() : com.sun.corba.se.spi.orbutil.fsm.State;
	
	@:overload public function setDefaultNextState(defaultNextState : com.sun.corba.se.spi.orbutil.fsm.State) : Void;
	
	@:overload public function getDefaultAction() : com.sun.corba.se.spi.orbutil.fsm.Action;
	
	@:overload public function setDefaultAction(defaultAction : com.sun.corba.se.spi.orbutil.fsm.Action) : Void;
	
	@:overload public function addGuardedAction(_in : com.sun.corba.se.spi.orbutil.fsm.Input, ga : com.sun.corba.se.impl.orbutil.fsm.GuardedAction) : Void;
	
	@:overload public function getGuardedActions(_in : com.sun.corba.se.spi.orbutil.fsm.Input) : java.util.Set<Dynamic>;
	
	
}