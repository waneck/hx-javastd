package com.sun.corba.se.impl.activation;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ServerMain
{
	/* TODO:
	* 1.  Rewrite all uses of ORB properties to use constants from someplace.
	*     The strings are scattered between here, the ORB classes, and
	*     ServerTableEntry.
	* 2.  Consider a more general log facility.
	* 3.  Remove ServerCallback from POAORB.
	* 4.  Needs to be merged with Harold's changes to support SSL.
	* 5.  Logs need to be internationalized.
	*/
	@:public @:final @:static public static var OK(default, null) : Int;
	
	@:public @:final @:static public static var MAIN_CLASS_NOT_FOUND(default, null) : Int;
	
	@:public @:final @:static public static var NO_MAIN_METHOD(default, null) : Int;
	
	@:public @:final @:static public static var APPLICATION_ERROR(default, null) : Int;
	
	@:public @:final @:static public static var UNKNOWN_ERROR(default, null) : Int;
	
	@:public @:final @:static public static var NO_SERVER_ID(default, null) : Int;
	
	@:public @:final @:static public static var REGISTRATION_FAILED(default, null) : Int;
	
	@:overload @:public @:static public static function printResult(result : Int) : String;
	
	/** Write information to standard out only.
	*/
	@:overload @:public @:static public static function logInformation(msg : String) : Void;
	
	/** Write error message to standard out and standard err.
	*/
	@:overload @:public @:static public static function logError(msg : String) : Void;
	
	/** Write final message to log(s) and then terminate by calling
	* System.exit( code ).  If code == OK, write a normal termination
	* message to standard out, otherwise write an abnormal termination
	* message to standard out and standard error.
	*/
	@:overload @:public @:static public static function logTerminal(msg : String, code : Int) : Void;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class ServerCallback extends com.sun.corba.se.spi.activation._ServerImplBase
{
	@:overload @:public public function shutdown() : Void;
	
	@:overload @:public public function install() : Void;
	
	@:overload @:public public function uninstall() : Void;
	
	
}
