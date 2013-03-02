package javax.xml.bind;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This exception indicates that a violation of a dynamically checked type
* constraint was detected.
*
* <p>
* This exception can be thrown by the generated setter methods of the schema
* derived Java content classes.  However, since fail-fast validation is
* an optional feature for JAXB Providers to support, not all setter methods
* will throw this exception when a type constraint is violated.
*
* <p>
* If this exception is throw while invoking a fail-fast setter, the value of
* the property is guaranteed to remain unchanged, as if the setter were never
* called.
*
* @author <ul><li>Ryan Shoemaker, Sun Microsystems, Inc.</li><li>Joe Fialli, Sun Microsystems, Inc.</li></ul>
* @see ValidationEvent
* @since JAXB1.0
*/
@:require(java0) extern class TypeConstraintException extends java.lang.RuntimeException
{
	/**
	* Construct a TypeConstraintException with the specified detail message.  The
	* errorCode and linkedException will default to null.
	*
	* @param message a description of the exception
	*/
	@:overload public function new(message : String) : Void;
	
	/**
	* Construct a TypeConstraintException with the specified detail message and vendor
	* specific errorCode.  The linkedException will default to null.
	*
	* @param message a description of the exception
	* @param errorCode a string specifying the vendor specific error code
	*/
	@:overload public function new(message : String, errorCode : String) : Void;
	
	/**
	* Construct a TypeConstraintException with a linkedException.  The detail message and
	* vendor specific errorCode will default to null.
	*
	* @param exception the linked exception
	*/
	@:overload public function new(exception : java.lang.Throwable) : Void;
	
	/**
	* Construct a TypeConstraintException with the specified detail message and
	* linkedException.  The errorCode will default to null.
	*
	* @param message a description of the exception
	* @param exception the linked exception
	*/
	@:overload public function new(message : String, exception : java.lang.Throwable) : Void;
	
	/**
	* Construct a TypeConstraintException with the specified detail message,
	* vendor specific errorCode, and linkedException.
	*
	* @param message a description of the exception
	* @param errorCode a string specifying the vendor specific error code
	* @param exception the linked exception
	*/
	@:overload public function new(message : String, errorCode : String, exception : java.lang.Throwable) : Void;
	
	/**
	* Get the vendor specific error code
	*
	* @return a string specifying the vendor specific error code
	*/
	@:overload public function getErrorCode() : String;
	
	/**
	* Get the linked exception
	*
	* @return the linked Exception, null if none exists
	*/
	@:overload public function getLinkedException() : java.lang.Throwable;
	
	/**
	* Add a linked Exception.
	*
	* @param exception the linked Exception (A null value is permitted and
	*                  indicates that the linked exception does not exist or
	*                  is unknown).
	*/
	@:overload @:synchronized public function setLinkedException(exception : java.lang.Throwable) : Void;
	
	/**
	* Returns a short description of this TypeConstraintException.
	*
	*/
	@:overload public function toString() : String;
	
	/**
	* Prints this TypeConstraintException and its stack trace (including the stack trace
	* of the linkedException if it is non-null) to the PrintStream.
	*
	* @param s PrintStream to use for output
	*/
	@:overload public function printStackTrace(s : java.io.PrintStream) : Void;
	
	/**
	* Prints this TypeConstraintException and its stack trace (including the stack trace
	* of the linkedException if it is non-null) to <tt>System.err</tt>.
	*
	*/
	@:overload public function printStackTrace() : Void;
	
	
}
