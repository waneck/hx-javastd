package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* Manage the list of source files.
* Origin of SourceListener events.
*/
extern class SourceManager
{
	@:overload public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	@:overload public function new(env : com.sun.tools.example.debug.gui.Environment, sourcePath : com.sun.tools.example.debug.gui.SearchPath) : Void;
	
	/**
	* Set path for access to source code.
	*/
	@:overload public function setSourcePath(sp : com.sun.tools.example.debug.gui.SearchPath) : Void;
	
	@:overload public function addSourceListener(l : com.sun.tools.example.debug.gui.SourceListener) : Void;
	
	@:overload public function removeSourceListener(l : com.sun.tools.example.debug.gui.SourceListener) : Void;
	
	/**
	* Get path for access to source code.
	*/
	@:overload public function getSourcePath() : com.sun.tools.example.debug.gui.SearchPath;
	
	/**
	* Get source object associated with a Location.
	*/
	@:overload public function sourceForLocation(loc : com.sun.jdi.Location) : com.sun.tools.example.debug.gui.SourceModel;
	
	/**
	* Get source object associated with a class or interface.
	* Returns null if not available.
	*/
	@:overload public function sourceForClass(refType : com.sun.jdi.ReferenceType) : com.sun.tools.example.debug.gui.SourceModel;
	
	/**
	* Get source object associated with an absolute file path.
	*/
	@:overload public function sourceForFile(path : java.io.File) : com.sun.tools.example.debug.gui.SourceModel;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceManager$SMClassListener') @:internal extern class SourceManager_SMClassListener extends com.sun.tools.example.debug.event.JDIAdapter implements com.sun.tools.example.debug.event.JDIListener
{
	@:overload public function classPrepare(e : com.sun.tools.example.debug.event.ClassPrepareEventSet) : Void;
	
	@:overload public function classUnload(e : com.sun.tools.example.debug.event.ClassUnloadEventSet) : Void;
	
	
}
