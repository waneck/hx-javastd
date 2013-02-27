package sun.management.snmp.util;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MibLogger
{
	@:overload public function new(clazz : java.lang.Class.Class<Dynamic>) : Void;
	
	@:overload public function new(clazz : java.lang.Class.Class<Dynamic>, postfix : java.lang.String.String) : Void;
	
	@:overload public function new(className : java.lang.String.String) : Void;
	
	@:overload public function new(loggerName : java.lang.String.String, className : java.lang.String.String) : Void;
	
	@:overload private function getLogger() : java.util.logging.Logger.Logger;
	
	@:overload public function isTraceOn() : Bool;
	
	@:overload public function isDebugOn() : Bool;
	
	@:overload public function isInfoOn() : Bool;
	
	@:overload public function isConfigOn() : Bool;
	
	@:overload public function config(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function config(func : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function config(func : java.lang.String.String, msg : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function error(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function info(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function info(func : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function info(func : java.lang.String.String, msg : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function warning(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function warning(func : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function warning(func : java.lang.String.String, msg : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function trace(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function trace(func : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function trace(func : java.lang.String.String, msg : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function debug(func : java.lang.String.String, msg : java.lang.String.String) : Void;
	
	@:overload public function debug(func : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	@:overload public function debug(func : java.lang.String.String, msg : java.lang.String.String, t : java.lang.Throwable.Throwable) : Void;
	
	
}
