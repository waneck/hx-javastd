package sun.security.provider;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class implements the Secure Hash Algorithm SHA-256 developed by
* the National Institute of Standards and Technology along with the
* National Security Agency.
*
* <p>It implements java.security.MessageDigestSpi, and can be used
* through Java Cryptography Architecture (JCA), as a pluggable
* MessageDigest implementation.
*
* @since       1.4.2
* @author      Valerie Peng
* @author      Andreas Sterbenz
*/
@:require(java4) extern class SHA2 extends sun.security.provider.DigestBase
{
	/**
	* Creates a new SHA object.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function clone() : Dynamic;
	
	
}
