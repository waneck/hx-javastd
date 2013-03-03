package org.omg.CORBA;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Any implements org.omg.CORBA.portable.IDLEntity
{
	/**
	* Checks for equality between this <code>Any</code> object and the
	* given <code>Any</code> object.  Two <code>Any</code> objects are
	* equal if both their values and type codes are equal.
	*
	* @param a the <code>Any</code> object to test for equality
	* @return  <code>true</code> if the <code>Any</code> objects are equal;
	* <code>false</code> otherwise
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:abstract @:public public function equal(a : org.omg.CORBA.Any) : Bool;
	
	/**
	* Returns type information for the element contained in this
	* <code>Any</code> object.
	*
	* @return          the <code>TypeCode</code> object containing type information
	*                about the value contained in this <code>Any</code> object
	*/
	@:overload @:abstract @:public public function type() : org.omg.CORBA.TypeCode;
	
	/**
	* Sets this <code>Any</code> object's <code>type</code> field
	* to the given <code>TypeCode</code> object and clears its value.
	* <P>
	* Note that using this method to set the type code wipes out the
	* value if there is one. The method
	* is provided primarily so that the type may be set properly for
	* IDL <code>out</code> parameters.  Generally, setting the type
	* is done by the <code>insert_X</code> methods, which will set the type
	* to X if it is not already set to X.
	*
	* @param t       the <code>TypeCode</code> object giving
	*                information for the value in
	*                this <code>Any</code> object
	*/
	@:overload @:abstract @:public public function type(t : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Reads off (unmarshals) the value of an <code>Any</code> object from
	* the given input stream using the given typecode.
	*
	* @param is the <code>org.omg.CORBA.portable.InputStream</code>
	*                object from which to read
	*                the value contained in this <code>Any</code> object
	*
	* @param t  a <code>TypeCode</code> object containing type information
	*           about the value to be read
	*
	* @exception MARSHAL when the given <code>TypeCode</code> object is
	*                    not consistent with the value that was contained
	*                    in the input stream
	*/
	@:overload @:abstract @:public public function read_value(is : org.omg.CORBA.portable.InputStream, t : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Writes out the value of this <code>Any</code> object
	* to the given output stream.  If both <code>typecode</code>
	* and <code>value</code> need to be written, use
	* <code>create_output_stream()</code> to create an <code>OutputStream</code>,
	* then use <code>write_any</code> on the <code>OutputStream</code>.
	* <P>
	* If this method is called on an <code>Any</code> object that has not
	* had a value inserted into its <code>value</code> field, it will throw
	* the exception <code>java.lang.NullPointerException</code>.
	*
	* @param os        the <code>org.omg.CORBA.portable.OutputStream</code>
	*                object into which to marshal the value
	*                of this <code>Any</code> object
	*
	*/
	@:overload @:abstract @:public public function write_value(os : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Creates an output stream into which this <code>Any</code> object's
	* value can be marshalled.
	*
	* @return          the newly-created <code>OutputStream</code>
	*/
	@:overload @:abstract @:public public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	/**
	* Creates an input stream from which this <code>Any</code> object's value
	* can be unmarshalled.
	*
	* @return          the newly-created <code>InputStream</code>
	*/
	@:overload @:abstract @:public public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	/**
	* Extracts the <code>short</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>short</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>short</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_short() : java.StdTypes.Int16;
	
	/**
	* Inserts the given <code>short</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param s         the <code>short</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_short(s : java.StdTypes.Int16) : Void;
	
	/**
	* Extracts the <code>int</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>int</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than an <code>int</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_long() : Int;
	
	/**
	* Inserts the given <code>int</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param l         the <code>int</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_long(l : Int) : Void;
	
	/**
	* Extracts the <code>long</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>long</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>long</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_longlong() : haxe.Int64;
	
	/**
	* Inserts the given <code>long</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param l         the <code>long</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_longlong(l : haxe.Int64) : Void;
	
	/**
	* Extracts the <code>short</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>short</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>short</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_ushort() : java.StdTypes.Int16;
	
	/**
	* Inserts the given <code>short</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param s         the <code>short</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_ushort(s : java.StdTypes.Int16) : Void;
	
	/**
	* Extracts the <code>int</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>int</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than an <code>int</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_ulong() : Int;
	
	/**
	* Inserts the given <code>int</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param l         the <code>int</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_ulong(l : Int) : Void;
	
	/**
	* Extracts the <code>long</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>long</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>long</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_ulonglong() : haxe.Int64;
	
	/**
	* Inserts the given <code>long</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param l         the <code>long</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_ulonglong(l : haxe.Int64) : Void;
	
	/**
	* Extracts the <code>float</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>float</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>float</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_float() : Single;
	
	/**
	* Inserts the given <code>float</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param f         the <code>float</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_float(f : Single) : Void;
	
	/**
	* Extracts the <code>double</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>double</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>double</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_double() : Float;
	
	/**
	* Inserts the given <code>double</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param d         the <code>double</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_double(d : Float) : Void;
	
	/**
	* Extracts the <code>boolean</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>boolean</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>boolean</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_boolean() : Bool;
	
	/**
	* Inserts the given <code>boolean</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param b         the <code>boolean</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_boolean(b : Bool) : Void;
	
	/**
	* Extracts the <code>char</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>char</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>char</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_char() : java.StdTypes.Char16;
	
	/**
	* Inserts the given <code>char</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param c         the <code>char</code> to insert into this
	*                <code>Any</code> object
	* @exception DATA_CONVERSION if there is a data conversion
	*            error
	*/
	@:overload @:abstract @:public public function insert_char(c : java.StdTypes.Char16) : Void;
	
	/**
	* Extracts the <code>char</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>char</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>char</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_wchar() : java.StdTypes.Char16;
	
	/**
	* Inserts the given <code>char</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param c         the <code>char</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_wchar(c : java.StdTypes.Char16) : Void;
	
	/**
	* Extracts the <code>byte</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>byte</code> stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>byte</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_octet() : java.StdTypes.Int8;
	
	/**
	* Inserts the given <code>byte</code>
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param b         the <code>byte</code> to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_octet(b : java.StdTypes.Int8) : Void;
	
	/**
	* Extracts the <code>Any</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>Any</code> object stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this <code>Any</code> object
	*              contains something other than an <code>Any</code> object or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_any() : org.omg.CORBA.Any;
	
	/**
	* Inserts the given <code>Any</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param a         the <code>Any</code> object to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_any(a : org.omg.CORBA.Any) : Void;
	
	/**
	* Extracts the <code>org.omg.CORBA.Object</code> in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>org.omg.CORBA.Object</code> stored in
	*         this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than an
	*              <code>org.omg.CORBA.Object</code> or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_Object() : org.omg.CORBA.Object;
	
	/**
	* Inserts the given <code>org.omg.CORBA.Object</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param o         the <code>org.omg.CORBA.Object</code> object to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_Object(o : org.omg.CORBA.Object) : Void;
	
	/**
	* Extracts the <code>java.io.Serializable</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>java.io.Serializable</code> object stored in
	*         this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>java.io.Serializable</code>
	*              object or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_Value() : java.io.Serializable;
	
	/**
	* Inserts the given <code>java.io.Serializable</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param v         the <code>java.io.Serializable</code> object to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_Value(v : java.io.Serializable) : Void;
	
	/**
	* Inserts the given <code>java.io.Serializable</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param v         the <code>java.io.Serializable</code> object to insert into this
	*                <code>Any</code> object
	* @param t     the <code>TypeCode</code> object that is to be inserted into
	*              this <code>Any</code> object's <code>type</code> field
	*              and that describes the <code>java.io.Serializable</code>
	*              object being inserted
	* @throws MARSHAL if the ORB has a problem marshalling or
	*          unmarshalling parameters
	*/
	@:overload @:abstract @:public public function insert_Value(v : java.io.Serializable, t : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Inserts the given <code>org.omg.CORBA.Object</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param o         the <code>org.omg.CORBA.Object</code> instance to insert into this
	*                <code>Any</code> object
	* @param t     the <code>TypeCode</code> object that is to be inserted into
	*              this <code>Any</code> object and that describes
	*              the <code>Object</code> being inserted
	* @exception BAD_OPERATION if this  method is invalid for this
	*            <code>Any</code> object
	*
	*/
	@:overload @:abstract @:public public function insert_Object(o : org.omg.CORBA.Object, t : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Extracts the <code>String</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>String</code> object stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>String</code> object or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_string() : String;
	
	/**
	* Inserts the given <code>String</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param s         the <code>String</code> object to insert into this
	*                <code>Any</code> object
	* @exception DATA_CONVERSION if there is a data conversion error
	* @exception MARSHAL if the ORB has a problem marshalling or
	*             unmarshalling parameters
	*/
	@:overload @:abstract @:public public function insert_string(s : String) : Void;
	
	/**
	* Extracts the <code>String</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>String</code> object stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>String</code> object or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_wstring() : String;
	
	/**
	* Inserts the given <code>String</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param s         the <code>String</code> object to insert into this
	*                <code>Any</code> object
	* @exception MARSHAL if the ORB has a problem marshalling or
	*             unmarshalling parameters
	*/
	@:overload @:abstract @:public public function insert_wstring(s : String) : Void;
	
	/**
	* Extracts the <code>TypeCode</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>TypeCode</code> object stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a <code>TypeCode</code> object or the
	*              <code>value</code> field has not yet been set
	*/
	@:overload @:abstract @:public public function extract_TypeCode() : org.omg.CORBA.TypeCode;
	
	/**
	* Inserts the given <code>TypeCode</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param t         the <code>TypeCode</code> object to insert into this
	*                <code>Any</code> object
	*/
	@:overload @:abstract @:public public function insert_TypeCode(t : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Extracts the <code>Principal</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	* Note that the class <code>Principal</code> has been deprecated.
	*
	* @return the <code>Principal</code> object stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a
	*              <code>Principal</code> object or the
	*              <code>value</code> field has not yet been set
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Deprecated by CORBA 2.2.
	*/
	@:overload @:public public function extract_Principal() : org.omg.CORBA.Principal;
	
	/**
	* Inserts the given <code>Principal</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	* Note that the class <code>Principal</code> has been deprecated.
	*
	* @param p         the <code>Principal</code> object to insert into this
	*                <code>Any</code> object
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	* @deprecated Deprecated by CORBA 2.2.
	*/
	@:overload @:public public function insert_Principal(p : org.omg.CORBA.Principal) : Void;
	
	/**
	* Extracts a <code>Streamable</code> from this <code>Any</code> object's
	* <code>value</code> field.  This method allows the extraction of
	* non-primitive IDL types.
	*
	* @return the <code>Streamable</code> stored in the <code>Any</code> object.
	* @throws BAD_INV_ORDER if the caller has invoked operations in the wrong order
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:public public function extract_Streamable() : org.omg.CORBA.portable.Streamable;
	
	/**
	* Inserts the given <code>Streamable</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	* This method allows the insertion of non-primitive IDL types.
	*
	* @param s         the <code>Streamable</code> object to insert into this
	*                <code>Any</code> object; may be a non-primitive
	*                IDL type
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:public public function insert_Streamable(s : org.omg.CORBA.portable.Streamable) : Void;
	
	/**
	* Extracts the <code>java.math.BigDecimal</code> object in this
	* <code>Any</code> object's <code>value</code> field.
	*
	* @return the <code>java.math.BigDecimal</code> object
	*         stored in this <code>Any</code> object
	* @exception BAD_OPERATION if this  <code>Any</code> object
	*              contains something other than a
	*              <code>java.math.BigDecimal</code> object or the
	*              <code>value</code> field has not yet been set
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:public public function extract_fixed() : java.math.BigDecimal;
	
	/**
	* Throws an <a href="package-summary.html#NO_IMPLEMENT">
	* <code>org.omg.CORBA.NO_IMPLEMENT</code></a> exception.
	* <P>
	* Inserts the given <code>java.math.BigDecimal</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param value             the <code>java.math.BigDecimal</code> object
	*                  to insert into this <code>Any</code> object
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:public public function insert_fixed(value : java.math.BigDecimal) : Void;
	
	/**
	* Throws an <a href="package-summary.html#NO_IMPLEMENT">
	* <code>org.omg.CORBA.NO_IMPLEMENT</code></a> exception.
	* <P>
	* Inserts the given <code>java.math.BigDecimal</code> object
	* into this <code>Any</code> object's <code>value</code> field.
	*
	* @param value             the <code>java.math.BigDecimal</code> object
	*                  to insert into this <code>Any</code> object
	* @param type     the <code>TypeCode</code> object that is to be inserted into
	*              this <code>Any</code> object's <code>type</code> field
	*              and that describes the <code>java.math.BigDecimal</code>
	*              object being inserted
	* @throws org.omg.CORBA.BAD_INV_ORDER if this method is  invoked improperly
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:public public function insert_fixed(value : java.math.BigDecimal, type : org.omg.CORBA.TypeCode) : Void;
	
	
}
