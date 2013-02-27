package com.sun.jmx.snmp;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Is an abstract representation of an SNMP Value.
* All classes provided for dealing with SNMP types should derive from this
* class.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpValue implements java.lang.Cloneable.Cloneable implements java.io.Serializable.Serializable implements SnmpDataTypeEnums
{
	/**
	* Returns a <CODE>String</CODE> form containing ASN.1 tagging information.
	* @return The <CODE>String</CODE> form.
	*/
	@:overload public function toAsn1String() : java.lang.String.String;
	
	/**
	* Returns the value encoded as an OID.
	* The method is particularly useful when dealing with indexed table made of
	* several SNMP variables.
	* @return The value encoded as an OID.
	*/
	@:overload @:abstract public function toOid() : SnmpOid;
	
	/**
	* Returns a textual description of the object.
	* @return ASN.1 textual description.
	*/
	@:overload @:abstract public function getTypeName() : java.lang.String.String;
	
	/**
	* Same as clone, but you cannot perform cloning using this object because
	* clone is protected. This method should call <CODE>clone()</CODE>.
	* @return The <CODE>SnmpValue</CODE> clone.
	*/
	@:overload @:abstract public function duplicate() : SnmpValue;
	
	/**
	* This method returns <CODE>false</CODE> by default and is redefined
	* in the {@link com.sun.jmx.snmp.SnmpNull} class.
	*/
	@:overload public function isNoSuchObjectValue() : Bool;
	
	/**
	* This method returns <CODE>false</CODE> by default and is redefined
	* in the {@link com.sun.jmx.snmp.SnmpNull} class.
	*/
	@:overload public function isNoSuchInstanceValue() : Bool;
	
	/**
	* This method returns <CODE>false</CODE> by default and is redefined
	* in the {@link com.sun.jmx.snmp.SnmpNull} class.
	*/
	@:overload public function isEndOfMibViewValue() : Bool;
	
	
}
