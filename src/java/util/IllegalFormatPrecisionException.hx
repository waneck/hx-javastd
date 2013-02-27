package java.util;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* Unchecked exception thrown when the precision is a negative value other than
* <tt>-1</tt>, the conversion does not support a precision, or the value is
* otherwise unsupported.
*
* @since 1.5
*/
@:require(java5) extern class IllegalFormatPrecisionException extends java.util.IllegalFormatException
{
	/**
	* Constructs an instance of this class with the specified precision.
	*
	* @param  p
	*         The precision
	*/
	@:overload public function new(p : Int) : Void;
	
	/**
	* Returns the precision
	*
	* @return  The precision
	*/
	@:overload public function getPrecision() : Int;
	
	@:overload override public function getMessage() : String;
	
	
}
