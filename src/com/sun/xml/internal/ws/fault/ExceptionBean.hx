package com.sun.xml.internal.ws.fault;
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
@:internal extern class ExceptionBean
{
	/**
	* Converts the given {@link Throwable} into an XML representation
	* and put that as a DOM tree under the given node.
	*/
	@:overload public static function marshal(t : java.lang.Throwable, parent : org.w3c.dom.Node) : Void;
	
	/**
	* Does the reverse operation of {@link #marshal(Throwable, Node)}. Constructs an
	* {@link Exception} object from the XML.
	*/
	@:overload public static function unmarshal(xml : org.w3c.dom.Node) : com.sun.xml.internal.ws.developer.ServerSideException;
	
	public var className : String;
	
	public var message : String;
	
	public var stackTrace : java.util.List<ExceptionBean_StackFrame>;
	
	public var cause : ExceptionBean;
	
	public var note : String;
	
	/**
	* Checks if the given element is the XML representation of {@link ExceptionBean}.
	*/
	@:overload public static function isStackTraceXml(n : org.w3c.dom.Element) : Bool;
	
	
}
/**
* Captures one stack frame.
*/
@:native('com$sun$xml$internal$ws$fault$ExceptionBean$StackFrame') @:internal extern class ExceptionBean_StackFrame
{
	public var declaringClass : String;
	
	public var methodName : String;
	
	public var fileName : String;
	
	public var lineNumber : String;
	
	@:overload public function new(ste : java.lang.StackTraceElement) : Void;
	
	
}
