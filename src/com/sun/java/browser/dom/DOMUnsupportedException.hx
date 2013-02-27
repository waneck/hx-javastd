package com.sun.java.browser.dom;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class DOMUnsupportedException extends java.lang.Exception
{
	/**
	* Constructs a new DOMUnsupportedException with no detail message.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new DOMUnsupportedException with the given detail message.
	*
	* @param msg Detail message.
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Constructs a new DOMUnsupportedException with the given exception as a root clause.
	*
	* @param e Exception.
	*/
	@:overload public function new(e : java.lang.Exception) : Void;
	
	/**
	* Constructs a new DOMUnsupportedException with the given exception as a root clause and the given detail message.
	*
	* @param e Exception.
	* @param msg Detail message.
	*/
	@:overload public function new(e : java.lang.Exception, msg : String) : Void;
	
	/**
	* Returns the detail message of the error or null if there is no detail message.
	*/
	@:overload override public function getMessage() : String;
	
	/**
	* Returns the root cause of the error or null if there is none.
	*/
	@:overload override public function getCause() : java.lang.Throwable;
	
	
}
