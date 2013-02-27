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
* Thrown if an application tries to call a specified method of a
* class (either static or instance), and that class no longer has a
* definition of that method.
* <p>
* Normally, this error is caught by the compiler; this error can
* only occur at run time if the definition of a class has
* incompatibly changed.
*
* @author  unascribed
* @since   JDK1.0
*/
@:require(java0) extern class NoSuchMethodError extends java.lang.IncompatibleClassChangeError
{
	/**
	* Constructs a <code>NoSuchMethodError</code> with no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a <code>NoSuchMethodError</code> with the
	* specified detail message.
	*
	* @param   s   the detail message.
	*/
	@:overload public function new(s : String) : Void;
	
	
}