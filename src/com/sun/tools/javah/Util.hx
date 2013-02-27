package com.sun.tools.javah;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	/*
	* Help for verbosity.
	*/
	public var verbose : Bool;
	
	public var dl : javax.tools.DiagnosticListener<javax.tools.JavaFileObject>;
	
	@:overload public function log(s : String) : Void;
	
	/*
	* Usage message.
	*/
	@:overload public function usage() : Void;
	
	@:overload public function version() : Void;
	
	/*
	* Failure modes.
	*/
	@:overload public function bug(key : String) : Void;
	
	@:overload public function bug(key : String, e : java.lang.Exception) : Void;
	
	@:overload public function error(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/** Exit is used to replace the use of System.exit in the original javah.
*/
@:native('com$sun$tools$javah$Util$Exit') extern class Util_Exit extends java.lang.Error
{
	public var exitValue(default, null) : Int;
	
	public var cause(default, null) : java.lang.Throwable;
	
	
}
