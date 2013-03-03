package com.sun.corba.se.impl.corba;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class AnyImpl extends org.omg.CORBA.Any
{
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	/**
	* A constructor that sets the Any to contain a null. It also marks
	* the value as being invalid so that extractions throw an exception
	* until an insertion has been performed.
	*/
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, obj : org.omg.CORBA.Any) : Void;
	
	/**
	* returns the type of the element contained in the Any.
	*
	* @result          the TypeCode for the element in the Any
	*/
	@:overload @:public override public function type() : org.omg.CORBA.TypeCode;
	
	/**
	* sets the type of the element to be contained in the Any.
	*
	* @param tc                the TypeCode for the element in the Any
	*/
	@:overload @:public override public function type(tc : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* checks for equality between Anys.
	*
	* @param otherAny  the Any to be compared with.
	* @result          true if the Anys are equal, false otherwise.
	*/
	@:overload @:public override public function equal(otherAny : org.omg.CORBA.Any) : Bool;
	
	/**
	* returns an output stream that an Any value can be marshaled into.
	*
	* @result          the OutputStream to marshal value of Any into
	*/
	@:overload @:public override public function create_output_stream() : org.omg.CORBA.portable.OutputStream;
	
	/**
	* returns an input stream that an Any value can be marshaled out of.
	*
	* @result          the InputStream to marshal value of Any out of.
	*/
	@:overload @:public override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload @:public override public function read_value(_in : org.omg.CORBA.portable.InputStream, tc : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function write_value(out : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* takes a streamable and inserts its reference into the any
	*
	* @param s         the streamable to insert
	*/
	@:overload @:public override public function insert_Streamable(s : org.omg.CORBA.portable.Streamable) : Void;
	
	@:overload @:public override public function extract_Streamable() : org.omg.CORBA.portable.Streamable;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_short(s : java.StdTypes.Int16) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_short() : java.StdTypes.Int16;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_long(l : Int) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_long() : Int;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_ushort(s : java.StdTypes.Int16) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_ushort() : java.StdTypes.Int16;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_ulong(l : Int) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_ulong() : Int;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_float(f : Single) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_float() : Single;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_double(d : Float) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_double() : Float;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_longlong(l : haxe.Int64) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_longlong() : haxe.Int64;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_ulonglong(l : haxe.Int64) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_ulonglong() : haxe.Int64;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_boolean(b : Bool) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_boolean() : Bool;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_char(c : java.StdTypes.Char16) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_char() : java.StdTypes.Char16;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_wchar(c : java.StdTypes.Char16) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_wchar() : java.StdTypes.Char16;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_octet(b : java.StdTypes.Int8) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_octet() : java.StdTypes.Int8;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_string(s : String) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_string() : String;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_wstring(s : String) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_wstring() : String;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_any(a : org.omg.CORBA.Any) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_any() : org.omg.CORBA.Any;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_Object(o : org.omg.CORBA.Object) : Void;
	
	/**
	* A variant of the insertion operation that takes a typecode
	* argument as well.
	*/
	@:overload @:public override public function insert_Object(o : org.omg.CORBA.Object, tc : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_Object() : org.omg.CORBA.Object;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function insert_TypeCode(tc : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* See the description of the <a href="#anyOps">general Any operations.</a>
	*/
	@:overload @:public override public function extract_TypeCode() : org.omg.CORBA.TypeCode;
	
	/**
	* @deprecated
	*/
	@:overload @:public override public function insert_Principal(p : org.omg.CORBA.Principal) : Void;
	
	/**
	* @deprecated
	*/
	@:overload @:public override public function extract_Principal() : org.omg.CORBA.Principal;
	
	/**
	* Note that the Serializable really should be an IDLEntity of
	* some kind.  It shouldn't just be an RMI-IIOP type.  Currently,
	* we accept and will produce RMI repIds with the latest
	* calculations if given a non-IDLEntity Serializable.
	*/
	@:overload @:public override public function extract_Value() : java.io.Serializable;
	
	@:overload @:public override public function insert_Value(v : java.io.Serializable) : Void;
	
	@:overload @:public override public function insert_Value(v : java.io.Serializable, t : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function insert_fixed(value : java.math.BigDecimal) : Void;
	
	@:overload @:public override public function insert_fixed(value : java.math.BigDecimal, type : org.omg.CORBA.TypeCode) : Void;
	
	@:overload @:public override public function extract_fixed() : java.math.BigDecimal;
	
	/**
	* Utility method for insert_Value and Util.writeAny.
	*
	* The ORB passed in should have the desired ORBVersion.  It
	* is used to generate the type codes.
	*/
	@:overload @:public public function createTypeCodeForClass(c : Class<Dynamic>, tcORB : com.sun.corba.se.spi.orb.ORB) : org.omg.CORBA.TypeCode;
	
	@:overload @:public public function extractAny(memberType : org.omg.CORBA.TypeCode, orb : com.sun.corba.se.spi.orb.ORB) : org.omg.CORBA.Any;
	
	@:overload @:static @:public public static function extractAnyFromStream(memberType : org.omg.CORBA.TypeCode, input : org.omg.CORBA.portable.InputStream, orb : com.sun.corba.se.spi.orb.ORB) : org.omg.CORBA.Any;
	
	@:overload @:public public function isInitialized() : Bool;
	
	
}
@:native('com$sun$corba$se$impl$corba$AnyImpl$AnyInputStream') @:internal extern class AnyImpl_AnyInputStream extends com.sun.corba.se.impl.encoding.EncapsInputStream
{
	@:overload @:public public function new(theStream : com.sun.corba.se.impl.encoding.EncapsInputStream) : Void;
	
	
}
@:native('com$sun$corba$se$impl$corba$AnyImpl$AnyOutputStream') @:internal extern class AnyImpl_AnyOutputStream extends com.sun.corba.se.impl.encoding.EncapsOutputStream
{
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:public override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	
}
