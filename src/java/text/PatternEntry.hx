package java.text;
/*
* Copyright (c) 1996, 2000, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996, 1997 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
@:internal extern class PatternEntry
{
	/**
	* Gets the current extension, quoted
	*/
	@:overload public function appendQuotedExtension(toAddTo : java.lang.StringBuffer) : Void;
	
	/**
	* Gets the current chars, quoted
	*/
	@:overload public function appendQuotedChars(toAddTo : java.lang.StringBuffer) : Void;
	
	/**
	* WARNING this is used for searching in a Vector.
	* Because Vector.indexOf doesn't take a comparator,
	* this method is ill-defined and ignores strength.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* For debugging.
	*/
	@:overload public function toString() : String;
	
	
}
@:native('java$text$PatternEntry$Parser') @:internal extern class PatternEntry_Parser
{
	@:overload public function new(pattern : String) : Void;
	
	@:overload public function next() : PatternEntry;
	
	
}
