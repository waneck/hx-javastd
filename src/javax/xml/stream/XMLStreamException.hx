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
* The base exception for unexpected processing errors.  This Exception
* class is used to report well-formedness errors as well as unexpected
* processing conditions.
* @version 1.0
* @author Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
* @since 1.6
*/
@:require(java6) extern class XMLStreamException extends java.lang.Exception
{
	@:protected private var nested : java.lang.Throwable;
	
	@:protected private var location : javax.xml.stream.Location;
	
	/**
	* Default constructor
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct an exception with the assocated message.
	*
	* @param msg the message to report
	*/
	@:overload @:public public function new(msg : String) : Void;
	
	/**
	* Construct an exception with the assocated exception
	*
	* @param th a nested exception
	*/
	@:overload @:public public function new(th : java.lang.Throwable) : Void;
	
	/**
	* Construct an exception with the assocated message and exception
	*
	* @param th a nested exception
	* @param msg the message to report
	*/
	@:overload @:public public function new(msg : String, th : java.lang.Throwable) : Void;
	
	/**
	* Construct an exception with the assocated message, exception and location.
	*
	* @param th a nested exception
	* @param msg the message to report
	* @param location the location of the error
	*/
	@:overload @:public public function new(msg : String, location : javax.xml.stream.Location, th : java.lang.Throwable) : Void;
	
	/**
	* Construct an exception with the assocated message, exception and location.
	*
	* @param msg the message to report
	* @param location the location of the error
	*/
	@:overload @:public public function new(msg : String, location : javax.xml.stream.Location) : Void;
	
	/**
	* Gets the nested exception.
	*
	* @return Nested exception
	*/
	@:overload @:public public function getNestedException() : java.lang.Throwable;
	
	/**
	* Gets the location of the exception
	*
	* @return the location of the exception, may be null if none is available
	*/
	@:overload @:public public function getLocation() : javax.xml.stream.Location;
	
	
}
