package com.sun.jmx.snmp;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Reports an error which occurred during a get/set operation on a mib node.
*
* This exception includes a status error code as defined in the SNMP protocol.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpStatusException extends java.lang.Exception.Exception implements SnmpDefinitions
{
	/**
	* Error code as defined in RFC 1448 for: <CODE>noSuchName</CODE>.
	*/
	public static var noSuchName(default, null) : Int;
	
	/**
	* Error code as defined in RFC 1448 for: <CODE>badValue</CODE>.
	*/
	public static var badValue(default, null) : Int;
	
	/**
	* Error code as defined in RFC 1448 for: <CODE>readOnly</CODE>.
	*/
	public static var readOnly(default, null) : Int;
	
	/**
	* Error code as defined in RFC 1448 for: <CODE>noAccess</CODE>.
	*/
	public static var noAccess(default, null) : Int;
	
	/**
	* Error code for reporting a no such instance error.
	*/
	public static var noSuchInstance(default, null) : Int;
	
	/**
	* Error code for reporting a no such object error.
	*/
	public static var noSuchObject(default, null) : Int;
	
	/**
	* Constructs a new <CODE>SnmpStatusException</CODE> with the specified status error.
	* @param status The error status.
	*/
	@:overload public function new(status : Int) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStatusException</CODE> with the specified status error and status index.
	* @param status The error status.
	* @param index The error index.
	*/
	@:overload public function new(status : Int, index : Int) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStatusException</CODE> with an error message.
	* The error status is set to 0 (noError) and the index to -1.
	* @param s The error message.
	*/
	@:overload public function new(s : java.lang.String.String) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStatusException</CODE> with an error index.
	* @param x The original <CODE>SnmpStatusException</CODE>.
	* @param index The error index.
	*/
	@:overload public function new(x : SnmpStatusException, index : Int) : Void;
	
	/**
	* Return the error status.
	* @return The error status.
	*/
	@:overload public function getStatus() : Int;
	
	/**
	* Returns the index of the error.
	* A value of -1 means that the index is not known/applicable.
	* @return The error index.
	*/
	@:overload public function getErrorIndex() : Int;
	
	
}
