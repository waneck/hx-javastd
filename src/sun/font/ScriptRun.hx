package sun.font;
/*
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
*
*/
/*
*******************************************************************************
*
*   Copyright (C) 1999-2003, International Business Machines
*   Corporation and others.  All Rights Reserved.
*
*******************************************************************************
*/
/**
* <code>ScriptRun</code> is used to find runs of characters in
* the same script, as defined in the <code>Script</code> class.
* It implements a simple iterator over an array of characters.
* The iterator will assign <code>COMMON</code> and <code>INHERITED</code>
* characters to the same script as the preceeding characters. If the
* COMMON and INHERITED characters are first, they will be assigned to
* the same script as the following characters.
*
* The iterator will try to match paired punctuation. If it sees an
* opening punctuation character, it will remember the script that
* was assigned to that character, and assign the same script to the
* matching closing punctuation.
*
* No attempt is made to combine related scripts into a single run. In
* particular, Hiragana, Katakana, and Han characters will appear in seperate
* runs.

* Here is an example of how to iterate over script runs:
* <pre>
* void printScriptRuns(char[] text)
* {
*     ScriptRun scriptRun = new ScriptRun(text, 0, text.length);
*
*     while (scriptRun.next()) {
*         int start  = scriptRun.getScriptStart();
*         int limit  = scriptRun.getScriptLimit();
*         int script = scriptRun.getScriptCode();
*
*         System.out.println("Script \"" + Script.getName(script) + "\" from " +
*                            start + " to " + limit + ".");
*     }
*  }
* </pre>
*
*/
extern class ScriptRun
{
	@:overload public function new() : Void;
	
	/**
	* Construct a <code>ScriptRun</code> object which iterates over a subrange
	* of the given characetrs.
	*
	* @param chars the array of characters over which to iterate.
	* @param start the index of the first character over which to iterate
	* @param count the number of characters over which to iterate
	*/
	@:overload public function new(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int) : Void;
	
	@:overload public function init(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int) : Void;
	
	/**
	* Get the starting index of the current script run.
	*
	* @return the index of the first character in the current script run.
	*/
	@:overload @:final public function getScriptStart() : Int;
	
	/**
	* Get the index of the first character after the current script run.
	*
	* @return the index of the first character after the current script run.
	*/
	@:overload @:final public function getScriptLimit() : Int;
	
	/**
	* Get the script code for the script of the current script run.
	*
	* @return the script code for the script of the current script run.
	* @see #Script
	*/
	@:overload @:final public function getScriptCode() : Int;
	
	/**
	* Find the next script run. Returns <code>false</code> if there
	* isn't another run, returns <code>true</code> if there is.
	*
	* @return <code>false</code> if there isn't another run, <code>true</code> if there is.
	*/
	@:overload @:final public function next() : Bool;
	
	
}
