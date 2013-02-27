package com.sun.xml.internal.ws.api.pipe;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class NextAction
{
	/**
	* Indicates that the next action should be to
	* invoke the next tube's {@link Tube#processRequest(Packet)},
	* then later invoke the current tube's {@link Tube#processResponse(Packet)}
	* with the response packet.
	*/
	@:overload public function invoke(next : com.sun.xml.internal.ws.api.pipe.Tube, p : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Indicates that the next action should be to
	* invoke the next tube's {@link Tube#processRequest(Packet)},
	* but the current tube doesn't want to receive the response packet to
	* its {@link Tube#processResponse(Packet)}.
	*/
	@:overload public function invokeAndForget(next : com.sun.xml.internal.ws.api.pipe.Tube, p : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Indicates that the next action is to flip the processing direction
	* and starts response processing.
	*/
	@:overload public function returnWith(response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Indicates that the next action is to flip the processing direction
	* and starts exception processing.
	*
	* @param t
	*      Either {@link RuntimeException} or {@link Error}, but defined to
	*      take {@link Throwable} because {@link Tube#processException(Throwable)}
	*      takes {@link Throwable}.
	*/
	@:overload public function throwException(t : java.lang.Throwable) : Void;
	
	/**
	* Indicates that the fiber should be suspended.
	* Once {@link Fiber#resume(Packet) resumed}, return the response processing.
	*/
	@:overload public function suspend() : Void;
	
	/**
	* Indicates that the fiber should be suspended.
	* Once {@link Fiber#resume(Packet) resumed}, resume with the
	* {@link Tube#processRequest(Packet)} on the given next tube.
	*/
	@:overload public function suspend(next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload public function getNext() : com.sun.xml.internal.ws.api.pipe.Tube;
	
	@:overload public function getPacket() : com.sun.xml.internal.ws.api.message.Packet;
	
	@:overload public function getThrowable() : java.lang.Throwable;
	
	/**
	* Dumps the contents to assist debugging.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns {@link #kind} in a human readable string, to assist debugging.
	*/
	@:overload public function getKindString() : String;
	
	
}
