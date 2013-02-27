package sun.security.jgss;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TokenTracker
{
	@:overload public function new(initNumber : Int) : Void;
	
	/**
	* Sets the sequencing and replay information for the given token
	* number.
	*
	* The following represents the number line with positions of
	* initNumber, windowStart, expectedNumber marked on it. Regions in
	* between them show the different sequencing and replay state
	* possibilites for tokens that fall in there.
	*
	*  (1)      windowStart
	*           initNumber               expectedNumber
	*              |                           |
	*           ---|---------------------------|---
	*          GAP |    DUP/UNSEQ              | GAP
	*
	*
	*  (2)       initNumber   windowStart   expectedNumber
	*              |               |              |
	*           ---|---------------|--------------|---
	*          GAP |      OLD      |  DUP/UNSEQ   | GAP
	*
	*
	*  (3)                                windowStart
	*           expectedNumber            initNumber
	*              |                           |
	*           ---|---------------------------|---
	*    DUP/UNSEQ |           GAP             | DUP/UNSEQ
	*
	*
	*  (4)      expectedNumber    initNumber   windowStart
	*              |               |              |
	*           ---|---------------|--------------|---
	*    DUP/UNSEQ |        GAP    |    OLD       | DUP/UNSEQ
	*
	*
	*
	*  (5)      windowStart   expectedNumber    initNumber
	*              |               |              |
	*           ---|---------------|--------------|---
	*          OLD |    DUP/UNSEQ  |     GAP      | OLD
	*
	*
	*
	* (This analysis leaves out the possibility that expectedNumber passes
	* initNumber after wrapping around. That may be added later.)
	*/
	@:overload @:synchronized @:final public function getProps(number : Int, prop : org.ietf.jgss.MessageProp) : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* An entry in the list that represents the sequence of received
* tokens. Each entry is actaully an interval of numbers, all of which
* have been received.
*/
@:native('sun$security$jgss$TokenTracker$Entry') @:internal extern class TokenTracker_Entry
{
	@:overload public function toString() : String;
	
	
}
