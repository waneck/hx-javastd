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
extern class NGCCHandler implements com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver
{
	/**
	*
	*
	* @version $Id: NGCCHandler.java,v 1.9 2002/09/29 02:55:48 okajima Exp $
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload private function new(source : com.sun.tools.internal.jxc.gen.config.NGCCEventSource, parent : com.sun.tools.internal.jxc.gen.config.NGCCHandler, parentCookie : Int) : Void;
	
	/**
	* Parent NGCCHandler, if any.
	* If this is the root handler, this field will be null.
	*/
	private var _parent(default, null) : com.sun.tools.internal.jxc.gen.config.NGCCHandler;
	
	/**
	* Event source.
	*/
	private var _source(default, null) : com.sun.tools.internal.jxc.gen.config.NGCCEventSource;
	
	/**
	* This method will be implemented by the generated code
	* and returns a reference to the current runtime.
	*/
	@:overload @:abstract private function getRuntime() : com.sun.tools.internal.jxc.gen.config.NGCCRuntime;
	
	/**
	* Cookie assigned by the parent.
	*
	* This value will be passed to the onChildCompleted handler
	* of the parent.
	*/
	private var _cookie(default, null) : Int;
	
	/**
	* Notifies the completion of a child object.
	*
	* @param result
	*      The parsing result of the child state.
	* @param cookie
	*      The cookie value passed to the child object
	*      when it is created.
	* @param needAttCheck
	*      This flag is true when the callee needs to call the
	*      processAttribute method to check attribute transitions.
	*      This flag is set to false when this method is triggered by
	*      attribute transition.
	*/
	@:overload @:abstract private function onChildCompleted(result : Dynamic, cookie : Int, needAttCheck : Bool) : Void;
	
	@:overload public function spawnChildFromEnterElement(child : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, localname : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function spawnChildFromEnterAttribute(child : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload public function spawnChildFromLeaveElement(child : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload public function spawnChildFromLeaveAttribute(child : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload public function spawnChildFromText(child : com.sun.tools.internal.jxc.gen.config.NGCCEventReceiver, value : String) : Void;
	
	@:overload public function revertToParentFromEnterElement(result : Dynamic, cookie : Int, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function revertToParentFromLeaveElement(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function revertToParentFromEnterAttribute(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function revertToParentFromLeaveAttribute(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload public function revertToParentFromText(result : Dynamic, cookie : Int, text : String) : Void;
	
	@:overload public function unexpectedEnterElement(qname : String) : Void;
	
	@:overload public function unexpectedLeaveElement(qname : String) : Void;
	
	@:overload public function unexpectedEnterAttribute(qname : String) : Void;
	
	@:overload public function unexpectedLeaveAttribute(qname : String) : Void;
	
	
}
