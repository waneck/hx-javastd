package sun.security.krb5;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KdcComm
{
	/**
	* Read global settings
	*/
	@:overload public static function initStatic() : Void;
	
	@:overload public function new(realm : String) : Void;
	
	@:overload public function send(obuf : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* What to do when a KDC is unavailable, specified in the
* java.security file with key krb5.kdc.bad.policy.
* Possible values can be TRY_LAST or TRY_LESS. Reloaded when refreshed.
*/
@:native('sun$security$krb5$KdcComm$BpType') privateextern enum KdcComm_BpType
{
	NONE;
	TRY_LAST;
	TRY_LESS;
	
}

@:native('sun$security$krb5$KdcComm$KdcCommunication') @:internal extern class KdcComm_KdcCommunication implements java.security.PrivilegedExceptionAction<java.NativeArray<java.StdTypes.Int8>>
{
	@:overload public function new(kdc : String, port : Int, useTCP : Bool, timeout : Int, retries : Int, obuf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function run() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/**
* Maintains a KDC accessible list. Unavailable KDCs are put into a
* blacklist, when a KDC in the blacklist is available, it's removed
* from there. No insertion order in the blacklist.
*
* There are two methods to deal with KDCs in the blacklist. 1. Only try
* them when there's no KDC not on the blacklist. 2. Still try them, but
* with lesser number of retries and smaller timeout value.
*/
@:native('sun$security$krb5$KdcComm$KdcAccessibility') @:internal extern class KdcComm_KdcAccessibility
{
	
}
