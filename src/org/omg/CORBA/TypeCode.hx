package org.omg.CORBA;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeCode implements org.omg.CORBA.portable.IDLEntity
{
	/**
	* Compares this <code>TypeCode</code> object with the given one,
	* testing for equality. <code>TypeCode</code> objects are equal if
	* they are interchangeable and give identical results when
	* <code>TypeCode</code> operations are applied to them.
	*
	* @param tc                the <code>TypeCode</code> object to compare against
	* @return          <code>true</code> if the type codes are equal;
	*                <code>false</code> otherwise
	*/
	@:overload @:abstract public function equal(tc : TypeCode) : Bool;
	
	/**
	* Tests to see if the given <code>TypeCode</code> object is
	* equivalent to this <code>TypeCode</code> object.
	* <P>
	*
	*
	* @param tc the typecode to compare with this typecode
	*
	* @return <code>true</code> if the given typecode is equivalent to
	*         this typecode; <code>false</code> otherwise
	*
	*/
	@:overload @:abstract public function equivalent(tc : TypeCode) : Bool;
	
	/**
	* Strips out all optional name and member name fields,
	* but leaves all alias typecodes intact.
	* @return a <code>TypeCode</code> object with optional name and
	*         member name fields stripped out, except for alias typecodes,
	*         which are left intact
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:abstract public function get_compact_typecode() : TypeCode;
	
	/**
	* Retrieves the kind of this <code>TypeCode</code> object.
	* The kind of a type code determines which <code>TypeCode</code>
	* methods may legally be invoked on it.
	* <P>
	* The method <code>kind</code> may be invoked on any
	* <code>TypeCode</code> object.
	*
	* @return  the <code>TCKind</code> instance indicating the
	*            value of the <code>kind</code> field of this
	*                  <code>TypeCode</code> object
	*/
	@:overload @:abstract public function kind() : org.omg.CORBA.TCKind;
	
	/**
	* Retrieves the RepositoryId globally identifying the type
	* of this <code>TypeCode</code> object.
	* <P>
	* The method <code>id</code> can be invoked on object reference,
	* structure, union, enumeration, alias, exception, valuetype,
	* boxed valuetype, native, and abstract interface type codes.
	* Object reference, exception, valuetype, boxed valuetype,
	* native, and abstract interface <code>TypeCode</code> objects
	* always have a RepositoryId.
	* Structure, union, enumeration, and alias <code>TypeCode</code> objects
	* obtained from the Interface Repository or the method
	* <code>ORB.create_operation_list</code>
	* also always have a RepositoryId. If there is no RepositoryId, the
	* method can return an empty string.
	*
	* @return          the RepositoryId for this <code>TypeCode</code> object
	*                or an empty string if there is no RepositoryID
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of<code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function id() : String;
	
	/**
	* Retrieves the simple name identifying this <code>TypeCode</code>
	* object within its
	* enclosing scope. Since names are local to a Repository, the
	* name returned from a <code>TypeCode</code> object
	* may not match the name of the
	* type in any particular Repository, and may even be an empty
	* string.
	* <P>
	* The method <code>name</code> can be invoked on object reference,
	* structure, union, enumeration, alias, exception, valuetype,
	* boxed valuetype, native, and abstract interface
	* <code>TypeCode</code> objects.
	*
	* @return          the name identifying this <code>TypeCode</code> object
	*                or an empty string
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of<code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function name() : String;
	
	/**
	* Retrieves the number of members in the type described by
	* this <code>TypeCode</code> object.
	* <P>
	* The method <code>member_count</code> can be invoked on
	* structure, union, and enumeration <code>TypeCode</code> objects.
	* Java IDL extends the CORBA specification to allow this method to
	* operate on exceptions as well.
	*
	* @return          the number of members constituting the type described
	*                by this <code>TypeCode</code> object
	*
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function member_count() : Int;
	
	/**
	* Retrieves the simple name of the member identified by
	* the given index. Since names are local to a
	* Repository, the name returned from a <code>TypeCode</code> object
	* may not match the name of the member in any particular
	* Repository, and may even be an empty string.
	* <P>
	* The  method <code>member_name</code> can be invoked on structure, union,
	* and enumeration <code>TypeCode</code> objects.
	* Java IDL extends the CORBA specification to allow this method to
	* operate on exceptions as well.
	*
	* @param index     index of the member for which a name is being reqested
	* @return          simple name of the member identified by the
	*                  index or an empty string
	* @throws org.omg.CORBA.TypeCodePackage.Bounds if the index is equal
	*            to or greater than
	*                  the number of members constituting the type
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function member_name(index : Int) : String;
	
	/**
	* Retrieves the <code>TypeCode</code> object describing the type
	* of the member identified by the given index.
	* <P>
	* The method <code>member_type</code> can be invoked on structure
	* and union <code>TypeCode</code> objects.
	* Java IDL extends the CORBA specification to allow this method to
	* operate on exceptions as well.
	*
	* @param index     index of the member for which type information
	*                is begin requested
	* @return          the <code>TypeCode</code> object describing the
	*                member at the given index
	* @throws org.omg.CORBA.TypeCodePackage.Bounds if the index is
	*                equal to or greater than
	*                      the number of members constituting the type
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function member_type(index : Int) : TypeCode;
	
	/**
	* Retrieves the label of the union member
	* identified by the given index. For the default member,
	* the label is the zero octet.
	*<P>
	* The method <code>member_label</code> can only be invoked on union
	* <code>TypeCode</code> objects.
	*
	* @param index     index of the union member for which the
	*                label is being requested
	* @return          an <code>Any</code> object describing the label of
	*                the requested union member or the zero octet for
	*                the default member
	* @throws org.omg.CORBA.TypeCodePackage.Bounds if the index is
	*                equal to or greater than
	*                      the number of members constituting the union
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on a non-union <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function member_label(index : Int) : org.omg.CORBA.Any;
	
	/**
	* Returns a <code>TypeCode</code> object describing
	* all non-default member labels.
	* The method <code>discriminator_type</code> can be invoked only
	* on union <code>TypeCode</code> objects.
	*
	* @return          the <code>TypeCode</code> object describing
	*                the non-default member labels
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on a non-union <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function discriminator_type() : TypeCode;
	
	/**
	* Returns the index of the
	* default member, or -1 if there is no default member.
	* <P>
	* The method <code>default_index</code> can be invoked only on union
	* <code>TypeCode</code> objects.
	*
	* @return          the index of the default member, or -1 if
	*                  there is no default member
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on a non-union <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function default_index() : Int;
	
	/**
	* Returns the number of elements in the type described by
	* this <code>TypeCode</code> object.
	* For strings and sequences, it returns the
	* bound, with zero indicating an unbounded string or sequence.
	* For arrays, it returns the number of elements in the array.
	* <P>
	* The method <code>length</code> can be invoked on string, sequence, and
	* array <code>TypeCode</code> objects.
	*
	* @return          the bound for strings and sequences, or the
	*                      number of elements for arrays
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function length() : Int;
	
	/**
	* Returns the <code>TypeCode</code> object representing the
	* IDL type for the members of the object described by this
	* <code>TypeCode</code> object.
	* For sequences and arrays, it returns the
	* element type. For aliases, it returns the original type. Note
	* that multidimensional arrays are represented by nesting
	* <code>TypeCode</code> objects, one per dimension.
	* For boxed valuetypes, it returns the boxed type.
	*<P>
	* The method <code>content_type</code> can be invoked on sequence, array,
	* alias, and boxed valuetype <code>TypeCode</code> objects.
	*
	* @return  a <code>TypeCode</code> object representing
	*            the element type for sequences and arrays, the
	*          original type for aliases, or the
	*            boxed type for boxed valuetypes.
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if the method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function content_type() : TypeCode;
	
	/**
	* Returns the number of digits in the fixed type described by this
	* <code>TypeCode</code> object. For example, the typecode for
	* the number 3000.275d could be <code>fixed<7,3></code>, where
	* 7 is the precision and 3 is the scale.
	*
	* @return the total number of digits
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if this method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*
	*/
	@:overload @:abstract public function fixed_digits() : java.StdTypes.Int16;
	
	/**
	* Returns the scale of the fixed type described by this
	* <code>TypeCode</code> object. A positive number indicates the
	* number of digits to the right of the decimal point.
	* For example, the number 3000d could have the
	* typecode <code>fixed<4,0></code>, where the first number is
	* the precision and the second number is the scale.
	* A negative number is also possible and adds zeroes to the
	* left of the decimal point.  In this case, <code>fixed<1,-3></code>,
	* could be the typecode for the number 3000d.
	*
	* @return the scale of the fixed type that this
	*         <code>TypeCode</code> object describes
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if this method
	*           is invoked on an inappropriate kind of <code>TypeCode</code>
	*           object
	*/
	@:overload @:abstract public function fixed_scale() : java.StdTypes.Int16;
	
	/**
	* Returns the constant that indicates the visibility of the member
	* at the given index.
	*
	* This operation can only be invoked on non-boxed value
	* <code>TypeCode</code> objects.
	*
	* @param index an <code>int</code> indicating the index into the
	*               value
	* @return either <code>PRIVATE_MEMBER.value</code> or
	*          <code>PUBLIC_MEMBER.value</code>
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if this method
	*           is invoked on a non-value type <code>TypeCode</code>
	*           object
	* @throws org.omg.CORBA.TypeCodePackage.Bounds
	*           if the given index is out of bounds
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:abstract public function member_visibility(index : Int) : java.StdTypes.Int16;
	
	/**
	* Returns a constant indicating the modifier of the value type
	* that this <code>TypeCode</code> object describes.  The constant
	* returned must be one of the following: <code>VM_NONE.value</code>,
	* <code>VM_ABSTRACT.value</code>, <code>VM_CUSTOM.value</code>,
	* or <code>VM_TRUNCATABLE.value</code>,
	*
	* @return a constant describing the value type
	*         that this <code>TypeCode</code> object describes
	* @throws org.omg.CORBA.TypeCodePackage.BadKind
	*           if this method
	*           is invoked on a non-value type <code>TypeCode</code>
	*           object
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:abstract public function type_modifier() : java.StdTypes.Int16;
	
	/**
	* Returns the <code>TypeCode</code> object that describes the concrete base type
	* of the value type that this <code>TypeCode</code> object describes.
	* Returns null if it doesn't have a concrete base type.
	*
	* @return the <code>TypeCode</code> object that describes the
	* concrete base type of the value type
	* that this <code>TypeCode</code> object describes
	* @throws org.omg.CORBA.TypeCodePackage.BadKind if this method
	*           is invoked on a non-boxed value type <code>TypeCode</code> object
	* @see <a href="package-summary.html#unimpl"><code>CORBA</code> package
	*      comments for unimplemented features</a>
	*/
	@:overload @:abstract public function concrete_base_type() : TypeCode;
	
	
}
