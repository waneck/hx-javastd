package com.sun.beans.decoder;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
* This utility class provides {@code static} method
* to create the object that contains the result of method execution.
*
* @since 1.7
*
* @author Sergey A. Malenkov
*/
@:require(java7) @:internal extern class ValueObjectImpl implements com.sun.beans.decoder.ValueObject
{
	/**
	* Returns the result of method execution.
	*
	* @return the result of method execution
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* Returns {@code void} state of this value object.
	*
	* @return {@code true} if value should be ignored,
	*         {@code false} otherwise
	*/
	@:overload public function isVoid() : Bool;
	
	
}
