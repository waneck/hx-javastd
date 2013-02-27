package sun.nio.ch;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SctpMessageInfoImpl extends com.sun.nio.sctp.MessageInfo
{
	/* 0 */
	@:overload public function new(association : com.sun.nio.sctp.Association, address : java.net.SocketAddress, streamNumber : Int) : Void;
	
	@:overload override public function association() : com.sun.nio.sctp.Association;
	
	@:overload override public function address() : java.net.SocketAddress;
	
	@:overload override public function bytes() : Int;
	
	@:overload override public function streamNumber() : Int;
	
	@:overload override public function streamNumber(streamNumber : Int) : com.sun.nio.sctp.MessageInfo;
	
	@:overload override public function payloadProtocolID() : Int;
	
	@:overload override public function payloadProtocolID(ppid : Int) : com.sun.nio.sctp.MessageInfo;
	
	@:overload override public function isComplete() : Bool;
	
	@:overload override public function complete(complete : Bool) : com.sun.nio.sctp.MessageInfo;
	
	@:overload override public function isUnordered() : Bool;
	
	@:overload override public function unordered(unordered : Bool) : com.sun.nio.sctp.MessageInfo;
	
	@:overload override public function timeToLive() : haxe.Int64;
	
	@:overload override public function timeToLive(millis : haxe.Int64) : com.sun.nio.sctp.MessageInfo;
	
	@:overload public function toString() : String;
	
	
}
