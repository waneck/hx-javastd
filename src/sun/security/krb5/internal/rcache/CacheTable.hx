package sun.security.krb5.internal.rcache;
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
extern class CacheTable extends java.util.Hashtable<String, sun.security.krb5.internal.rcache.ReplayCache>
{
	@:overload @:public public function new() : Void;
	
	/**
	* Puts the client timestamp in replay cache.
	* @params principal the client's principal name.
	* @params time authenticator timestamp.
	*/
	@:overload @:public @:synchronized public function put(principal : String, time : sun.security.krb5.internal.rcache.AuthTime, currTime : haxe.Int64) : Void;
	
	/**
	* This method tests if replay cache keeps a record of the authenticator's time stamp.
	* If there is a record (replay attack detected), the server should reject the client request.
	* @params principal the client's principal name.
	* @params time authenticator timestamp.
	* @return null if no record found, else return an <code>AuthTime</code> object.
	*/
	@:overload @:public public function get(time : sun.security.krb5.internal.rcache.AuthTime, principal : String) : Dynamic;
	
	
}
