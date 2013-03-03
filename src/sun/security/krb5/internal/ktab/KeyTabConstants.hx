package sun.security.krb5.internal.ktab;
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
/**
* This class represents a Key Table entry. Each entry contains the service principal of
* the key, time stamp, key version and secret key itself.
*
* @author Yanni Zhang
*/
extern interface KeyTabConstants
{
	@:final public var principalComponentSize(default, null) : Int;
	
	@:final public var realmSize(default, null) : Int;
	
	@:final public var principalSize(default, null) : Int;
	
	@:final public var principalTypeSize(default, null) : Int;
	
	@:final public var timestampSize(default, null) : Int;
	
	@:final public var keyVersionSize(default, null) : Int;
	
	@:final public var keyTypeSize(default, null) : Int;
	
	@:final public var keySize(default, null) : Int;
	
	
}
