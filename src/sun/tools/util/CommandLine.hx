package sun.tools.util;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CommandLine
{
	/**
	* Process Win32-style command files for the specified command line
	* arguments and return the resulting arguments. A command file argument
	* is of the form '@file' where 'file' is the name of the file whose
	* contents are to be parsed for additional arguments. The contents of
	* the command file are parsed using StreamTokenizer and the original
	* '@file' argument replaced with the resulting tokens. Recursive command
	* files are not supported. The '@' character itself can be quoted with
	* the sequence '@@'.
	*/
	@:overload @:public @:static public static function parse(args : java.NativeArray<String>) : java.NativeArray<String>;
	
	
}
