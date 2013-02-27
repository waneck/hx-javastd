package java.awt;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface KeyEventDispatcher
{
	/**
	* This method is called by the current KeyboardFocusManager requesting
	* that this KeyEventDispatcher dispatch the specified event on its behalf.
	* This KeyEventDispatcher is free to retarget the event, consume it,
	* dispatch it itself, or make other changes. This capability is typically
	* used to deliver KeyEvents to Components other than the focus owner. This
	* can be useful when navigating children of non-focusable Windows in an
	* accessible environment, for example. Note that if a KeyEventDispatcher
	* dispatches the KeyEvent itself, it must use <code>redispatchEvent</code>
	* to prevent the current KeyboardFocusManager from recursively requesting
	* that this KeyEventDispatcher dispatch the event again.
	* <p>
	* If an implementation of this method returns <code>false</code>, then
	* the KeyEvent is passed to the next KeyEventDispatcher in the chain,
	* ending with the current KeyboardFocusManager. If an implementation
	* returns <code>true</code>, the KeyEvent is assumed to have been
	* dispatched (although this need not be the case), and the current
	* KeyboardFocusManager will take no further action with regard to the
	* KeyEvent. In such a case,
	* <code>KeyboardFocusManager.dispatchEvent</code> should return
	* <code>true</code> as well. If an implementation consumes the KeyEvent,
	* but returns <code>false</code>, the consumed event will still be passed
	* to the next KeyEventDispatcher in the chain. It is important for
	* developers to check whether the KeyEvent has been consumed before
	* dispatching it to a target. By default, the current KeyboardFocusManager
	* will not dispatch a consumed KeyEvent.
	*
	* @param e the KeyEvent to dispatch
	* @return <code>true</code> if the KeyboardFocusManager should take no
	*         further action with regard to the KeyEvent; <code>false</code>
	*         otherwise
	* @see KeyboardFocusManager#redispatchEvent
	*/
	@:overload public function dispatchKeyEvent(e : java.awt.event.KeyEvent) : Bool;
	
	
}
