package com.sun.tools.internal.jxc.gen.config;
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
extern class NGCCInterleaveFilter implements com.sun.tools.internal.jxc.gen.config.NGCCEventSource implements com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver
{
	/**
	* Dispatches incoming events into sub handlers appropriately
	* so that the interleaving semantics will be correctly realized.
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload @:protected private function new(parent : com.sun.tools.internal.jxc.gen.config.NGCCHandler, cookie : Int) : Void;
	
	@:overload @:protected private function setHandlers(receivers : java.NativeArray<com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver>) : Void;
	
	/** event receiverse. */
	@:protected private var _receivers : java.NativeArray<com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver>;
	
	@:overload @:public public function replace(oldHandler : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, newHandler : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver) : Int;
	
	@:overload @:public public function enterElement(uri : String, localName : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function leaveElement(uri : String, localName : String, qname : String) : Void;
	
	@:overload @:public public function enterAttribute(uri : String, localName : String, qname : String) : Void;
	
	@:overload @:public public function leaveAttribute(uri : String, localName : String, qname : String) : Void;
	
	@:overload @:public public function text(value : String) : Void;
	
	/**
	* Implemented by the generated code to determine the handler
	* that can receive the given element.
	*
	* @return
	*      Thread ID of the receiver that can handle this event,
	*      or -1 if none.
	*/
	@:overload @:protected @:abstract private function findReceiverOfElement(uri : String, local : String) : Int;
	
	/**
	* Returns the handler that can receive the given attribute, or null.
	*/
	@:overload @:protected @:abstract private function findReceiverOfAttribute(uri : String, local : String) : Int;
	
	/**
	* Returns the handler that can receive text events, or null.
	*/
	@:overload @:protected @:abstract private function findReceiverOfText() : Int;
	
	/**
	* Joins all the child receivers.
	*
	* <p>
	* This method is called by a child receiver when it sees
	* something that it cannot handle, or by this object itself
	* when it sees an event that it can't process.
	*
	* <p>
	* This method forces children to move to its final state,
	* then revert to the parent.
	*
	* @param source
	*      If this method is called by one of the child receivers,
	*      the receiver object. If this method is called by itself,
	*      null.
	*/
	@:overload @:public public function joinByEnterElement(source : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function joinByLeaveElement(source : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function joinByEnterAttribute(source : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function joinByLeaveAttribute(source : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function joinByText(source : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, value : String) : Void;
	
	@:overload @:public public function sendEnterAttribute(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function sendEnterElement(threadId : Int, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function sendLeaveAttribute(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function sendLeaveElement(threadId : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function sendText(threadId : Int, value : String) : Void;
	
	
}
