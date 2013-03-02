package org.omg.CORBA;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* The Java mapping of the IDL enum <code>TCKind</code>, which
* specifies the kind of a <code>TypeCode</code> object.  There is
* one kind for each primitive and essential IDL data type.
* <P>
* The class <code>TCKind</code> consists of:
* <UL>
* <LI>a set of <code>int</code> constants, one for each
* kind of IDL data type.  These <code>int</code> constants
* make it possible to use a <code>switch</code> statement.
* <LI>a set of <code>TCKind</code> constants, one for each
* kind of IDL data type.  The <code>value</code> field for
* each <code>TCKind</code> instance is initialized with
* the <code>int</code> constant that corresponds with
* the IDL data type that the instance represents.
* <LI>the method <code>from_int</code>for converting
* an <code>int</code> to its
* corresponding <code>TCKind</code> instance
* <P>Example:
* <PRE>
*      org.omg.CORBA.TCKind k = org.omg.CORBA.TCKind.from_int(
*                         org.omg.CORBA.TCKind._tk_string);
* </PRE>
* The variable <code>k</code> represents the <code>TCKind</code>
* instance for the IDL type <code>string</code>, which is
* <code>tk_string</code>.
* <P>
* <LI>the method <code>value</code> for accessing the
* <code>_value</code> field of a <code>TCKind</code> constant
* <P>Example:
* <PRE>
*   int i = org.omg.CORBA.TCKind.tk_char.value();
* </PRE>
* The variable <code>i</code> represents 9, the value for the
* IDL data type <code>char</code>.
* </UL>
* <P>The <code>value</code> field of a <code>TCKind</code> instance
* is the CDR encoding used for a <code>TypeCode</code> object in
* an IIOP message.
*/
extern class TCKind
{
	/**
	* The <code>int</code> constant for a <code>null</code> IDL data type.
	*/
	public static var _tk_null(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>void</code>.
	*/
	public static var _tk_void(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>short</code>.
	*/
	public static var _tk_short(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>long</code>.
	*/
	public static var _tk_long(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>ushort</code>.
	*/
	public static var _tk_ushort(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>ulong</code>.
	*/
	public static var _tk_ulong(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>float</code>.
	*/
	public static var _tk_float(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>double</code>.
	*/
	public static var _tk_double(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>boolean</code>.
	*/
	public static var _tk_boolean(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>char</code>.
	*/
	public static var _tk_char(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>octet</code>.
	*/
	public static var _tk_octet(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>any</code>.
	*/
	public static var _tk_any(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>TypeCode</code>.
	*/
	public static var _tk_TypeCode(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>Principal</code>.
	*/
	public static var _tk_Principal(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>objref</code>.
	*/
	public static var _tk_objref(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>struct</code>.
	*/
	public static var _tk_struct(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>union</code>.
	*/
	public static var _tk_union(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>enum</code>.
	*/
	public static var _tk_enum(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>string</code>.
	*/
	public static var _tk_string(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>sequence</code>.
	*/
	public static var _tk_sequence(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>array</code>.
	*/
	public static var _tk_array(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>alias</code>.
	*/
	public static var _tk_alias(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>except</code>.
	*/
	public static var _tk_except(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>longlong</code>.
	*/
	public static var _tk_longlong(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>ulonglong</code>.
	*/
	public static var _tk_ulonglong(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>longdouble</code>.
	*/
	public static var _tk_longdouble(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>wchar</code>.
	*/
	public static var _tk_wchar(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>wstring</code>.
	*/
	public static var _tk_wstring(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>fixed</code>.
	*/
	public static var _tk_fixed(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>value</code>.
	*/
	public static var _tk_value(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>value_box</code>.
	*/
	public static var _tk_value_box(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>native</code>.
	*/
	public static var _tk_native(default, null) : Int;
	
	/**
	* The <code>int</code> constant for the IDL data type <code>abstract interface</code>.
	*/
	public static var _tk_abstract_interface(default, null) : Int;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_null</code>.
	*/
	public static var tk_null(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_void</code>.
	*/
	public static var tk_void(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_short</code>.
	*/
	public static var tk_short(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_long</code>.
	*/
	public static var tk_long(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_ushort</code>.
	*/
	public static var tk_ushort(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_ulong</code>.
	*/
	public static var tk_ulong(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_float</code>.
	*/
	public static var tk_float(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_double</code>.
	*/
	public static var tk_double(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_boolean</code>.
	*/
	public static var tk_boolean(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_char</code>.
	*/
	public static var tk_char(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_octet</code>.
	*/
	public static var tk_octet(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_any</code>.
	*/
	public static var tk_any(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_TypeCode</code>.
	*/
	public static var tk_TypeCode(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_Principal</code>.
	*/
	public static var tk_Principal(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_objref</code>.
	*/
	public static var tk_objref(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_struct</code>.
	*/
	public static var tk_struct(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_union</code>.
	*/
	public static var tk_union(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_enum</code>.
	*/
	public static var tk_enum(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_string</code>.
	*/
	public static var tk_string(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_sequence</code>.
	*/
	public static var tk_sequence(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_array</code>.
	*/
	public static var tk_array(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_alias</code>.
	*/
	public static var tk_alias(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_except</code>.
	*/
	public static var tk_except(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_longlong</code>.
	*/
	public static var tk_longlong(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_ulonglong</code>.
	*/
	public static var tk_ulonglong(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_longdouble</code>.
	*/
	public static var tk_longdouble(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_wchar</code>.
	*/
	public static var tk_wchar(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_wstring</code>.
	*/
	public static var tk_wstring(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_fixed</code>.
	*/
	public static var tk_fixed(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_value</code>.
	*/
	public static var tk_value(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_value_box</code>.
	*/
	public static var tk_value_box(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_native</code>.
	*/
	public static var tk_native(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* The <code>TCKind</code> constant whose <code>value</code> field is
	* initialized with <code>TCKind._tk_abstract_interface</code>.
	*/
	public static var tk_abstract_interface(default, null) : org.omg.CORBA.TCKind;
	
	/**
	* Retrieves the value of this <code>TCKind</code> instance.
	*
	* @return  the <code>int</code> that represents the kind of
	* IDL data type for this <code>TCKind</code> instance
	*/
	@:overload public function value() : Int;
	
	/**
	* Converts the given <code>int</code> to the corresponding
	* <code>TCKind</code> instance.
	*
	* @param i the <code>int</code> to convert.  It must be one of
	*         the <code>int</code> constants in the class
	*         <code>TCKind</code>.
	* @return  the <code>TCKind</code> instance whose <code>value</code>
	* field matches the given <code>int</code>
	* @exception  BAD_PARAM  if the given <code>int</code> does not
	* match the <code>_value</code> field of
	* any <code>TCKind</code> instance
	*/
	@:overload public static function from_int(i : Int) : org.omg.CORBA.TCKind;
	
	/**
	* Creates a new <code>TCKind</code> instance initialized with the given
	* <code>int</code>.
	* @deprecated Do not use this constructor as this method should be private
	* according to the OMG specification. Use {@link #from_int(int)} instead.
	*
	* @param  _value the <code>int</code> to convert.  It must be one of
	*         the <code>int</code> constants in the class
	*         <code>TCKind</code>.
	*/
	@:overload private function new(_value : Int) : Void;
	
	
}
