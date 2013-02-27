package sun.awt;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class CausedFocusEvent extends java.awt.event.FocusEvent
{
	@:overload public function getCause() : CausedFocusEvent_Cause;
	
	@:overload override public function toString() : String;
	
	@:overload public function new(source : java.awt.Component, id : Int, temporary : Bool, opposite : java.awt.Component, cause : CausedFocusEvent_Cause) : Void;
	
	/**
	* Retargets the original focus event to the new target.  If the
	* original focus event is CausedFocusEvent, it remains such and
	* cause is copied.  Otherwise, new CausedFocusEvent is created,
	* with cause as RETARGETED.
	* @return retargeted event, or null if e is null
	*/
	@:overload public static function retarget(e : java.awt.event.FocusEvent, newSource : java.awt.Component) : java.awt.event.FocusEvent;
	
	
}
/**
* This class represents FocusEvents with a known "cause" - reason why this event happened. It can
* be mouse press, traversal, activation, and so on - all causes are described as Cause enum. The
* event with the cause can be constructed in two ways - explicitly through constructor of
* CausedFocusEvent class or implicitly, by calling appropriate requestFocusXXX method with "cause"
* parameter. The default cause is UNKNOWN.
*/
@:native('sun$awt$CausedFocusEvent$Cause') extern enum CausedFocusEvent_Cause
{
	UNKNOWN;
	MOUSE_EVENT;
	TRAVERSAL;
	TRAVERSAL_UP;
	TRAVERSAL_DOWN;
	TRAVERSAL_FORWARD;
	TRAVERSAL_BACKWARD;
	MANUAL_REQUEST;
	AUTOMATIC_TRAVERSE;
	ROLLBACK;
	NATIVE_SYSTEM;
	ACTIVATION;
	CLEAR_GLOBAL_FOCUS_OWNER;
	RETARGETED;
	
}

