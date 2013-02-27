package com.sun.tools.corba.se.idl.som.cff;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997,1998
* RMI-IIOP v1.0
*
*  Defect History
*
*  #26964 LKR 11/25/96 \u0020 at end-of-message not handled properly by Java.
*  #31840 LKR 06/05/97 Replace \n in templates with Java's line separator.
*
*/
extern class Messages
{
	/**
	* Loads additional message keys and text found in the passed
	* properties file.  The specified properties file is assumed to
	* reside in the CLASSPATH. An IOException is thrown if the loading fails.
	*/
	@:overload @:final @:synchronized public static function msgLoad(propertyFileName : String) : Void;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  If the msgkey cannot be found, its value is returned
	* as the output message text.
	*/
	@:overload @:final public static function msg(msgkey : String) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of a single argument, supplied by the "parm" parameter.
	* If the message text does not contain the meta characters "%1"
	* that indicate where to place the argument, the passed argument
	* is appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm : String) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of a single argument, supplied by the "parm" parameter.
	* If the message text does not contain the meta characters "%1"
	* that indicate where to place the argument, the passed argument
	* is appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm : Int) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of two arguments, supplied by the "parm1" and "parm2" parameters.
	* If the message text does not contain the meta characters "%1" and
	* "%2" that indicate where to place the arguments, the passed arguments
	* are appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm1 : String, parm2 : String) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of two arguments, supplied by the "parm1" and "parm2" parameters.
	* If the message text does not contain the meta characters "%1" and
	* "%2" that indicate where to place the arguments, the passed arguments
	* are appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm1 : Int, parm2 : String) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of two arguments, supplied by the "parm1" and "parm2" parameters.
	* If the message text does not contain the meta characters "%1" and
	* "%2" that indicate where to place the arguments, the passed arguments
	* are appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm1 : String, parm2 : Int) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of two arguments, supplied by the "parm1" and "parm2" parameters.
	* If the message text does not contain the meta characters "%1" and
	* "%2" that indicate where to place the arguments, the passed arguments
	* are appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm1 : Int, parm2 : Int) : String;
	
	/**
	* Returns the message text corresponding to the passed msgkey
	* string.  The message text is assumed to require the insertion
	* of three arguments, supplied by the "parm1", "parm2" and "parm3"
	*  parameters.
	* If the message text does not contain the meta characters "%1" and
	* "%2" that indicate where to place the arguments, the passed arguments
	* are appended at the end of the message text.
	* <p>
	* If the msgkey cannot be found, its value is used as the
	* message text.
	*/
	@:overload @:final public static function msg(msgkey : String, parm1 : String, parm2 : String, parm3 : String) : String;
	
	
}
