package sun.security.ssl;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Type safe enum for an SSL/TLS protocol version. Instances are obtained
* using the static factory methods or by referencing the static members
* in this class. Member variables are final and can be accessed without
* accessor methods.
*
* There is only ever one instance per supported protocol version, this
* means == can be used for comparision instead of equals() if desired.
*
* Checks for a particular version number should generally take this form:
*
* if (protocolVersion.v >= ProtocolVersion.TLS10) {
*   // TLS 1.0 code goes here
* } else {
*   // SSL 3.0 code here
* }
*
* @author  Andreas Sterbenz
* @since   1.4.1
*/
@:require(java4) extern class ProtocolVersion implements java.lang.Comparable<ProtocolVersion>
{
	public var v(default, null) : Int;
	
	public var major(default, null) : java.StdTypes.Int8;
	
	/**
	* Return a ProtocolVersion with the specified major and minor version
	* numbers. Never throws exceptions.
	*/
	@:overload public static function valueOf(major : Int, minor : Int) : ProtocolVersion;
	
	@:overload public function toString() : String;
	
	/**
	* Compares this object with the specified object for order.
	*/
	@:overload public function compareTo(protocolVersion : ProtocolVersion) : Int;
	
	
}
