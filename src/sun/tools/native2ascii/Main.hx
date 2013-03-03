package sun.tools.native2ascii;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
*/
/*
Currently javac and load() method in java.util.Properties
supports only Latin1 encoding input.
But in Asian platforms programmer or message translator
uses the editor which support othere than latin1 encoding
to specify their native language string.
So if programmer or message translator wants to use other than
Latin1 character in his/her program source or properties file
they must convert the file to ASCII plus \udddd notation.
(javac/load() modification is not appropriate due to
time constraints for JDK1.1)
This utility is for the purpose of that conversion.

NAME
native2ascii - convert native encoding file to ascii file
include \udddd Unicode notation

SYNOPSIS
native2ascii [options] [inputfile [outputfile]]

DESCRIPTION
If outputfile is not described standard output is used as
output file, and if inputfile is not also described
stardard input is used as input file.

Options

-reverse
convert ascii with \udddd notation to native encoding

-encoding encoding_name
Specify the encoding name which is used by conversion.
8859_[1 - 9], JIS, EUCJIS, SJIS is currently supported.
Default encoding is taken from System property "file.encoding".

*/
extern class Main
{
	/**
	* Run the converter
	*/
	@:overload @:public @:synchronized public function convert(argv : java.NativeArray<String>) : Bool;
	
	@:overload @:public @:static public static function canConvert(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Main program
	*/
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
