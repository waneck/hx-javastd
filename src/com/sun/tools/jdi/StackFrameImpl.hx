package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class StackFrameImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.StackFrame implements com.sun.tools.jdi.ThreadListener
{
	/*
	* ThreadListener implementation
	* Must be synchronized since we must protect against
	* sending defunct (isValid == false) stack ids to the back-end.
	*/
	@:overload public function threadResumable(action : com.sun.tools.jdi.ThreadAction) : Bool;
	
	/**
	* Return the frame location.
	* Need not be synchronized since it cannot be provably stale.
	*/
	@:overload public function location() : com.sun.jdi.Location;
	
	/**
	* Return the thread holding the frame.
	* Need not be synchronized since it cannot be provably stale.
	*/
	@:overload public function thread() : com.sun.jdi.ThreadReference;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function thisObject() : com.sun.jdi.ObjectReference;
	
	/**
	* Return the list of visible variable in the frame.
	* Need not be synchronized since it cannot be provably stale.
	*/
	@:overload public function visibleVariables() : java.util.List<com.sun.jdi.LocalVariable>;
	
	/**
	* Return a particular variable in the frame.
	* Need not be synchronized since it cannot be provably stale.
	*/
	@:overload public function visibleVariableByName(name : String) : com.sun.jdi.LocalVariable;
	
	@:overload public function getValue(variable : com.sun.jdi.LocalVariable) : com.sun.jdi.Value;
	
	@:overload public function getValues(variables : java.util.List<com.sun.jdi.LocalVariable>) : java.util.Map<com.sun.jdi.LocalVariable, com.sun.jdi.Value>;
	
	@:overload public function setValue(variableIntf : com.sun.jdi.LocalVariable, valueIntf : com.sun.jdi.Value) : Void;
	
	@:overload public function getArgumentValues() : java.util.List<com.sun.jdi.Value>;
	
	@:overload override public function toString() : String;
	
	
}
