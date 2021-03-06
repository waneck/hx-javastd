package sun.security.internal.spec;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TlsRsaPremasterSecretParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a new TlsRsaPremasterSecretParameterSpec.
	*
	* <p>The version numbers will be placed inside the premaster secret to
	* detect version rollbacks attacks as described in the TLS specification.
	* Note that they do not indicate the protocol version negotiated for
	* the handshake.
	*
	* @param majorVersion the major number of the protocol version
	* @param minorVersion the minor number of the protocol version
	*
	* @throws IllegalArgumentException if minorVersion or majorVersion are
	*   negative or larger than 255
	*/
	@:overload @:public public function new(majorVersion : Int, minorVersion : Int) : Void;
	
	/**
	* Returns the major version.
	*
	* @return the major version.
	*/
	@:overload @:public public function getMajorVersion() : Int;
	
	/**
	* Returns the minor version.
	*
	* @return the minor version.
	*/
	@:overload @:public public function getMinorVersion() : Int;
	
	
}
