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
extern class FSMImpl implements com.sun.corba.se.spi.orbutil.fsm.FSM
{
	/** Create an instance of an FSM using the StateEngine
	* in a particular start state.
	*/
	@:overload public function new(se : com.sun.corba.se.spi.orbutil.fsm.StateEngine, startState : com.sun.corba.se.spi.orbutil.fsm.State) : Void;
	
	@:overload public function new(se : com.sun.corba.se.spi.orbutil.fsm.StateEngine, startState : com.sun.corba.se.spi.orbutil.fsm.State, debug : Bool) : Void;
	
	/** Return the current state.
	*/
	@:overload public function getState() : com.sun.corba.se.spi.orbutil.fsm.State;
	
	/** Perform the transition for the given input in the current state.  This proceeds as follows:
	* <p>Let S be the current state of the FSM.
	* If there are guarded actions for S with input in, evaluate their guards successively until
	* all have been evaluted, or one returns a non-DISABLED Result.
	* <ol>
	* <li>If a DEFERED result is returned, retry the input
	* <li>If a ENABLED result is returned, the action for the guarded action
	* is the current action
	* <li>Otherwise there is no enabled action.  If S has a default action and next state, use them; otherwise
	* use the state engine default action (the next state is always the current state).
	* </ol>
	* After the action is available, the transition proceeds as follows:
	* <ol>
	* <li>If the next state is not the current state, execute the current state postAction method.
	* <li>Execute the action.
	* <li>If the next state is not the current state, execute the next state preAction method.
	* <li>Set the current state to the next state.
	* </ol>
	*/
	@:overload public function doIt(_in : com.sun.corba.se.spi.orbutil.fsm.Input) : Void;
	
	@:overload public function internalSetState(nextState : com.sun.corba.se.spi.orbutil.fsm.State) : Void;
	
	
}
