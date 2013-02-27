package sun.security.krb5.internal.util;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class KerberosString
{
	/**
	* RFC 4120 defines KerberosString as GeneralString (IA5String), which
	* only includes ASCII characters. However, other implementations have been
	* known to use GeneralString to contain UTF-8 encoding. To interop
	* with these implementations, the following system property is defined.
	* When set as true, KerberosString is encoded as UTF-8. Note that this
	* only affects the byte encoding, the tag of the ASN.1 type is still
	* GeneralString.
	*/
	public static var MSNAME(default, null) : Bool;
	
	@:overload public function new(s : String) : Void;
	
	@:overload public function new(der : sun.security.util.DerValue) : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function toDerValue() : sun.security.util.DerValue;
	
	
}
