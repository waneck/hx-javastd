package sun.tools.jconsole;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* A simple console window to display messages sent to System.out and
* System.err.
*
* A stop-gap solution until an error dialog is implemented.
*/
extern class OutputViewer
{
	@:overload @:public @:static public static function init() : Void;
	
	
}
@:native('sun$tools$jconsole$OutputViewer$PipeListener') @:internal extern class OutputViewer_PipeListener extends java.lang.Thread
{
	@:public public var ps : java.io.PrintStream;
	
	@:overload @:public @:static public static function create(name : String) : java.io.PrintStream;
	
	@:overload @:public override public function run() : Void;
	
	
}
