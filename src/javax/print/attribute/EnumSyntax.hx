package javax.print.attribute;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class EnumSyntax implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a new enumeration value with the given integer value.
	*
	* @param  value  Integer value.
	*/
	@:overload private function new(value : Int) : Void;
	
	/**
	* Returns this enumeration value's integer value.
	* @return the value
	*/
	@:overload public function getValue() : Int;
	
	/**
	* Returns a clone of this enumeration value, which to preserve the
	* semantics of enumeration values is the same object as this enumeration
	* value.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a hash code value for this enumeration value. The hash code is
	* just this enumeration value's integer value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string value corresponding to this enumeration value.
	*/
	@:overload public function toString() : String;
	
	/**
	* During object input, convert this deserialized enumeration instance to
	* the proper enumeration value defined in the enumeration attribute class.
	*
	* @return  The enumeration singleton value stored at index
	*          <I>i</I>-<I>L</I> in the enumeration value table returned by
	*          {@link #getEnumValueTable() <CODE>getEnumValueTable()</CODE>},
	*          where <I>i</I> is this enumeration value's integer value and
	*          <I>L</I> is the value returned by {@link #getOffset()
	*          <CODE>getOffset()</CODE>}.
	*
	* @throws ObjectStreamException if the stream can't be deserialised
	* @throws  InvalidObjectException
	*     Thrown if the enumeration value table is null, this enumeration
	*     value's integer value does not correspond to an element in the
	*     enumeration value table, or the corresponding element in the
	*     enumeration value table is null. (Note: {@link
	*     java.io.InvalidObjectException InvalidObjectException} is a subclass
	*     of {@link java.io.ObjectStreamException ObjectStreamException}, which
	*     <CODE>readResolve()</CODE> is declared to throw.)
	*/
	@:overload private function readResolve() : Dynamic;
	
	/**
	* Returns the string table for this enumeration value's enumeration class.
	* The enumeration class's integer values are assumed to lie in the range
	* <I>L</I>..<I>L</I>+<I>N</I>-1, where <I>L</I> is the value returned by
	* {@link #getOffset() <CODE>getOffset()</CODE>} and <I>N</I> is the length
	* of the string table. The element in the string table at index
	* <I>i</I>-<I>L</I> is the value returned by {@link #toString()
	* <CODE>toString()</CODE>} for the enumeration value whose integer value
	* is <I>i</I>. If an integer within the above range is not used by any
	* enumeration value, leave the corresponding table element null.
	* <P>
	* The default implementation returns null. If the enumeration class (a
	* subclass of class EnumSyntax) does not override this method to return a
	* non-null string table, and the subclass does not override the {@link
	* #toString() <CODE>toString()</CODE>} method, the base class {@link
	* #toString() <CODE>toString()</CODE>} method will return just a string
	* representation of this enumeration value's integer value.
	* @return the string table
	*/
	@:overload private function getStringTable() : java.NativeArray<String>;
	
	/**
	* Returns the enumeration value table for this enumeration value's
	* enumeration class. The enumeration class's integer values are assumed to
	* lie in the range <I>L</I>..<I>L</I>+<I>N</I>-1, where <I>L</I> is the
	* value returned by {@link #getOffset() <CODE>getOffset()</CODE>} and
	* <I>N</I> is the length of the enumeration value table. The element in the
	* enumeration value table at index <I>i</I>-<I>L</I> is the enumeration
	* value object whose integer value is <I>i</I>; the {@link #readResolve()
	* <CODE>readResolve()</CODE>} method needs this to preserve singleton
	* semantics during deserialization of an enumeration instance. If an
	* integer within the above range is not used by any enumeration value,
	* leave the corresponding table element null.
	* <P>
	* The default implementation returns null. If the enumeration class (a
	* subclass of class EnumSyntax) does not override this method to return
	* a non-null enumeration value table, and the subclass does not override
	* the {@link #readResolve() <CODE>readResolve()</CODE>} method, the base
	* class {@link #readResolve() <CODE>readResolve()</CODE>} method will throw
	* an exception whenever an enumeration instance is deserialized from an
	* object input stream.
	* @return the value table
	*/
	@:overload private function getEnumValueTable() : java.NativeArray<EnumSyntax>;
	
	/**
	* Returns the lowest integer value used by this enumeration value's
	* enumeration class.
	* <P>
	* The default implementation returns 0. If the enumeration class (a
	* subclass of class EnumSyntax) uses integer values starting at other than
	* 0, override this method in the subclass.
	* @return the offset of the lowest enumeration value.
	*/
	@:overload private function getOffset() : Int;
	
	
}
