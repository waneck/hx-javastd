package sun.security.krb5.internal;
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
extern class KerberosTime implements java.lang.Cloneable
{
	@:public @:static @:final public static var NOW(default, null) : Bool;
	
	@:public @:static @:final public static var UNADJUSTED_NOW(default, null) : Bool;
	
	@:overload @:public public function new(time : haxe.Int64) : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function new(time : String) : Void;
	
	/**
	* Constructs a KerberosTime object.
	* @param encoding a DER-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	@:overload @:public @:static public static function zeroPad(s : String, length : Int) : String;
	
	@:overload @:public public function new(time : java.util.Date) : Void;
	
	@:overload @:public public function new(initToNow : Bool) : Void;
	
	/**
	* Returns a string representation of KerberosTime object.
	* @return a string representation of this object.
	*/
	@:overload @:public public function toGeneralizedTimeString() : String;
	
	/**
	* Encodes this object to a byte array.
	* @return a byte array of encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getTime() : haxe.Int64;
	
	@:overload @:public public function setTime(time : java.util.Date) : Void;
	
	@:overload @:public public function setTime(time : haxe.Int64) : Void;
	
	@:overload @:public public function toDate() : java.util.Date;
	
	@:overload @:public public function setNow() : Void;
	
	@:overload @:public public function getMicroSeconds() : Int;
	
	@:overload @:public public function setMicroSeconds(usec : Int) : Void;
	
	@:overload @:public public function setMicroSeconds(usec : Null<Int>) : Void;
	
	@:overload @:public public function inClockSkew(clockSkew : Int) : Bool;
	
	@:overload @:public public function inClockSkew() : Bool;
	
	@:overload @:public public function inClockSkew(clockSkew : Int, now : sun.security.krb5.internal.KerberosTime) : Bool;
	
	@:overload @:public public function inClockSkew(time : sun.security.krb5.internal.KerberosTime) : Bool;
	
	@:overload @:public public function greaterThanWRTClockSkew(time : sun.security.krb5.internal.KerberosTime, clockSkew : Int) : Bool;
	
	@:overload @:public public function greaterThanWRTClockSkew(time : sun.security.krb5.internal.KerberosTime) : Bool;
	
	@:overload @:public public function greaterThan(time : sun.security.krb5.internal.KerberosTime) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function isZero() : Bool;
	
	@:overload @:public public function getSeconds() : Int;
	
	@:overload @:public public function setSeconds(sec : Int) : Void;
	
	/**
	* Parse (unmarshal) a kerberostime from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of KerberosTime.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.internal.KerberosTime;
	
	@:overload @:public @:static public static function getDefaultSkew() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
