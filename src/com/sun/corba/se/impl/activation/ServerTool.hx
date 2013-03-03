package com.sun.corba.se.impl.activation;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class ServerTool
{
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:internal extern class RegisterServer implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class UnRegisterServer implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class LocateServer implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class LocateServerForORB implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class GetServerID implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class ListServers implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class ListActiveServers implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class ListAliases implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class ShutdownServer implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class StartServer implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class Quit implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class Help implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
@:internal extern class ListORBs implements com.sun.corba.se.impl.activation.CommandHandler
{
	@:overload @:public public function getCommandName() : String;
	
	@:overload @:public public function printCommandHelp(out : java.io.PrintStream, helpType : Bool) : Void;
	
	@:overload @:public public function processCommand(cmdArgs : java.NativeArray<String>, orb : org.omg.CORBA.ORB, out : java.io.PrintStream) : Bool;
	
	
}
