package com.sun.tools.internal.ws.wscompile;
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
extern class ErrorReceiverFilter extends com.sun.tools.internal.ws.wscompile.ErrorReceiver
{
	/**
	* Filter implementation of the ErrorReceiver.
	*
	* If an error is encountered, this filter sets a flag.
	*
	* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	* @author Vivek Pandey
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(h : com.sun.tools.internal.xjc.api.ErrorListener) : Void;
	
	@:overload public function setErrorReceiver(handler : com.sun.tools.internal.xjc.api.ErrorListener) : Void;
	
	@:overload @:final public function hadError() : Bool;
	
	/**
	* Resets the error state its currently in. It allows to ignore the error reported by
	* any sub-system.
	*/
	@:overload public function reset() : Void;
	
	@:overload override public function info(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function debug(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	
}
