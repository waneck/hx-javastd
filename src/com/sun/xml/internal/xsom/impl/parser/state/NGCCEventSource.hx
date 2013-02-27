package com.sun.xml.internal.xsom.impl.parser.state;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface NGCCEventSource
{
	/**
	* Replaces an old handler with a new handler, and returns
	* ID of the EventReceiver thread.
	*/
	@:overload public function replace(_old : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, _new : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver) : Int;
	
	/** Sends an enter element event to the specified EventReceiver thread. */
	@:overload public function sendEnterElement(receiverThreadId : Int, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function sendLeaveElement(receiverThreadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendEnterAttribute(receiverThreadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendLeaveAttribute(receiverThreadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function sendText(receiverThreadId : Int, value : String) : Void;
	
	
}
