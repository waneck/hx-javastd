package java.text;
/*
* Copyright (c) 1996, 1999, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MergeCollation
{
	/**
	* Creates from a pattern
	* @exception ParseException If the input pattern is incorrect.
	*/
	@:overload @:public public function new(pattern : String) : Void;
	
	/**
	* recovers current pattern
	*/
	@:overload @:public public function getPattern() : String;
	
	/**
	* recovers current pattern.
	* @param withWhiteSpace puts spacing around the entries, and \n
	* before & and <
	*/
	@:overload @:public public function getPattern(withWhiteSpace : Bool) : String;
	
	/**
	* emits the pattern for collation builder.
	* @return emits the string in the format understable to the collation
	* builder.
	*/
	@:overload @:public public function emitPattern() : String;
	
	/**
	* emits the pattern for collation builder.
	* @param withWhiteSpace puts spacing around the entries, and \n
	* before & and <
	* @return emits the string in the format understable to the collation
	* builder.
	*/
	@:overload @:public public function emitPattern(withWhiteSpace : Bool) : String;
	
	/**
	* sets the pattern.
	*/
	@:overload @:public public function setPattern(pattern : String) : Void;
	
	/**
	* adds a pattern to the current one.
	* @param pattern the new pattern to be added
	*/
	@:overload @:public public function addPattern(pattern : String) : Void;
	
	/**
	* gets count of separate entries
	* @return the size of pattern entries
	*/
	@:overload @:public public function getCount() : Int;
	
	/**
	* gets count of separate entries
	* @param index the offset of the desired pattern entry
	* @return the requested pattern entry
	*/
	@:overload @:public public function getItemAt(index : Int) : java.text.PatternEntry;
	
	
}
