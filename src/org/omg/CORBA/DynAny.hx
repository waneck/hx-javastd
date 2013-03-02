package org.omg.CORBA;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
/** Enables <tt>org.omg.CORBA.Any</tt> values to be dynamically
* interpreted (traversed) and
*  constructed. A <tt>DynAny</tt> object is associated with a data value
*  which may correspond to a copy of the value inserted into an <tt>Any</tt>.
*  The <tt>DynAny</tt> APIs enable traversal of the data value associated with an
*  Any at runtime and extraction of the primitive constituents of the
*  data value.
* @deprecated Use the new <a href="../DynamicAny/DynAny.html">DynAny</a> instead
*/
extern interface DynAny extends org.omg.CORBA.Object
{
	/**
	* Returns the <code>TypeCode</code> of the object inserted into
	* this <code>DynAny</code>.
	*
	* @return the <code>TypeCode</code> object.
	*/
	@:overload public function type() : org.omg.CORBA.TypeCode;
	
	/**
	* Copy the contents from one Dynamic Any into another.
	*
	* @param dyn_any the <code>DynAny</code> object whose contents
	*                are assigned to this <code>DynAny</code>.
	* @throws Invalid if the source <code>DynAny</code> is
	*            invalid
	*/
	@:overload public function assign(dyn_any : org.omg.CORBA.DynAny) : Void;
	
	/**
	* Make a <code>DynAny</code> object from an <code>Any</code>
	* object.
	*
	* @param value the <code>Any</code> object.
	* @throws Invalid if the source <code>Any</code> object is
	*                    empty or bad
	*/
	@:overload public function from_any(value : org.omg.CORBA.Any) : Void;
	
	/**
	* Convert a <code>DynAny</code> object to an <code>Any</code>
	* object.
	*
	* @return the <code>Any</code> object.
	* @throws Invalid if this <code>DynAny</code> is empty or
	*                    bad.
	*            created or does not contain a meaningful value
	*/
	@:overload public function to_any() : org.omg.CORBA.Any;
	
	/**
	* Destroys this <code>DynAny</code> object and frees any resources
	* used to represent the data value associated with it. This method
	* also destroys all <code>DynAny</code> objects obtained from it.
	* <p>
	* Destruction of <code>DynAny</code> objects should be handled with
	* care, taking into account issues dealing with the representation of
	* data values associated with <code>DynAny</code> objects.  A programmer
	* who wants to destroy a <code>DynAny</code> object but still be able
	* to manipulate some component of the data value associated with it,
	* should first create a <code>DynAny</code> object for the component
	* and then make a copy of the created <code>DynAny</code> object.
	*/
	@:overload public function destroy() : Void;
	
	/**
	* Clones this <code>DynAny</code> object.
	*
	* @return a copy of this <code>DynAny</code> object
	*/
	@:overload public function copy() : org.omg.CORBA.DynAny;
	
	/**
	* Inserts the given <code>boolean</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>boolean</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_boolean(value : Bool) : Void;
	
	/**
	* Inserts the given <code>byte</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>byte</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_octet(value : java.StdTypes.Int8) : Void;
	
	/**
	* Inserts the given <code>char</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>char</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_char(value : java.StdTypes.Char16) : Void;
	
	/**
	* Inserts the given <code>short</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>short</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_short(value : java.StdTypes.Int16) : Void;
	
	/**
	* Inserts the given <code>short</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>short</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_ushort(value : java.StdTypes.Int16) : Void;
	
	/**
	* Inserts the given <code>int</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>int</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_long(value : Int) : Void;
	
	/**
	* Inserts the given <code>int</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>int</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_ulong(value : Int) : Void;
	
	/**
	* Inserts the given <code>float</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>float</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_float(value : Single) : Void;
	
	/**
	* Inserts the given <code>double</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>double</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_double(value : Float) : Void;
	
	/**
	* Inserts the given <code>String</code> object as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>String</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_string(value : String) : Void;
	
	/**
	* Inserts the given <code>org.omg.CORBA.Object</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>org.omg.CORBA.Object</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_reference(value : org.omg.CORBA.Object) : Void;
	
	/**
	* Inserts the given <code>org.omg.CORBA.TypeCode</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>org.omg.CORBA.TypeCode</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_typecode(value : org.omg.CORBA.TypeCode) : Void;
	
	/**
	* Inserts the given <code>long</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>long</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_longlong(value : haxe.Int64) : Void;
	
	/**
	* Inserts the given <code>long</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>long</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_ulonglong(value : haxe.Int64) : Void;
	
	/**
	* Inserts the given <code>char</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>char</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_wchar(value : java.StdTypes.Char16) : Void;
	
	/**
	* Inserts the given <code>String</code> as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>String</code> to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_wstring(value : String) : Void;
	
	/**
	* Inserts the given <code>org.omg.CORBA.Any</code> object as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>org.omg.CORBA.Any</code> object to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_any(value : org.omg.CORBA.Any) : Void;
	
	/**
	* Inserts the given <code>java.io.Serializable</code> object as the value for this
	* <code>DynAny</code> object.
	*
	* <p> If this method is called on a constructed <code>DynAny</code>
	* object, it initializes the next component of the constructed data
	* value associated with this <code>DynAny</code> object.
	*
	* @param value the <code>java.io.Serializable</code> object to insert into this
	*              <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.InvalidValue
	*            if the value inserted is not consistent with the type
	*            of the accessed component in this <code>DynAny</code> object
	*/
	@:overload public function insert_val(value : java.io.Serializable) : Void;
	
	/**
	* Retrieves the <code>java.io.Serializable</code> object contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>java.io.Serializable</code> object that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>java.io.Serializable</code> object
	*/
	@:overload public function get_val() : java.io.Serializable;
	
	/**
	* Retrieves the <code>boolean</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>boolean</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>boolean</code>
	*/
	@:overload public function get_boolean() : Bool;
	
	/**
	* Retrieves the <code>byte</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>byte</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>byte</code>
	*/
	@:overload public function get_octet() : java.StdTypes.Int8;
	
	/**
	* Retrieves the <code>char</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>char</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>char</code>
	*/
	@:overload public function get_char() : java.StdTypes.Char16;
	
	/**
	* Retrieves the <code>short</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>short</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>short</code>
	*/
	@:overload public function get_short() : java.StdTypes.Int16;
	
	/**
	* Retrieves the <code>short</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>short</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>short</code>
	*/
	@:overload public function get_ushort() : java.StdTypes.Int16;
	
	/**
	* Retrieves the <code>int</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>int</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>int</code>
	*/
	@:overload public function get_long() : Int;
	
	/**
	* Retrieves the <code>int</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>int</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>int</code>
	*/
	@:overload public function get_ulong() : Int;
	
	/**
	* Retrieves the <code>float</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>float</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>float</code>
	*/
	@:overload public function get_float() : Single;
	
	/**
	* Retrieves the <code>double</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>double</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>double</code>
	*/
	@:overload public function get_double() : Float;
	
	/**
	* Retrieves the <code>String</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>String</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>String</code>
	*/
	@:overload public function get_string() : String;
	
	/**
	* Retrieves the <code>org.omg.CORBA.Other</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>org.omg.CORBA.Other</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for an <code>org.omg.CORBA.Other</code>
	*/
	@:overload public function get_reference() : org.omg.CORBA.Object;
	
	/**
	* Retrieves the <code>org.omg.CORBA.TypeCode</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>org.omg.CORBA.TypeCode</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>org.omg.CORBA.TypeCode</code>
	*/
	@:overload public function get_typecode() : org.omg.CORBA.TypeCode;
	
	/**
	* Retrieves the <code>long</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>long</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>long</code>
	*/
	@:overload public function get_longlong() : haxe.Int64;
	
	/**
	* Retrieves the <code>long</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>long</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>long</code>
	*/
	@:overload public function get_ulonglong() : haxe.Int64;
	
	/**
	* Retrieves the <code>char</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>char</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>char</code>
	*/
	@:overload public function get_wchar() : java.StdTypes.Char16;
	
	/**
	* Retrieves the <code>String</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>String</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for a <code>String</code>
	*/
	@:overload public function get_wstring() : String;
	
	/**
	* Retrieves the <code>org.omg.CORBA.Any</code> contained
	* in this <code>DynAny</code> object.
	*
	* @return the <code>org.omg.CORBA.Any</code> that is the
	*         value for this <code>DynAny</code> object
	* @throws org.omg.CORBA.DynAnyPackage.TypeMismatch
	*               if the type code of the accessed component in this
	*               <code>DynAny</code> object is not equivalent to
	*               the type code for an <code>org.omg.CORBA.Any</code>
	*/
	@:overload public function get_any() : org.omg.CORBA.Any;
	
	/**
	* Returns a <code>DynAny</code> object reference that can
	* be used to get/set the value of the component currently accessed.
	* The appropriate <code>insert</code> method
	* can be called on the resulting <code>DynAny</code> object
	* to initialize the component.
	* The appropriate <code>get</code> method
	* can be called on the resulting <code>DynAny</code> object
	* to extract the value of the component.
	*
	* @return a <code>DynAny</code> object reference that can be
	*         used to retrieve or set the value of the component currently
	*         accessed
	*/
	@:overload public function current_component() : org.omg.CORBA.DynAny;
	
	/**
	* Moves to the next component of this <code>DynAny</code> object.
	* This method is used for iterating through the components of
	* a constructed type, effectively moving a pointer from one
	* component to the next.  The pointer starts out on the first
	* component when a <code>DynAny</code> object is created.
	*
	* @return <code>true</code> if the pointer points to a component;
	* <code>false</code> if there are no more components or this
	* <code>DynAny</code> is associated with a basic type rather than
	* a constructed type
	*/
	@:overload public function next() : Bool;
	
	/**
	* Moves the internal pointer to the given index. Logically, this method
	* sets a new offset for this pointer.
	*
	* @param index an <code>int</code> indicating the position to which
	*              the pointer should move.  The first position is 0.
	* @return <code>true</code> if the pointer points to a component;
	* <code>false</code> if there is no component at the designated
	* index.  If this <code>DynAny</code> object is associated with a
	* basic type, this method returns <code>false</code> for any index
	* other than 0.
	*/
	@:overload public function seek(index : Int) : Bool;
	
	/**
	* Moves the internal pointer to the first component.
	*/
	@:overload public function rewind() : Void;
	
	
}
