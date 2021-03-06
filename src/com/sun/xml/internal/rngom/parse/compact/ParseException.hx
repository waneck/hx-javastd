package com.sun.xml.internal.rngom.parse.compact;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
/* Generated By:JavaCC: Do not edit this line. ParseException.java Version 5.0 */
/* JavaCCOptions:KEEP_LINE_COL=null */
/**
* This exception is thrown when parse errors are encountered.
* You can explicitly create objects of this exception type by
* calling the method generateParseException in the generated
* parser.
*
* You can modify this class to customize your error reporting
* mechanisms so long as you retain the public fields.
*/
extern class ParseException extends java.lang.Exception
{
	/**
	* This constructor is used by the method "generateParseException"
	* in the generated parser.  Calling this constructor generates
	* a new object of this type with the fields "currentToken",
	* "expectedTokenSequences", and "tokenImage" set.
	*/
	@:overload @:public public function new(currentTokenVal : com.sun.xml.internal.rngom.parse.compact.Token, expectedTokenSequencesVal : java.NativeArray<java.NativeArray<Int>>, tokenImageVal : java.NativeArray<String>) : Void;
	
	/**
	* The following constructors are for use by you for whatever
	* purpose you can think of.  Constructing the exception in this
	* manner makes the exception behave in the normal way - i.e., as
	* documented in the class "Throwable".  The fields "errorToken",
	* "expectedTokenSequences", and "tokenImage" do not contain
	* relevant information.  The JavaCC generated code does not use
	* these constructors.
	*/
	@:overload @:public public function new() : Void;
	
	/** Constructor with message. */
	@:overload @:public public function new(message : String) : Void;
	
	/**
	* This is the last token that has been consumed successfully.  If
	* this object has been created due to a parse error, the token
	* followng this token will (therefore) be the first error token.
	*/
	@:public public var currentToken : com.sun.xml.internal.rngom.parse.compact.Token;
	
	/**
	* Each entry in this array is an array of integers.  Each array
	* of integers represents a sequence of tokens (by their ordinal
	* values) that is expected at this point of the parse.
	*/
	@:public public var expectedTokenSequences : java.NativeArray<java.NativeArray<Int>>;
	
	/**
	* This is a reference to the "tokenImage" array of the generated
	* parser within which the parse error occurred.  This array is
	* defined in the generated ...Constants interface.
	*/
	@:public public var tokenImage : java.NativeArray<String>;
	
	/**
	* The end of line string for this machine.
	*/
	@:protected private var eol : String;
	
	
}
