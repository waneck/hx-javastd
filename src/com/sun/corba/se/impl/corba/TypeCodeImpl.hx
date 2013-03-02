package com.sun.corba.se.impl.corba;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeCodeImpl extends org.omg.CORBA.TypeCode
{
	private static var tk_indirect(default, null) : Int;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, tc : org.omg.CORBA.TypeCode) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String, members : java.NativeArray<org.omg.CORBA.StructMember>) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String, discriminator_type : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.UnionMember>) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String, type_modifier : java.StdTypes.Int16, concrete_base : org.omg.CORBA.TypeCode, members : java.NativeArray<org.omg.CORBA.ValueMember>) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String, members : java.NativeArray<String>) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String, original_type : org.omg.CORBA.TypeCode) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, id : String, name : String) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, bound : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, bound : Int, element_type : org.omg.CORBA.TypeCode) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, bound : Int, offset : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, id : String) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, creationKind : Int, digits : java.StdTypes.Int16, scale : java.StdTypes.Int16) : Void;
	
	@:overload private static function convertToNative(orb : com.sun.corba.se.spi.orb.ORB, tc : org.omg.CORBA.TypeCode) : com.sun.corba.se.impl.corba.TypeCodeImpl;
	
	@:overload public static function newOutputStream(orb : com.sun.corba.se.spi.orb.ORB) : com.sun.corba.se.impl.encoding.CDROutputStream;
	
	@:overload @:final public function equal(tc : org.omg.CORBA.TypeCode) : Bool;
	
	/**
	* The equivalent operation is used by the ORB when determining type equivalence
	* for values stored in an IDL any.
	*/
	@:overload public function equivalent(tc : org.omg.CORBA.TypeCode) : Bool;
	
	@:overload public function get_compact_typecode() : org.omg.CORBA.TypeCode;
	
	@:overload public function kind() : org.omg.CORBA.TCKind;
	
	@:overload public function is_recursive() : Bool;
	
	@:overload public function id() : String;
	
	@:overload public function name() : String;
	
	@:overload public function member_count() : Int;
	
	@:overload public function member_name(index : Int) : String;
	
	@:overload public function member_type(index : Int) : org.omg.CORBA.TypeCode;
	
	@:overload public function member_label(index : Int) : org.omg.CORBA.Any;
	
	@:overload public function discriminator_type() : org.omg.CORBA.TypeCode;
	
	@:overload public function default_index() : Int;
	
	@:overload public function length() : Int;
	
	@:overload public function content_type() : org.omg.CORBA.TypeCode;
	
	@:overload public function fixed_digits() : java.StdTypes.Int16;
	
	@:overload public function fixed_scale() : java.StdTypes.Int16;
	
	@:overload public function member_visibility(index : Int) : java.StdTypes.Int16;
	
	@:overload public function type_modifier() : java.StdTypes.Int16;
	
	@:overload public function concrete_base_type() : org.omg.CORBA.TypeCode;
	
	@:overload public function read_value(is : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload public function write_value(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload public function write_value(tcos : com.sun.corba.se.impl.encoding.TypeCodeOutputStream) : Void;
	
	/**
	* This is not a copy of the TypeCodeImpl objects, but instead it
	* copies the value this type code is representing.
	* See AnyImpl read_value and write_value for usage.
	* The state of this TypeCodeImpl instance isn't changed, only used
	* by the Any to do the correct copy.
	*/
	@:overload private function copy(src : org.omg.CORBA.portable.InputStream, dst : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload private static function digits(value : java.math.BigDecimal) : java.StdTypes.Int16;
	
	@:overload private static function scale(value : java.math.BigDecimal) : java.StdTypes.Int16;
	
	@:overload public function description() : String;
	
	@:overload public function toString() : String;
	
	@:overload public function printStream(s : java.io.PrintStream) : Void;
	
	@:overload private function setCaching(enableCaching : Bool) : Void;
	
	
}
