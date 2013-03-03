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
extern class TicketFlags extends sun.security.krb5.internal.util.KerberosFlags
{
	/**
	* Implements the ASN.1TicketFlags type.
	*
	*    TicketFlags ::= BIT STRING
	*                  {
	*                   reserved(0),
	*                   forwardable(1),
	*                   forwarded(2),
	*                   proxiable(3),
	*                   proxy(4),
	*                   may-postdate(5),
	*                   postdated(6),
	*                   invalid(7),
	*                   renewable(8),
	*                   initial(9),
	*                   pre-authent(10),
	*                   hw-authent(11)
	*                  }
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(flags : java.NativeArray<Bool>) : Void;
	
	@:overload @:public public function new(size : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Parse (unmarshal) a ticket flag from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @return an instance of TicketFlags.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.internal.TicketFlags;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function match(options : sun.security.krb5.internal.LoginOptions) : Bool;
	
	@:overload @:public public function match(flags : sun.security.krb5.internal.TicketFlags) : Bool;
	
	/**
	* Returns the string representative of ticket flags.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
