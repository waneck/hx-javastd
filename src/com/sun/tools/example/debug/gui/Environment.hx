package com.sun.tools.example.debug.gui;
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
extern class Environment
{
	@:overload public function new() : Void;
	
	@:overload public function getSourceManager() : com.sun.tools.example.debug.gui.SourceManager;
	
	@:overload public function getClassManager() : com.sun.tools.example.debug.gui.ClassManager;
	
	@:overload public function getContextManager() : com.sun.tools.example.debug.gui.ContextManager;
	
	@:overload public function getMonitorListModel() : com.sun.tools.example.debug.gui.MonitorListModel;
	
	@:overload public function getExecutionManager() : com.sun.tools.example.debug.bdi.ExecutionManager;
	
	@:overload public function terminate() : Void;
	
	@:overload public function setTypeScript(writer : java.io.PrintWriter) : Void;
	
	@:overload public function error(message : String) : Void;
	
	@:overload public function failure(message : String) : Void;
	
	@:overload public function notice(message : String) : Void;
	
	@:overload public function getOutputSink() : com.sun.tools.example.debug.gui.OutputSink;
	
	@:overload public function viewSource(fileName : String) : Void;
	
	@:overload public function viewLocation(locn : com.sun.jdi.Location) : Void;
	
	@:overload public function getVerboseFlag() : Bool;
	
	@:overload public function setVerboseFlag(verbose : Bool) : Void;
	
	
}