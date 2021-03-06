package org.omg.CORBA;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SystemException extends java.lang.RuntimeException
{
	/**
	* The CORBA Exception minor code.
	* @serial
	*/
	@:public public var minor : Int;
	
	/**
	* The status of the operation that threw this exception.
	* @serial
	*/
	@:public public var completed : org.omg.CORBA.CompletionStatus;
	
	/**
	* Constructs a <code>SystemException</code> exception with the specified detail
	* message, minor code, and completion status.
	* A detail message is a String that describes this particular exception.
	* @param reason the String containing a detail message
	* @param minor the minor code
	* @param completed the completion status
	*/
	@:overload @:protected private function new(reason : String, minor : Int, completed : org.omg.CORBA.CompletionStatus) : Void;
	
	/**
	* Converts this exception to a representative string.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
