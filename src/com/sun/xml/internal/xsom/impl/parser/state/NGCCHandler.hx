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
extern class NGCCHandler implements com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver
{
	/**
	*
	*
	* @version $Id: NGCCHandler.java,v 1.9 2002/09/29 02:55:48 okajima Exp $
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload @:protected private function new(source : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventSource, parent : com.sun.xml.internal.xsom.impl.parser.state.NGCCHandler, parentCookie : Int) : Void;
	
	/**
	* Parent NGCCHandler, if any.
	* If this is the root handler, this field will be null.
	*/
	@:protected @:final private var _parent(default, null) : com.sun.xml.internal.xsom.impl.parser.state.NGCCHandler;
	
	/**
	* Event source.
	*/
	@:protected @:final private var _source(default, null) : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventSource;
	
	/**
	* This method will be implemented by the generated code
	* and returns a reference to the current runtime.
	*/
	@:overload @:protected @:abstract private function getRuntime() : com.sun.xml.internal.xsom.impl.parser.state.NGCCRuntime;
	
	/**
	* Cookie assigned by the parent.
	*
	* This value will be passed to the onChildCompleted handler
	* of the parent.
	*/
	@:protected @:final private var _cookie(default, null) : Int;
	
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
	@:overload @:protected @:abstract private function onChildCompleted(result : Dynamic, cookie : Int, needAttCheck : Bool) : Void;
	
	@:overload @:public public function spawnChildFromEnterElement(child : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, uri : String, localname : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function spawnChildFromEnterAttribute(child : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload @:public public function spawnChildFromLeaveElement(child : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload @:public public function spawnChildFromLeaveAttribute(child : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, uri : String, localname : String, qname : String) : Void;
	
	@:overload @:public public function spawnChildFromText(child : com.sun.xml.internal.xsom.impl.parser.state.NGCCEventReceiver, value : String) : Void;
	
	@:overload @:public public function revertToParentFromEnterElement(result : Dynamic, cookie : Int, uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function revertToParentFromLeaveElement(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function revertToParentFromEnterAttribute(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function revertToParentFromLeaveAttribute(result : Dynamic, cookie : Int, uri : String, local : String, qname : String) : Void;
	
	@:overload @:public public function revertToParentFromText(result : Dynamic, cookie : Int, text : String) : Void;
	
	@:overload @:public public function unexpectedEnterElement(qname : String) : Void;
	
	@:overload @:public public function unexpectedLeaveElement(qname : String) : Void;
	
	@:overload @:public public function unexpectedEnterAttribute(qname : String) : Void;
	
	@:overload @:public public function unexpectedLeaveAttribute(qname : String) : Void;
	
	@:overload @:public public function enterAttribute(uri : String, localName : String, qname : String) : Void;
	
	@:overload @:public public function leaveElement(uri : String, localName : String, qname : String) : Void;
	
	/**
	*
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload @:public public function enterElement(uri : String, localName : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function text(value : String) : Void;
	
	@:overload @:public public function leaveAttribute(uri : String, localName : String, qname : String) : Void;
	
	
}
