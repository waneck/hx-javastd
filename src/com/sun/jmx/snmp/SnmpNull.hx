package com.sun.jmx.snmp;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Represents an SNMP null value.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpNull extends com.sun.jmx.snmp.SnmpValue.SnmpValue
{
	/**
	* Constructs a new <CODE>SnmpNull</CODE>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <CODE>SnmpNull</CODE>.
	* <BR>For mibgen private use only.
	*/
	@:overload public function new(dummy : java.lang.String.String) : Void;
	
	/**
	* Constructs a new <CODE>SnmpNull</CODE> from the specified tag value.
	* @param t The initialization value.
	*/
	@:overload public function new(t : Int) : Void;
	
	/**
	* Returns the tag value of this <CODE>SnmpNull</CODE>.
	* @return The value.
	*/
	@:overload public function getTag() : Int;
	
	/**
	* Converts the <CODE>NULL</CODE> value to its ASN.1 <CODE>String</CODE> form.
	* When the tag is not the universal one, it is preprended
	* to the <CODE>String</CODE> form.
	* @return The <CODE>String</CODE> representation of the value.
	*/
	@:overload public function toString() : java.lang.String.String;
	
	/**
	* Converts the <CODE>NULL</CODE> value to its <CODE>SnmpOid</CODE> form.
	* Normally, a <CODE>NULL</CODE> value cannot be used as an index value,
	* this method triggers an exception.
	* @return The OID representation of the value.
	*/
	@:overload override public function toOid() : SnmpOid;
	
	/**
	* Performs a clone action. This provides a workaround for the
	* <CODE>SnmpValue</CODE> interface.
	* @return The SnmpValue clone.
	*/
	@:overload @:final @:synchronized override public function duplicate() : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Clones the <CODE>SnmpNull</CODE> object, making a copy of its data.
	* @return The object clone.
	*/
	@:overload @:final @:synchronized public function clone() : java.lang.Object.Object;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload @:final override public function getTypeName() : java.lang.String.String;
	
	/**
	* Checks if this <CODE>SnmpNull</CODE> object corresponds to a <CODE>noSuchObject</CODE> value.
	* @return <CODE>true</CODE> if the tag equals {@link com.sun.jmx.snmp.SnmpDataTypeEnums#errNoSuchObjectTag},
	* <CODE>false</CODE> otherwise.
	*/
	@:overload override public function isNoSuchObjectValue() : Bool;
	
	/**
	* Checks if this <CODE>SnmpNull</CODE> object corresponds to a <CODE>noSuchInstance</CODE> value.
	* @return <CODE>true</CODE> if the tag equals {@link com.sun.jmx.snmp.SnmpDataTypeEnums#errNoSuchInstanceTag},
	* <CODE>false</CODE> otherwise.
	*/
	@:overload override public function isNoSuchInstanceValue() : Bool;
	
	/**
	* Checks if this <CODE>SnmpNull</CODE> object corresponds to an <CODE>endOfMibView</CODE> value.
	* @return <CODE>true</CODE> if the tag equals {@link com.sun.jmx.snmp.SnmpDataTypeEnums#errEndOfMibViewTag},
	* <CODE>false</CODE> otherwise.
	*/
	@:overload override public function isEndOfMibViewValue() : Bool;
	
	
}
