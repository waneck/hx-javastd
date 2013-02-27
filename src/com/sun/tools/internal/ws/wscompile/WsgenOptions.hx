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
/**
* @author Vivek Pandey
*/
extern class WsgenOptions extends com.sun.tools.internal.ws.wscompile.Options
{
	/**
	* -servicename
	*/
	public var serviceName : javax.xml.namespace.QName;
	
	/**
	* -portname
	*/
	public var portName : javax.xml.namespace.QName;
	
	/**
	* -r
	*/
	public var nonclassDestDir : java.io.File;
	
	/**
	* -wsdl
	*/
	public var genWsdl : Bool;
	
	/**
	* -inlineSchemas
	*/
	public var inlineSchemas : Bool;
	
	/**
	* protocol value
	*/
	public var protocol : String;
	
	public var protocols : java.util.Set<String>;
	
	public var nonstdProtocols : java.util.Map<String, String>;
	
	/**
	* -XwsgenReport
	*/
	public var wsgenReport : java.io.File;
	
	/**
	* -Xdonotoverwrite
	*/
	public var doNotOverWrite : Bool;
	
	public var filer : com.sun.mirror.apt.Filer;
	
	/**
	* Tells if user specified a specific protocol
	*/
	public var protocolSet : Bool;
	
	public static var X_SOAP12(default, null) : String;
	
	@:overload public function new() : Void;
	
	@:overload override private function parseArguments(args : java.NativeArray<String>, i : Int) : Int;
	
	@:overload override private function addFile(arg : String) : Void;
	
	public var endpoint : Class<Dynamic>;
	
	@:overload public function validate() : Void;
	
	
}
