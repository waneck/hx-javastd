package java.awt;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WaitDispatchSupport implements java.awt.SecondaryLoop
{
	/**
	* Creates a {@code WaitDispatchSupport} instance to
	* serve the given event dispatch thread.
	*
	* @param dispatchThread An event dispatch thread that
	*        should not stop dispatching events while waiting
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(dispatchThread : java.awt.EventDispatchThread) : Void;
	
	/**
	* Creates a {@code WaitDispatchSupport} instance to
	* serve the given event dispatch thread.
	*
	* @param dispatchThread An event dispatch thread that
	*        should not stop dispatching events while waiting
	* @param extCondition A conditional object used to determine
	*        if the loop should be terminated
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(dispatchThread : java.awt.EventDispatchThread, extCond : java.awt.Conditional) : Void;
	
	/**
	* Creates a {@code WaitDispatchSupport} instance to
	* serve the given event dispatch thread.
	* <p>
	* The {@link EventFilter} is set on the {@code dispatchThread}
	* while waiting. The filter is removed on completion of the
	* waiting process.
	* <p>
	*
	*
	* @param dispatchThread An event dispatch thread that
	*        should not stop dispatching events while waiting
	* @param filter {@code EventFilter} to be set
	* @param interval A time interval to wait for. Note that
	*        when the waiting process takes place on EDT
	*        there is no guarantee to stop it in the given time
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(dispatchThread : java.awt.EventDispatchThread, extCondition : java.awt.Conditional, filter : java.awt.EventFilter, interval : haxe.Int64) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function enter() : Bool;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function exit() : Bool;
	
	
}
