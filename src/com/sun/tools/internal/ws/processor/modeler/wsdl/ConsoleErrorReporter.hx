package com.sun.tools.internal.ws.processor.modeler.wsdl;
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
extern class ConsoleErrorReporter extends com.sun.tools.internal.ws.wscompile.ErrorReceiver
{
	@:overload public function new(stream : java.io.PrintStream) : Void;
	
	@:overload public function new(outputStream : java.io.OutputStream) : Void;
	
	@:overload public function hasError() : Bool;
	
	@:overload override public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Used to report possibly verbose information that
	* can be safely ignored.
	*/
	@:overload override public function info(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function debug(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function enableDebugging() : Void;
	
	
}