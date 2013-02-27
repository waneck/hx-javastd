package org.omg.CORBA.portable;
/*
* Copyright (c) 2002, Oracle and/or its affiliates. All rights reserved.
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
* Java to IDL ptc 02-01-12 1.5.1.4
*
* ValueInputStream is used for implementing RMI-IIOP
* stream format version 2.
*/
extern interface ValueInputStream
{
	/**
	* The start_value method reads a valuetype
	* header for a nested custom valuetype and
	* increments the valuetype nesting depth.
	*/
	@:overload public function start_value() : Void;
	
	/**
	* The end_value method reads the end tag
	* for the nested custom valuetype (after
	* skipping any data that precedes the end
	* tag) and decrements the valuetype nesting
	* depth.
	*/
	@:overload public function end_value() : Void;
	
	
}
