package javax.naming.ldap;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* This class provides a basic implementation of the <tt>Control</tt>
* interface. It represents an LDAPv3 Control as defined in
* <a href="http://www.ietf.org/rfc/rfc2251.txt">RFC 2251</a>.
*
* @since 1.5
* @author Vincent Ryan
*/
@:require(java5) extern class BasicControl implements javax.naming.ldap.Control
{
	/**
	* The control's object identifier string.
	*
	* @serial
	*/
	private var id : String;
	
	/**
	* The control's criticality.
	*
	* @serial
	*/
	private var criticality : Bool;
	
	/**
	* The control's ASN.1 BER encoded value.
	*
	* @serial
	*/
	private var value : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Constructs a non-critical control.
	*
	* @param   id      The control's object identifier string.
	*
	*/
	@:overload public function new(id : String) : Void;
	
	/**
	* Constructs a control using the supplied arguments.
	*
	* @param   id              The control's object identifier string.
	* @param   criticality     The control's criticality.
	* @param   value           The control's ASN.1 BER encoded value.
	*                          It is not cloned - any changes to value
	*                          will affect the contents of the control.
	*                          It may be null.
	*/
	@:overload public function new(id : String, criticality : Bool, value : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Retrieves the control's object identifier string.
	*
	* @return The non-null object identifier string.
	*/
	@:overload public function getID() : String;
	
	/**
	* Determines the control's criticality.
	*
	* @return true if the control is critical; false otherwise.
	*/
	@:overload public function isCritical() : Bool;
	
	/**
	* Retrieves the control's ASN.1 BER encoded value.
	* The result includes the BER tag and length for the control's value but
	* does not include the control's object identifier and criticality setting.
	*
	* @return A possibly null byte array representing the control's
	*          ASN.1 BER encoded value. It is not cloned - any changes to the
	*          returned value will affect the contents of the control.
	*/
	@:overload public function getEncodedValue() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
