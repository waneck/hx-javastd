package sun.management;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Agent
{
	@:overload @:public @:static public static function premain(args : String) : Void;
	
	@:overload @:public @:static public static function agentmain(args : String) : Void;
	
	@:overload @:public @:static public static function loadManagementProperties() : java.util.Properties;
	
	@:overload @:public @:static @:synchronized public static function getManagementProperties() : java.util.Properties;
	
	@:overload @:public @:static public static function startAgent() : Void;
	
	@:overload @:public @:static public static function error(key : String) : Void;
	
	@:overload @:public @:static public static function error(key : String, params : java.NativeArray<String>) : Void;
	
	@:overload @:public @:static public static function error(key : String, message : String) : Void;
	
	@:overload @:public @:static public static function error(e : java.lang.Exception) : Void;
	
	@:overload @:public @:static public static function warning(key : String, message : String) : Void;
	
	@:overload @:public @:static public static function getText(key : String) : String;
	
	@:overload @:public @:static public static function getText(key : String, args : java.NativeArray<String>) : String;
	
	
}
