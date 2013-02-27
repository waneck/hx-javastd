package com.sun.jmx.snmp;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class is an internal class which is used to represent RowStatus
* codes as defined in RFC 2579.
*
* It defines an additional code, <i>unspecified</i>, which is
* implementation specific, and is used to identify
* unspecified actions (when for instance the RowStatus variable
* is not present in the varbind list) or uninitialized values.
*
* mibgen does not generate objects of this class but any variable
* using the RowStatus textual convention can be converted into an
* object of this class thanks to the
* <code>EnumRowStatus(Enumerated valueIndex)</code> constructor.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
**/
extern class EnumRowStatus extends com.sun.jmx.snmp.Enumerated.Enumerated implements java.io.Serializable.Serializable
{
	/**
	* This value is SNMP Runtime implementation specific, and is used to identify
	* unspecified actions (when for instance the RowStatus variable
	* is not present in the varbind list) or uninitialized values.
	*/
	public static var unspecified(default, null) : Int;
	
	/**
	* This value corresponds to the <i>active</i> RowStatus, as defined in
	* RFC 2579 from SMIv2:
	* <ul>
	* <i>active</i> indicates that the conceptual row is available for
	* use by the managed device;
	* </ul>
	*/
	public static var active(default, null) : Int;
	
	/**
	* This value corresponds to the <i>notInService</i> RowStatus, as
	* defined in RFC 2579 from SMIv2:
	* <ul>
	* <i>notInService</i> indicates that the conceptual
	* row exists in the agent, but is unavailable for use by
	* the managed device; <i>notInService</i> has
	* no implication regarding the internal consistency of
	* the row, availability of resources, or consistency with
	* the current state of the managed device;
	* </ul>
	**/
	public static var notInService(default, null) : Int;
	
	/**
	* This value corresponds to the <i>notReady</i> RowStatus, as defined
	* in RFC 2579 from SMIv2:
	* <ul>
	* <i>notReady</i> indicates that the conceptual row
	* exists in the agent, but is missing information
	* necessary in order to be available for use by the
	* managed device (i.e., one or more required columns in
	* the conceptual row have not been instantiated);
	* </ul>
	*/
	public static var notReady(default, null) : Int;
	
	/**
	* This value corresponds to the <i>createAndGo</i> RowStatus,
	* as defined in RFC 2579 from SMIv2:
	* <ul>
	* <i>createAndGo</i> is supplied by a management
	* station wishing to create a new instance of a
	* conceptual row and to have its status automatically set
	* to active, making it available for use by the managed
	* device;
	* </ul>
	*/
	public static var createAndGo(default, null) : Int;
	
	/**
	* This value corresponds to the <i>createAndWait</i> RowStatus,
	* as defined in RFC 2579 from SMIv2:
	* <ul>
	* <i>createAndWait</i> is supplied by a management
	* station wishing to create a new instance of a
	* conceptual row (but not make it available for use by
	* the managed device);
	* </ul>
	*/
	public static var createAndWait(default, null) : Int;
	
	/**
	* This value corresponds to the <i>destroy</i> RowStatus, as defined in
	* RFC 2579 from SMIv2:
	* <ul>
	* <i>destroy</i> is supplied by a management station
	* wishing to delete all of the instances associated with
	* an existing conceptual row.
	* </ul>
	*/
	public static var destroy(default, null) : Int;
	
	/**
	* Build an <code>EnumRowStatus</code> from an <code>int</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : Int) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from an <code>Enumerated</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : com.sun.jmx.snmp.Enumerated.Enumerated) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from a <code>long</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : haxe.Int64) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from an <code>Integer</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : java.lang.Integer.Integer) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from a <code>Long</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : java.lang.Long.Long) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> with <i>unspecified</i> value.
	**/
	@:overload public function new() : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from a <code>String</code>.
	* @param x should be either "unspecified", or one of
	*        the values defined in RFC 2579 ("active", "notReady", etc...)
	* @exception IllegalArgumentException if the given String
	*            <code>x</code> is not valid.
	**/
	@:overload public function new(x : java.lang.String.String) : Void;
	
	/**
	* Build an <code>EnumRowStatus</code> from an <code>SnmpInt</code>.
	* @param valueIndex should be either 0 (<i>unspecified</i>), or one of
	*        the values defined in RFC 2579.
	* @exception IllegalArgumentException if the given
	*            <code>valueIndex</code> is not valid.
	**/
	@:overload public function new(valueIndex : com.sun.jmx.snmp.SnmpInt.SnmpInt) : Void;
	
	/**
	* Build an SnmpValue from this object.
	*
	* @exception IllegalArgumentException if this object holds an
	*            <i>unspecified</i> value.
	* @return an SnmpInt containing this object value.
	**/
	@:overload public function toSnmpValue() : com.sun.jmx.snmp.SnmpInt.SnmpInt;
	
	/**
	* Check that the given <code>value</code> is valid.
	*
	* Valid values are:
	* <ul><li><i>unspecified(0)</i></li>
	*     <li><i>active(1)</i></li>
	*     <li><i>notInService(2)</i></li>
	*     <li><i>notReady(3)</i></li>
	*     <li><i>createAndGo(4)</i></li>
	*     <li><i>createAndWait(5)</i></li>
	*     <li><i>destroy(6)</i></li>
	* </ul>
	*
	**/
	@:overload public static function isValidValue(value : Int) : Bool;
	
	@:overload override private function getIntTable() : java.util.Hashtable.Hashtable<Dynamic, Dynamic>;
	
	@:overload override private function getStringTable() : java.util.Hashtable.Hashtable<Dynamic, Dynamic>;
	
	
}
