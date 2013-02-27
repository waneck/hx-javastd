package sun.awt.X11;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern interface XDragSourceProtocolListener
{
	/**
	* Called when a reply from the current drop target is received.
	*
	* @param action is the drop action selected by the drop target
	*/
	@:overload public function handleDragReply(action : Int) : Void;
	
	/**
	* Called when a reply from the current drop target is received.
	*
	* @param action the drop action selected by the drop target
	* @param x the x coordinate of the pointer location in screen coordinates
	*        for the reply
	* @param y the x coordinate of the pointer location in screen coordinates
	*        for the reply
	*/
	@:overload public function handleDragReply(action : Int, x : Int, y : Int) : Void;
	
	/**
	* Called when a reply from the current drop target is received.
	*
	* @param action the drop action selected by the drop target
	* @param x the x coordinate of the pointer location in screen coordinates
	*        for the reply
	* @param y the x coordinate of the pointer location in screen coordinates
	*        for the reply
	* @param modifiers the keyboard modifiers state for the reply
	*/
	@:overload public function handleDragReply(action : Int, x : Int, y : Int, modifiers : Int) : Void;
	
	/**
	* Called when the current drop target signals that the drag-and-drop
	* operation is finished.
	*/
	@:overload public function handleDragFinished() : Void;
	
	/**
	* Called when the current drop target signals that the drag-and-drop
	* operation is finished.
	*
	* @param success true if the drop target successfully performed the drop
	*                action
	*/
	@:overload public function handleDragFinished(success : Bool) : Void;
	
	/**
	* Called when the current drop target signals that the drag-and-drop
	* operation is finished.
	*
	* @param action the drop action performed by the drop target
	* @param success true if the drop target successfully performed the drop
	*                action
	*/
	@:overload public function handleDragFinished(success : Bool, action : Int) : Void;
	
	/**
	* Called when the current drop target signals that the drag-and-drop
	* operation is finished.
	*
	* @param action the drop action performed by the drop target
	* @param success true if the drop target successfully performed the drop
	*                action
	* @param x the x coordinate of the pointer location in screen coordinates
	*          for the signal
	* @param y the x coordinate of the pointer location in screen coordinates
	*          for the signal
	*/
	@:overload public function handleDragFinished(success : Bool, action : Int, x : Int, y : Int) : Void;
	
	/**
	* Terminates the current drag-and-drop operation (if any) and performs
	* the necessary cleanup.
	* @param time the time stamp of the event that triggered drag termination
	*             or XlibWrapper.CurrentTime
	*/
	@:overload public function cleanup(time : haxe.Int64) : Void;
	
	
}
