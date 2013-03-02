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
* This class implements the Secure Hash Algorithm SHA-384 and SHA-512
* developed by the National Institute of Standards and Technology along
* with the National Security Agency.
*
* The two algorithms are almost identical. This file contains a base
* class SHA5 and two nested static subclasses as the classes to be used
* by the JCA framework.
*
* <p>It implements java.security.MessageDigestSpi, and can be used
* through Java Cryptography Architecture (JCA), as a pluggable
* MessageDigest implementation.
*
* @since       1.4.2
* @author      Valerie Peng
* @author      Andreas Sterbenz
*/
@:require(java4) @:internal extern class SHA5 extends sun.security.provider.DigestBase
{
	
}
/**
* SHA-512 implementation class.
*/
@:native('sun$security$provider$SHA5$SHA512') extern class SHA5_SHA512 extends sun.security.provider.SHA5
{
	@:overload public function new() : Void;
	
	@:overload override public function clone() : Dynamic;
	
	
}
/**
* SHA-384 implementation class.
*/
@:native('sun$security$provider$SHA5$SHA384') extern class SHA5_SHA384 extends sun.security.provider.SHA5
{
	@:overload public function new() : Void;
	
	@:overload override public function clone() : Dynamic;
	
	
}
