package sun.net.www.protocol.http;
/*
* Copyright (c) 2002, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class AuthenticationHeader
{
	@:overload @:public public function toString() : String;
	
	/**
	* parse a set of authentication headers and choose the preferred scheme
	* that we support for a given host
	*/
	@:overload @:public public function new(hdrname : String, response : sun.net.www.MessageHeader, hci : sun.net.www.protocol.http.HttpCallerInfo, dontUseNegotiate : Bool) : Void;
	
	@:overload @:public public function getHttpCallerInfo() : sun.net.www.protocol.http.HttpCallerInfo;
	
	/**
	* return a header parser containing the preferred authentication scheme (only).
	* The preferred scheme is the strongest of the schemes proposed by the server.
	* The returned HeaderParser will contain the relevant parameters for that scheme
	*/
	@:overload @:public public function headerParser() : sun.net.www.HeaderParser;
	
	/**
	* return the name of the preferred scheme
	*/
	@:overload @:public public function scheme() : String;
	
	/* return the raw header field for the preferred/chosen scheme */
	@:overload @:public public function raw() : String;
	
	/**
	* returns true is the header exists and contains a recognised scheme
	*/
	@:overload @:public public function isPresent() : Bool;
	
	
}
/* we build up a map of scheme names mapped to SchemeMapValue objects */
@:native('sun$net$www$protocol$http$AuthenticationHeader$SchemeMapValue') @:internal extern class AuthenticationHeader_SchemeMapValue
{
	
}
