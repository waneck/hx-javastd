package javax.management;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
* @author    IBM Corp.
*
* Copyright IBM Corp. 1999-2000.  All rights reserved.
*/
extern interface Descriptor extends java.io.Serializable extends java.lang.Cloneable
{
	/**
	* Returns the value for a specific field name, or null if no value
	* is present for that name.
	*
	* @param fieldName the field name.
	*
	* @return the corresponding value, or null if the field is not present.
	*
	* @exception RuntimeOperationsException if the field name is illegal.
	*/
	@:overload @:public public function getFieldValue(fieldName : String) : Dynamic;
	
	/**
	* <p>Sets the value for a specific field name. This will
	* modify an existing field or add a new field.</p>
	*
	* <p>The field value will be validated before it is set.
	* If it is not valid, then an exception will be thrown.
	* The meaning of validity is dependent on the descriptor
	* implementation.</p>
	*
	* @param fieldName The field name to be set. Cannot be null or empty.
	* @param fieldValue The field value to be set for the field
	* name. Can be null if that is a valid value for the field.
	*
	* @exception RuntimeOperationsException if the field name or field value
	* is illegal (wrapped exception is {@link IllegalArgumentException}); or
	* if the descriptor is immutable (wrapped exception is
	* {@link UnsupportedOperationException}).
	*/
	@:overload @:public public function setField(fieldName : String, fieldValue : Dynamic) : Void;
	
	/**
	* Returns all of the fields contained in this descriptor as a string array.
	*
	* @return String array of fields in the format <i>fieldName=fieldValue</i>
	* <br>If the value of a field is not a String, then the toString() method
	* will be called on it and the returned value, enclosed in parentheses,
	* used as the value for the field in the returned array. If the value
	* of a field is null, then the value of the field in the returned array
	* will be empty.  If the descriptor is empty, you will get
	* an empty array.
	*
	* @see #setFields
	*/
	@:overload @:public public function getFields() : java.NativeArray<String>;
	
	/**
	* Returns all the field names in the descriptor.
	*
	* @return String array of field names. If the descriptor is empty,
	* you will get an empty array.
	*/
	@:overload @:public public function getFieldNames() : java.NativeArray<String>;
	
	/**
	* Returns all the field values in the descriptor as an array of Objects. The
	* returned values are in the same order as the {@code fieldNames} String array parameter.
	*
	* @param fieldNames String array of the names of the fields that
	* the values should be returned for.  If the array is empty then
	* an empty array will be returned.  If the array is null then all
	* values will be returned, as if the parameter were the array
	* returned by {@link #getFieldNames()}.  If a field name in the
	* array does not exist, including the case where it is null or
	* the empty string, then null is returned for the matching array
	* element being returned.
	*
	* @return Object array of field values. If the list of {@code fieldNames}
	* is empty, you will get an empty array.
	*/
	@:overload @:public public function getFieldValues(fieldNames : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
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
	@:overload @:public public function removeField(fieldName : String) : Void;
	
	/**
	* <p>Sets all fields in the field names array to the new value with
	* the same index in the field values array. Array sizes must match.</p>
	*
	* <p>The field value will be validated before it is set.
	* If it is not valid, then an exception will be thrown.
	* If the arrays are empty, then no change will take effect.</p>
	*
	* @param fieldNames String array of field names. The array and array
	* elements cannot be null.
	* @param fieldValues Object array of the corresponding field values.
	* The array cannot be null. Elements of the array can be null.
	*
	* @throws RuntimeOperationsException if the change fails for any reason.
	* Wrapped exception is {@link IllegalArgumentException} if
	* {@code fieldNames} or {@code fieldValues} is null, or if
	* the arrays are of different lengths, or if there is an
	* illegal value in one of them.
	* Wrapped exception is {@link UnsupportedOperationException}
	* if the descriptor is immutable, and the call would change
	* its contents.
	*
	* @see #getFields
	*/
	@:overload @:public public function setFields(fieldNames : java.NativeArray<String>, fieldValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns true if all of the fields have legal values given their
	* names.
	*
	* @return true if the values are legal.
	*
	* @exception RuntimeOperationsException If the validity checking fails for
	* any reason, this exception will be thrown.
	* The method returns false if the descriptor is not valid, but throws
	* this exception if the attempt to determine validity fails.
	*/
	@:overload @:public public function isValid() : Bool;
	
	
}
