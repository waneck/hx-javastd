package sun.security.krb5.internal.crypto;
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
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class DesCbcMd5EType extends sun.security.krb5.internal.crypto.DesCbcEType
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function eType() : Int;
	
	@:overload @:public override public function minimumPadSize() : Int;
	
	@:overload @:public override public function confounderSize() : Int;
	
	@:overload @:public override public function checksumType() : Int;
	
	@:overload @:public override public function checksumSize() : Int;
	
	/**
	* Calculates checksum using MD5.
	* @param data the input data.
	* @param size the length of data.
	* @return the checksum.
	*
	* @modified by Yanni Zhang, 12/06/99.
	*/
	@:overload @:protected override private function calculateChecksum(data : java.NativeArray<java.StdTypes.Int8>, size : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
