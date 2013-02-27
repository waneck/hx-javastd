package javax.xml.bind;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This exception indicates that an error was encountered while getting or
* setting a property.
*
* @author <ul><li>Ryan Shoemaker, Sun Microsystems, Inc.</li><li>Kohsuke Kawaguchi, Sun Microsystems, Inc.</li><li>Joe Fialli, Sun Microsystems, Inc.</li></ul>
* @see JAXBContext
* @see Validator
* @see Unmarshaller
* @since JAXB1.0
*/
@:require(java0) extern class PropertyException extends javax.xml.bind.JAXBException
{
	/**
	* Construct a PropertyException with the specified detail message.  The
	* errorCode and linkedException will default to null.
	*
	* @param message a description of the exception
	*/
	@:overload public function new(message : String) : Void;
	
	/**
	* Construct a PropertyException with the specified detail message and
	* vendor specific errorCode.  The linkedException will default to null.
	*
	* @param message a description of the exception
	* @param errorCode a string specifying the vendor specific error code
	*/
	@:overload public function new(message : String, errorCode : String) : Void;
	
	/**
	* Construct a PropertyException with a linkedException.  The detail
	* message and vendor specific errorCode will default to null.
	*
	* @param exception the linked exception
	*/
	@:overload public function new(exception : java.lang.Throwable) : Void;
	
	/**
	* Construct a PropertyException with the specified detail message and
	* linkedException.  The errorCode will default to null.
	*
	* @param message a description of the exception
	* @param exception the linked exception
	*/
	@:overload public function new(message : String, exception : java.lang.Throwable) : Void;
	
	/**
	* Construct a PropertyException with the specified detail message, vendor
	* specific errorCode, and linkedException.
	*
	* @param message a description of the exception
	* @param errorCode a string specifying the vendor specific error code
	* @param exception the linked exception
	*/
	@:overload public function new(message : String, errorCode : String, exception : java.lang.Throwable) : Void;
	
	/**
	* Construct a PropertyException whose message field is set based on the
	* name of the property and value.toString().
	*
	* @param name the name of the property related to this exception
	* @param value the value of the property related to this exception
	*/
	@:overload public function new(name : String, value : Dynamic) : Void;
	
	
}
