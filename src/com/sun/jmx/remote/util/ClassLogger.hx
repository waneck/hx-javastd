package com.sun.jmx.remote.util;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassLogger
{
	@:overload @:public public function new(subsystem : String, className : String) : Void;
	
	@:overload @:public @:final public function traceOn() : Bool;
	
	@:overload @:public @:final public function debugOn() : Bool;
	
	@:overload @:public @:final public function warningOn() : Bool;
	
	@:overload @:public @:final public function infoOn() : Bool;
	
	@:overload @:public @:final public function configOn() : Bool;
	
	@:overload @:public @:final public function fineOn() : Bool;
	
	@:overload @:public @:final public function finerOn() : Bool;
	
	@:overload @:public @:final public function finestOn() : Bool;
	
	@:overload @:public @:final public function debug(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function debug(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function debug(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	//@:overload @:public @:final public function _trace(func : String, msg : String) : Void;
	
	//@:overload @:public @:final public function _trace(func : String, t : java.lang.Throwable) : Void;
	
	//@:overload @:public @:final public function _trace(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function error(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function error(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function error(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function finest(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function finest(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function finest(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function finer(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function finer(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function finer(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function fine(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function fine(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function fine(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function config(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function config(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function config(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function info(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function info(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function info(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function warning(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function warning(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function warning(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function severe(func : String, msg : String) : Void;
	
	@:overload @:public @:final public function severe(func : String, t : java.lang.Throwable) : Void;
	
	@:overload @:public @:final public function severe(func : String, msg : String, t : java.lang.Throwable) : Void;
	
	
}
