package com.sun.security.ntlm;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NTLM
{
	@:overload @:protected private function new(version : String) : Void;
	
	/**
	* Prints out a formatted string, called in various places inside then NTLM
	* implementation for debugging/logging purposes. When the system property
	* "ntlm.debug" is set, <code>System.out.printf(format, args)</code> is
	* called. This method is designed to be overridden by child classes to
	* match their own debugging/logging mechanisms.
	* @param format a format string
	* @param args the arguments referenced by <code>format</code>
	* @see java.io.PrintStream#printf(java.lang.String, java.lang.Object[])
	*/
	@:overload @:public public function debug(format : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Prints out the content of a byte array, called in various places inside
	* the NTLM implementation for debugging/logging purposes. When the system
	* property "ntlm.debug" is set, the hexdump of the array is printed into
	* System.out. This method is designed to be overridden by child classes to
	* match their own debugging/logging mechanisms.
	* @param bytes the byte array to print out
	*/
	@:overload @:public public function debug(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
/**
* Reading an NTLM packet
*/
@:native('com$sun$security$ntlm$NTLM$Reader') @:internal extern class NTLM_Reader
{
	
}
/**
* Writing an NTLM packet
*/
@:native('com$sun$security$ntlm$NTLM$Writer') @:internal extern class NTLM_Writer
{
	
}
