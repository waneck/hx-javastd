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
extern class KeyTabEntry implements sun.security.krb5.internal.ktab.KeyTabConstants
{
	@:overload @:public public function new(new_service : sun.security.krb5.PrincipalName, new_realm : sun.security.krb5.Realm, new_time : sun.security.krb5.internal.KerberosTime, new_keyVersion : Int, new_keyType : Int, new_keyblock : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function getService() : sun.security.krb5.PrincipalName;
	
	@:overload @:public public function getKey() : sun.security.krb5.EncryptionKey;
	
	@:overload @:public public function getKeyString() : String;
	
	@:overload @:public public function entryLength() : Int;
	
	@:overload @:public public function getTimeStamp() : sun.security.krb5.internal.KerberosTime;
	
	
}
