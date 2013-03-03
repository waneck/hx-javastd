package java.awt;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SequencedEvent extends java.awt.AWTEvent implements java.awt.ActiveEvent
{
	/**
	* Constructs a new SequencedEvent which will dispatch the specified
	* nested event.
	*
	* @param nested the AWTEvent which this SequencedEvent's dispatch()
	*        method will dispatch
	*/
	@:overload @:public public function new(nested : java.awt.AWTEvent) : Void;
	
	/**
	* Dispatches the nested event after all previous nested events have been
	* dispatched or disposed. If this method is invoked before all previous nested events
	* have been dispatched, then this method blocks until such a point is
	* reached.
	* While waiting disposes nested events to disposed AppContext
	*
	* NOTE: Locking protocol.  Since dispose() can get EventQueue lock,
	* dispatch() shall never call dispose() while holding the lock on the list,
	* as EventQueue lock is held during dispatching.  The locks should be acquired
	* in the same order.
	*/
	@:overload @:public @:final public function dispatch() : Void;
	
	/**
	* Sequenced events are dispatched in order, so we cannot dispatch
	* until we are the first sequenced event in the queue (i.e. it's our
	* turn).  But while we wait for our turn to dispatch, the event
	* could have been disposed for a number of reasons.
	*/
	@:overload @:public @:final public function isFirstOrDisposed() : Bool;
	
	
}
