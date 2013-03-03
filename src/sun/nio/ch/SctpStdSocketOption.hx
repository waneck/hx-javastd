package sun.nio.ch;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SctpStdSocketOption<T> implements com.sun.nio.sctp.SctpSocketOption<T>
{
	/* for native mapping of int options */
	@:public @:static @:final public static var SCTP_DISABLE_FRAGMENTS(default, null) : Int;
	
	@:public @:static @:final public static var SCTP_EXPLICIT_COMPLETE(default, null) : Int;
	
	@:public @:static @:final public static var SCTP_FRAGMENT_INTERLEAVE(default, null) : Int;
	
	@:public @:static @:final public static var SCTP_NODELAY(default, null) : Int;
	
	@:public @:static @:final public static var SO_SNDBUF(default, null) : Int;
	
	@:public @:static @:final public static var SO_RCVBUF(default, null) : Int;
	
	@:public @:static @:final public static var SO_LINGER(default, null) : Int;
	
	@:overload @:public public function new(name : String, type : Class<T>) : Void;
	
	@:overload @:public public function new(name : String, type : Class<T>, constValue : Int) : Void;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function type() : Class<T>;
	
	@:overload @:public public function toString() : String;
	
	
}
