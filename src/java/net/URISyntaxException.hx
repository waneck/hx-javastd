package java.net;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Checked exception thrown to indicate that a string could not be parsed as a
* URI reference.
*
* @author Mark Reinhold
* @see URI
* @since 1.4
*/
@:require(java4) extern class URISyntaxException extends java.lang.Exception
{
	/**
	* Constructs an instance from the given input string, reason, and error
	* index.
	*
	* @param  input   The input string
	* @param  reason  A string explaining why the input could not be parsed
	* @param  index   The index at which the parse error occurred,
	*                 or <tt>-1</tt> if the index is not known
	*
	* @throws  NullPointerException
	*          If either the input or reason strings are <tt>null</tt>
	*
	* @throws  IllegalArgumentException
	*          If the error index is less than <tt>-1</tt>
	*/
	@:overload @:public public function new(input : String, reason : String, index : Int) : Void;
	
	/**
	* Constructs an instance from the given input string and reason.  The
	* resulting object will have an error index of <tt>-1</tt>.
	*
	* @param  input   The input string
	* @param  reason  A string explaining why the input could not be parsed
	*
	* @throws  NullPointerException
	*          If either the input or reason strings are <tt>null</tt>
	*/
	@:overload @:public public function new(input : String, reason : String) : Void;
	
	/**
	* Returns the input string.
	*
	* @return  The input string
	*/
	@:overload @:public public function getInput() : String;
	
	/**
	* Returns a string explaining why the input string could not be parsed.
	*
	* @return  The reason string
	*/
	@:overload @:public public function getReason() : String;
	
	/**
	* Returns an index into the input string of the position at which the
	* parse error occurred, or <tt>-1</tt> if this position is not known.
	*
	* @return  The error index
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	* Returns a string describing the parse error.  The resulting string
	* consists of the reason string followed by a colon character
	* (<tt>':'</tt>), a space, and the input string.  If the error index is
	* defined then the string <tt>" at index "</tt> followed by the index, in
	* decimal, is inserted after the reason string and before the colon
	* character.
	*
	* @return  A string describing the parse error
	*/
	@:overload @:public override public function getMessage() : String;
	
	
}
