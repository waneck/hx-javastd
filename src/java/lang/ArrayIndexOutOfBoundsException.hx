package java.lang;
/*
* Copyright (c) 1994, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Thrown to indicate that an array has been accessed with an
* illegal index. The index is either negative or greater than or
* equal to the size of the array.
*
* @author  unascribed
* @since   JDK1.0
*/
@:require(java0) extern class ArrayIndexOutOfBoundsException extends java.lang.IndexOutOfBoundsException
{
	/**
	* Constructs an <code>ArrayIndexOutOfBoundsException</code> with no
	* detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <code>ArrayIndexOutOfBoundsException</code>
	* class with an argument indicating the illegal index.
	*
	* @param   index   the illegal index.
	*/
	@:overload public function new(index : Int) : Void;
	
	/**
	* Constructs an <code>ArrayIndexOutOfBoundsException</code> class
	* with the specified detail message.
	*
	* @param   s   the detail message.
	*/
	@:overload public function new(s : String) : Void;
	
	
}
