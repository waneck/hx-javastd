package javax.xml.stream;
/*
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
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
/**
* An error class for reporting factory configuration errors.
*
* @version 1.0
* @author Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
* @since 1.6
*/
@:require(java6) extern class FactoryConfigurationError extends java.lang.Error
{
	/**
	* Default constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct an exception with a nested inner exception
	*
	* @param e the exception to nest
	*/
	@:overload public function new(e : java.lang.Exception) : Void;
	
	/**
	* Construct an exception with a nested inner exception
	* and a message
	*
	* @param e the exception to nest
	* @param msg the message to report
	*/
	@:overload public function new(e : java.lang.Exception, msg : String) : Void;
	
	/**
	* Construct an exception with a nested inner exception
	* and a message
	*
	* @param msg the message to report
	* @param e the exception to nest
	*/
	@:overload public function new(msg : String, e : java.lang.Exception) : Void;
	
	/**
	* Construct an exception with associated message
	*
	* @param msg the message to report
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Return the nested exception (if any)
	*
	* @return the nested exception or null
	*/
	@:overload public function getException() : java.lang.Exception;
	
	/**
	* use the exception chaining mechanism of JDK1.4
	*/
	@:overload override public function getCause() : java.lang.Throwable;
	
	/**
	* Report the message associated with this error
	*
	* @return the string value of the message
	*/
	@:overload override public function getMessage() : String;
	
	
}
