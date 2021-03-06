package sun.security.provider;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* The MD4 class is used to compute an MD4 message digest over a given
* buffer of bytes. It is an implementation of the RSA Data Security Inc
* MD4 algorithim as described in internet RFC 1320.
*
* <p>The MD4 algorithm is very weak and should not be used unless it is
* unavoidable. Therefore, it is not registered in our standard providers. To
* obtain an implementation, call the static getInstance() method in this
* class.
*
* @author      Andreas Sterbenz
*/
extern class MD4 extends sun.security.provider.DigestBase
{
	@:overload @:public @:static public static function getInstance() : java.security.MessageDigest;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function clone() : Dynamic;
	
	
}
