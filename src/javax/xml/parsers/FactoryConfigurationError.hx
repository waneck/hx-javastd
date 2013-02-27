package javax.xml.parsers;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Thrown when a problem with configuration with the Parser Factories
* exists. This error will typically be thrown when the class of a
* parser factory specified in the system properties cannot be found
* or instantiated.
*
* @author <a href="mailto:Jeff.Suttor@Sun.com">Jeff Suttor</a>
* @version $Revision: 1.7 $, $Date: 2010-11-01 04:36:09 $
*/
extern class FactoryConfigurationError extends java.lang.Error
{
	/**
	* Create a new <code>FactoryConfigurationError</code> with no
	* detail mesage.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new <code>FactoryConfigurationError</code> with
	* the <code>String </code> specified as an error message.
	*
	* @param msg The error message for the exception.
	*/
	@:overload public function new(msg : String) : Void;
	
	/**
	* Create a new <code>FactoryConfigurationError</code> with a
	* given <code>Exception</code> base cause of the error.
	*
	* @param e The exception to be encapsulated in a
	* FactoryConfigurationError.
	*/
	@:overload public function new(e : java.lang.Exception) : Void;
	
	/**
	* Create a new <code>FactoryConfigurationError</code> with the
	* given <code>Exception</code> base cause and detail message.
	*
	* @param e The exception to be encapsulated in a
	* FactoryConfigurationError
	* @param msg The detail message.
	*/
	@:overload public function new(e : java.lang.Exception, msg : String) : Void;
	
	/**
	* Return the message (if any) for this error . If there is no
	* message for the exception and there is an encapsulated
	* exception then the message of that exception, if it exists will be
	* returned. Else the name of the encapsulated exception will be
	* returned.
	*
	* @return The error message.
	*/
	@:overload override public function getMessage() : String;
	
	/**
	* Return the actual exception (if any) that caused this exception to
	* be raised.
	*
	* @return The encapsulated exception, or null if there is none.
	*/
	@:overload public function getException() : java.lang.Exception;
	
	/**
	* use the exception chaining mechanism of JDK1.4
	*/
	@:overload override public function getCause() : java.lang.Throwable;
	
	
}
