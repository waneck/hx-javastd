package java.text;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
*
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 2002 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*/
@:internal extern class BreakDictionary
{
	@:overload @:public public function new(dictionaryName : String) : Void;
	
	/**
	* Uses the column map to map the character to a column number, then
	* passes the row and column number to getNextState()
	* @param row The current state
	* @param ch The character whose column we're interested in
	* @return The new state to transition to
	*/
	@:overload @:public @:final public function getNextStateFromCharacter(row : Int, ch : Int) : java.StdTypes.Int16;
	
	/**
	* Returns the value in the cell with the specified (logical) row and
	* column numbers.  In DictionaryBasedBreakIterator, the row number is
	* a state number, the column number is an input, and the return value
	* is the row number of the new state to transition to.  (0 is the
	* "error" state, and -1 is the "end of word" state in a dictionary)
	* @param row The row number of the current state
	* @param col The column number of the input character (0 means "not a
	* dictionary character")
	* @return The row number of the new state to transition to
	*/
	@:overload @:public @:final public function getNextState(row : Int, col : Int) : java.StdTypes.Int16;
	
	
}
