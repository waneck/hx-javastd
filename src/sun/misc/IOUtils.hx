package sun.misc;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* IOUtils: A collection of IO-related public static methods.
*/
extern class IOUtils
{
	/**
	* Read up to <code>length</code> of bytes from <code>in</code>
	* until EOF is detected.
	* @param in input stream, must not be null
	* @param length number of bytes to read, -1 or Integer.MAX_VALUE means
	*        read as much as possible
	* @param readAll if true, an EOFException will be thrown if not enough
	*        bytes are read. Ignored when length is -1 or Integer.MAX_VALUE
	* @return bytes read
	* @throws IOException Any IO error or a premature EOF is detected
	*/
	@:overload @:public @:static public static function readFully(is : java.io.InputStream, length : Int, readAll : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
