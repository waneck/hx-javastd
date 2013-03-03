package java.net;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpRetryException extends java.io.IOException
{
	/**
	* Constructs a new <code>HttpRetryException</code> from the
	* specified response code and exception detail message
	*
	* @param   detail   the detail message.
	* @param   code   the HTTP response code from server.
	*/
	@:overload @:public public function new(detail : String, code : Int) : Void;
	
	/**
	* Constructs a new <code>HttpRetryException</code> with detail message
	* responseCode and the contents of the Location response header field.
	*
	* @param   detail   the detail message.
	* @param   code   the HTTP response code from server.
	* @param   location   the URL to be redirected to
	*/
	@:overload @:public public function new(detail : String, code : Int, location : String) : Void;
	
	/**
	* Returns the http response code
	*
	* @return  The http response code.
	*/
	@:overload @:public public function responseCode() : Int;
	
	/**
	* Returns a string explaining why the http request could
	* not be retried.
	*
	* @return  The reason string
	*/
	@:overload @:public public function getReason() : String;
	
	/**
	* Returns the value of the Location header field if the
	* error resulted from redirection.
	*
	* @return The location string
	*/
	@:overload @:public public function getLocation() : String;
	
	
}
