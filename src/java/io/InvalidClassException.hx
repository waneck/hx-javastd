package java.io;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Thrown when the Serialization runtime detects one of the following
* problems with a Class.
* <UL>
* <LI> The serial version of the class does not match that of the class
*      descriptor read from the stream
* <LI> The class contains unknown datatypes
* <LI> The class does not have an accessible no-arg constructor
* </UL>
*
* @author  unascribed
* @since   JDK1.1
*/
@:require(java1) extern class InvalidClassException extends java.io.ObjectStreamException
{
	/**
	* Name of the invalid class.
	*
	* @serial Name of the invalid class.
	*/
	@:public public var classname : String;
	
	/**
	* Report an InvalidClassException for the reason specified.
	*
	* @param reason  String describing the reason for the exception.
	*/
	@:overload @:public public function new(reason : String) : Void;
	
	/**
	* Constructs an InvalidClassException object.
	*
	* @param cname   a String naming the invalid class.
	* @param reason  a String describing the reason for the exception.
	*/
	@:overload @:public public function new(cname : String, reason : String) : Void;
	
	/**
	* Produce the message and include the classname, if present.
	*/
	@:overload @:public override public function getMessage() : String;
	
	
}
