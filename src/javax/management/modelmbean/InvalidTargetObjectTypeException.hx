package javax.management.modelmbean;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* @author    IBM Corp.
*
* Copyright IBM Corp. 1999-2000.  All rights reserved.
*/
extern class InvalidTargetObjectTypeException extends java.lang.Exception
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor from a string.
	*
	* @param s String value that will be incorporated in the message for
	*    this exception.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Constructor taking an exception and a string.
	*
	* @param e Exception that we may have caught to reissue as an
	*    InvalidTargetObjectTypeException.  The message will be used, and we may want to
	*    consider overriding the printStackTrace() methods to get data
	*    pointing back to original throw stack.
	* @param s String value that will be incorporated in message for
	*    this exception.
	*/
	@:overload public function new(e : java.lang.Exception, s : String) : Void;
	
	
}
