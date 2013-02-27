package javax.management;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ImmutableDescriptor implements javax.management.Descriptor
{
	/**
	* An empty descriptor.
	*/
	public static var EMPTY_DESCRIPTOR(default, null) : ImmutableDescriptor;
	
	/**
	* Construct a descriptor containing the given fields and values.
	*
	* @throws IllegalArgumentException if either array is null, or
	* if the arrays have different sizes, or
	* if a field name is null or empty, or if the same field name
	* appears more than once.
	*/
	@:overload public function new(fieldNames : java.NativeArray<String>, fieldValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Construct a descriptor containing the given fields.  Each String
	* must be of the form {@code fieldName=fieldValue}.  The field name
	* ends at the first {@code =} character; for example if the String
	* is {@code a=b=c} then the field name is {@code a} and its value
	* is {@code b=c}.
	*
	* @throws IllegalArgumentException if the parameter is null, or
	* if a field name is empty, or if the same field name appears
	* more than once, or if one of the strings does not contain
	* an {@code =} character.
	*/
	@:overload public function new(fields : java.NativeArray<String>) : Void;
	
	/**
	* <p>Construct a descriptor where the names and values of the fields
	* are the keys and values of the given Map.</p>
	*
	* @throws IllegalArgumentException if the parameter is null, or
	* if a field name is null or empty, or if the same field name appears
	* more than once (which can happen because field names are not case
	* sensitive).
	*/
	@:overload public function new(fields : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* <p>Return an {@code ImmutableDescriptor} whose contents are the union of
	* the given descriptors.  Every field name that appears in any of
	* the descriptors will appear in the result with the
	* value that it has when the method is called.  Subsequent changes
	* to any of the descriptors do not affect the ImmutableDescriptor
	* returned here.</p>
	*
	* <p>In the simplest case, there is only one descriptor and the
	* returned {@code ImmutableDescriptor} is a copy of its fields at the
	* time this method is called:</p>
	*
	* <pre>
	* Descriptor d = something();
	* ImmutableDescriptor copy = ImmutableDescriptor.union(d);
	* </pre>
	*
	* @param descriptors the descriptors to be combined.  Any of the
	* descriptors can be null, in which case it is skipped.
	*
	* @return an {@code ImmutableDescriptor} that is the union of the given
	* descriptors.  The returned object may be identical to one of the
	* input descriptors if it is an ImmutableDescriptor that contains all of
	* the required fields.
	*
	* @throws IllegalArgumentException if two Descriptors contain the
	* same field name with different associated values.  Primitive array
	* values are considered the same if they are of the same type with
	* the same elements.  Object array values are considered the same if
	* {@link Arrays#deepEquals(Object[],Object[])} returns true.
	*/
	@:overload public static function union(descriptors : java.NativeArray<javax.management.Descriptor>) : ImmutableDescriptor;
	
	@:overload @:final public function getFieldValue(fieldName : String) : Dynamic;
	
	@:overload @:final public function getFields() : java.NativeArray<String>;
	
	@:overload @:final public function getFieldValues(fieldNames : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	@:overload @:final public function getFieldNames() : java.NativeArray<String>;
	
	/**
	* Compares this descriptor to the given object.  The objects are equal if
	* the given object is also a Descriptor, and if the two Descriptors have
	* the same field names (possibly differing in case) and the same
	* associated values.  The respective values for a field in the two
	* Descriptors are equal if the following conditions hold:</p>
	*
	* <ul>
	* <li>If one value is null then the other must be too.</li>
	* <li>If one value is a primitive array then the other must be a primitive
	* array of the same type with the same elements.</li>
	* <li>If one value is an object array then the other must be too and
	* {@link Arrays#deepEquals(Object[],Object[])} must return true.</li>
	* <li>Otherwise {@link Object#equals(Object)} must return true.</li>
	* </ul>
	*
	* @param o the object to compare with.
	*
	* @return {@code true} if the objects are the same; {@code false}
	* otherwise.
	*
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* <p>Returns the hash code value for this descriptor.  The hash
	* code is computed as the sum of the hash codes for each field in
	* the descriptor.  The hash code of a field with name {@code n}
	* and value {@code v} is {@code n.toLowerCase().hashCode() ^ h}.
	* Here {@code h} is the hash code of {@code v}, computed as
	* follows:</p>
	*
	* <ul>
	* <li>If {@code v} is null then {@code h} is 0.</li>
	* <li>If {@code v} is a primitive array then {@code h} is computed using
	* the appropriate overloading of {@code java.util.Arrays.hashCode}.</li>
	* <li>If {@code v} is an object array then {@code h} is computed using
	* {@link Arrays#deepHashCode(Object[])}.</li>
	* <li>Otherwise {@code h} is {@code v.hashCode()}.</li>
	* </ul>
	*
	* @return A hash code value for this object.
	*
	*/
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	/**
	* Returns true if all of the fields have legal values given their
	* names.  This method always returns true, but a subclass can
	* override it to return false when appropriate.
	*
	* @return true if the values are legal.
	*
	* @exception RuntimeOperationsException if the validity checking fails.
	* The method returns false if the descriptor is not valid, but throws
	* this exception if the attempt to determine validity fails.
	*/
	@:overload public function isValid() : Bool;
	
	/**
	* <p>Returns a descriptor which is equal to this descriptor.
	* Changes to the returned descriptor will have no effect on this
	* descriptor, and vice versa.</p>
	*
	* <p>This method returns the object on which it is called.
	* A subclass can override it
	* to return another object provided the contract is respected.
	*
	* @exception RuntimeOperationsException for illegal value for field Names
	* or field Values.
	* If the descriptor construction fails for any reason, this exception will
	* be thrown.
	*/
	@:overload public function clone() : javax.management.Descriptor;
	
	/**
	* This operation is unsupported since this class is immutable.  If
	* this call would change a mutable descriptor with the same contents,
	* then a {@link RuntimeOperationsException} wrapping an
	* {@link UnsupportedOperationException} is thrown.  Otherwise,
	* the behavior is the same as it would be for a mutable descriptor:
	* either an exception is thrown because of illegal parameters, or
	* there is no effect.
	*/
	@:overload @:final public function setFields(fieldNames : java.NativeArray<String>, fieldValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* This operation is unsupported since this class is immutable.  If
	* this call would change a mutable descriptor with the same contents,
	* then a {@link RuntimeOperationsException} wrapping an
	* {@link UnsupportedOperationException} is thrown.  Otherwise,
	* the behavior is the same as it would be for a mutable descriptor:
	* either an exception is thrown because of illegal parameters, or
	* there is no effect.
	*/
	@:overload @:final public function setField(fieldName : String, fieldValue : Dynamic) : Void;
	
	/**
	* Removes a field from the descriptor.
	*
	* @param fieldName String name of the field to be removed.
	* If the field name is illegal or the field is not found,
	* no exception is thrown.
	*
	* @exception RuntimeOperationsException if a field of the given name
	* exists and the descriptor is immutable.  The wrapped exception will
	* be an {@link UnsupportedOperationException}.
	*/
	@:overload @:final public function removeField(fieldName : String) : Void;
	
	
}
