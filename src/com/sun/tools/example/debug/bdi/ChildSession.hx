package com.sun.tools.example.debug.bdi;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
@:internal extern class ChildSession extends com.sun.tools.example.debug.bdi.Session
{
	@:overload @:public public function new(runtime : com.sun.tools.example.debug.bdi.ExecutionManager, userVMArgs : String, cmdLine : String, input : com.sun.tools.example.debug.bdi.InputListener, output : com.sun.tools.example.debug.bdi.OutputListener, error : com.sun.tools.example.debug.bdi.OutputListener, diagnostics : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function new(runtime : com.sun.tools.example.debug.bdi.ExecutionManager, connector : com.sun.jdi.connect.LaunchingConnector, arguments : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>, input : com.sun.tools.example.debug.bdi.InputListener, output : com.sun.tools.example.debug.bdi.OutputListener, error : com.sun.tools.example.debug.bdi.OutputListener, diagnostics : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public override public function attach() : Bool;
	
	@:overload @:public override public function detach() : Void;
	
	
}
/**
*  Threads to handle application input/output.
*/
@:native('com$sun$tools$example$debug$bdi$ChildSession$OutputReader') @:internal extern class ChildSession_OutputReader extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
@:native('com$sun$tools$example$debug$bdi$ChildSession$InputWriter') @:internal extern class ChildSession_InputWriter extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
