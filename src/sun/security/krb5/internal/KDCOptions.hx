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
extern class KDCOptions extends sun.security.krb5.internal.util.KerberosFlags
{
	/**
	* Implements the ASN.1 KDCOptions type.
	*
	* <xmp>
	* KDCOptions   ::= KerberosFlags
	*      -- reserved(0),
	*      -- forwardable(1),
	*      -- forwarded(2),
	*      -- proxiable(3),
	*      -- proxy(4),
	*      -- allow-postdate(5),
	*      -- postdated(6),
	*      -- unused7(7),
	*      -- renewable(8),
	*      -- unused9(9),
	*      -- unused10(10),
	*      -- opt-hardware-auth(11),
	*      -- unused12(12),
	*      -- unused13(13),
	* -- 15 is reserved for canonicalize
	*      -- unused15(15),
	* -- 26 was unused in 1510
	*      -- disable-transited-check(26),
	*      -- renewable-ok(27),
	*      -- enc-tkt-in-skey(28),
	*      -- renew(30),
	*      -- validate(31)
	*
	* KerberosFlags   ::= BIT STRING (SIZE (32..MAX))
	*                      -- minimum number of bits shall be sent,
	*                      -- but no fewer than 32
	*
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*
	* <p>
	* This class appears as data field in the initial request(KRB_AS_REQ)
	* or subsequent request(KRB_TGS_REQ) to the KDC and indicates the flags
	* that the client wants to set on the tickets.
	*
	* The optional bits are:
	* <UL>
	*  <LI>KDCOptions.RESERVED
	*  <LI>KDCOptions.FORWARDABLE
	*  <LI>KDCOptions.FORWARDED
	*  <LI>KDCOptions.PROXIABLE
	*  <LI>KDCOptions.PROXY
	*  <LI>KDCOptions.ALLOW_POSTDATE
	*  <LI>KDCOptions.POSTDATED
	*  <LI>KDCOptions.RENEWABLE
	*  <LI>KDCOptions.RENEWABLE_OK
	*  <LI>KDCOptions.ENC_TKT_IN_SKEY
	*  <LI>KDCOptions.RENEW
	*  <LI>KDCOptions.VALIDATE
	*  </UL>
	* <p> Various checks must be made before honoring an option. The restrictions
	* on the use of some options are as follows:
	* <ol>
	* <li> FORWARDABLE, FORWARDED, PROXIABLE, RENEWABLE options may be set in
	* subsequent request only if the ticket_granting ticket on which it is based has
	* the same options (FORWARDABLE, FORWARDED, PROXIABLE, RENEWABLE) set.
	* <li> ALLOW_POSTDATE may be set in subsequent request only if the
	* ticket-granting ticket on which it is based also has its MAY_POSTDATE flag set.
	* <li> POSTDATED may be set in subsequent request only if the
	* ticket-granting ticket on which it is based also has its MAY_POSTDATE flag set.
	* <li> RENEWABLE or RENEW may be set in subsequent request only if the
	* ticket-granting ticket on which it is based also has its RENEWABLE flag set.
	* <li> POXY may be set in subsequent request only if the ticket-granting ticket
	* on which it is based also has its PROXIABLE flag set, and the address(es) of
	* the host from which the resulting ticket is to be valid should be included
	* in the addresses field of the request.
	* <li>FORWARDED, PROXY, ENC_TKT_IN_SKEY, RENEW, VALIDATE are used only in
	* subsequent requests.
	* </ol><p>
	*/
	public var KDC_OPT_PROXIABLE(default, null) : Int;
	
	public var KDC_OPT_RENEWABLE_OK(default, null) : Int;
	
	public var KDC_OPT_FORWARDABLE(default, null) : Int;
	
	public static var RESERVED(default, null) : Int;
	
	public static var FORWARDABLE(default, null) : Int;
	
	public static var FORWARDED(default, null) : Int;
	
	public static var PROXIABLE(default, null) : Int;
	
	public static var PROXY(default, null) : Int;
	
	public static var ALLOW_POSTDATE(default, null) : Int;
	
	public static var POSTDATED(default, null) : Int;
	
	public static var UNUSED7(default, null) : Int;
	
	public static var RENEWABLE(default, null) : Int;
	
	public static var UNUSED9(default, null) : Int;
	
	public static var UNUSED10(default, null) : Int;
	
	public static var UNUSED11(default, null) : Int;
	
	public static var RENEWABLE_OK(default, null) : Int;
	
	public static var ENC_TKT_IN_SKEY(default, null) : Int;
	
	public static var RENEW(default, null) : Int;
	
	public static var VALIDATE(default, null) : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(size : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a KDCOptions from the specified bit settings.
	*
	* @param data the bits to be set for the KDCOptions.
	* @exception Asn1Exception if an error occurs while decoding an ASN1
	* encoded data.
	*
	*/
	@:overload public function new(data : java.NativeArray<Bool>) : Void;
	
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Constructs a KDCOptions from the passed bit settings.
	*
	* @param options the bits to be set for the KDCOptions.
	*
	*/
	@:overload public function new(options : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Parse (unmarshal) a KDCOptions from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @param data the Der input stream value, which contains one or more
	* marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @return an instance of KDCOptions.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : KDCOptions;
	
	/**
	* Sets the value(true/false) for one of the <code>KDCOptions</code>.
	*
	* @param option an option bit.
	* @param value true if the option is selected, false if the option is not selected.
	* @exception ArrayIndexOutOfBoundsException if array index out of bound occurs.
	* @see sun.security.krb5.internal.Krb5
	*/
	@:overload override public function set(option : Int, value : Bool) : Void;
	
	/**
	* Gets the value(true/false) for one of the <code>KDCOptions</code>.
	*
	* @param option an option bit.
	* @return value true if the option is selected, false if the option is not selected.
	* @exception ArrayIndexOutOfBoundsException if array index out of bound occurs.
	* @see sun.security.krb5.internal.Krb5
	*/
	@:overload override public function get(option : Int) : Bool;
	
	
}
