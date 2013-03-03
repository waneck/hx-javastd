package javax.management.modelmbean;
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
extern class DescriptorSupport implements javax.management.Descriptor
{
	/**
	* Descriptor default constructor.
	* Default initial descriptor size is 20.  It will grow as needed.<br>
	* Note that the created empty descriptor is not a valid descriptor
	* (the method {@link #isValid isValid} returns <CODE>false</CODE>)
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Descriptor constructor.  Takes as parameter the initial
	* capacity of the Map that stores the descriptor fields.
	* Capacity will grow as needed.<br> Note that the created empty
	* descriptor is not a valid descriptor (the method {@link
	* #isValid isValid} returns <CODE>false</CODE>).
	*
	* @param initNumFields The initial capacity of the Map that
	* stores the descriptor fields.
	*
	* @exception RuntimeOperationsException for illegal value for
	* initNumFields (&lt;= 0)
	* @exception MBeanException Wraps a distributed communication Exception.
	*/
	@:overload @:public public function new(initNumFields : Int) : Void;
	
	/**
	* Descriptor constructor taking a Descriptor as parameter.
	* Creates a new descriptor initialized to the values of the
	* descriptor passed in parameter.
	*
	* @param inDescr the descriptor to be used to initialize the
	* constructed descriptor. If it is null or contains no descriptor
	* fields, an empty Descriptor will be created.
	*/
	@:overload @:public public function new(inDescr : javax.management.modelmbean.DescriptorSupport) : Void;
	
	/* At some stage we should rewrite this code to be cleverer.  Using
	a StringTokenizer as we do means, first, that we accept a lot of
	bogus strings without noticing they are bogus, and second, that we
	split the string being parsed at characters like > even if they
	occur in the middle of a field value. */
	@:overload @:public public function new(inStr : String) : Void;
	
	/**
	* Constructor taking field names and field values.  Neither array
	* can be null.
	*
	* @param fieldNames String array of field names.  No elements of
	* this array can be null.
	* @param fieldValues Object array of the corresponding field
	* values.  Elements of the array can be null. The
	* <code>fieldValue</code> must be valid for the
	* <code>fieldName</code> (as defined in method {@link #isValid
	* isValid})
	*
	* <p>Note: array sizes of parameters should match. If both arrays
	* are empty, then an empty descriptor is created.</p>
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  The array lengths must be equal.
	* If the descriptor construction fails for any reason, this
	* exception will be thrown.
	*
	*/
	@:overload @:public public function new(fieldNames : java.NativeArray<String>, fieldValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor taking fields in the <i>fieldName=fieldValue</i>
	* format.
	*
	* @param fields String array with each element containing a
	* field name and value.  If this array is null or empty, then the
	* default constructor will be executed. Null strings or empty
	* strings will be ignored.
	*
	* <p>All field values should be Strings.  If the field values are
	* not Strings, the programmer will have to reset or convert these
	* fields correctly.
	*
	* <p>Note: Each string should be of the form
	* <i>fieldName=fieldValue</i>.  The field name
	* ends at the first {@code =} character; for example if the String
	* is {@code a=b=c} then the field name is {@code a} and its value
	* is {@code b=c}.
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  The field must contain an
	* "=". "=fieldValue", "fieldName", and "fieldValue" are illegal.
	* FieldName cannot be null.  "fieldName=" will cause the value to
	* be null.  If the descriptor construction fails for any reason,
	* this exception will be thrown.
	*
	*/
	@:overload @:public public function new(fields : java.NativeArray<String>) : Void;
	
	@:overload @:public @:synchronized public function getFieldValue(fieldName : String) : Dynamic;
	
	@:overload @:public @:synchronized public function setField(fieldName : String, fieldValue : Dynamic) : Void;
	
	@:overload @:public @:synchronized public function getFields() : java.NativeArray<String>;
	
	@:overload @:public @:synchronized public function getFieldNames() : java.NativeArray<String>;
	
	@:overload @:public @:synchronized public function getFieldValues(fieldNames : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	@:overload @:public @:synchronized public function setFields(fieldNames : java.NativeArray<String>, fieldValues : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Returns a new Descriptor which is a duplicate of the Descriptor.
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  If the descriptor construction
	* fails for any reason, this exception will be thrown.
	*/
	@:overload @:public @:synchronized public function clone() : Dynamic;
	
	@:overload @:public @:synchronized public function removeField(fieldName : String) : Void;
	
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
	* {@link java.util.Arrays#deepEquals(Object[],Object[]) Arrays.deepEquals}
	* must return true.</li>
	* <li>Otherwise {@link Object#equals(Object)} must return true.</li>
	* </ul>
	*
	* @param o the object to compare with.
	*
	* @return {@code true} if the objects are the same; {@code false}
	* otherwise.
	*
	*/
	@:overload @:public @:synchronized public function equals(o : Dynamic) : Bool;
	
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
	* {@link java.util.Arrays#deepHashCode(Object[]) Arrays.deepHashCode}.</li>
	* <li>Otherwise {@code h} is {@code v.hashCode()}.</li>
	* </ul>
	*
	* @return A hash code value for this object.
	*
	*/
	@:overload @:public @:synchronized public function hashCode() : Int;
	
	/**
	* Returns true if all of the fields have legal values given their
	* names.
	* <P>
	* This implementation does not support  interoperating with a directory
	* or lookup service. Thus, conforming to the specification, no checking is
	* done on the <i>"export"</i> field.
	* <P>
	* Otherwise this implementation returns false if:
	* <P>
	* <UL>
	* <LI> name and descriptorType fieldNames are not defined, or
	* null, or empty, or not String
	* <LI> class, role, getMethod, setMethod fieldNames, if defined,
	* are null or not String
	* <LI> persistPeriod, currencyTimeLimit, lastUpdatedTimeStamp,
	* lastReturnedTimeStamp if defined, are null, or not a Numeric
	* String or not a Numeric Value >= -1
	* <LI> log fieldName, if defined, is null, or not a Boolean or
	* not a String with value "t", "f", "true", "false". These String
	* values must not be case sensitive.
	* <LI> visibility fieldName, if defined, is null, or not a
	* Numeric String or a not Numeric Value >= 1 and &lt;= 4
	* <LI> severity fieldName, if defined, is null, or not a Numeric
	* String or not a Numeric Value >= 0 and &lt;= 6<br>
	* <LI> persistPolicy fieldName, if defined, is null, or not one of
	* the following strings:<br>
	*   "OnUpdate", "OnTimer", "NoMoreOftenThan", "OnUnregister", "Always",
	*   "Never". These String values must not be case sensitive.<br>
	* </UL>
	*
	* @exception RuntimeOperationsException If the validity checking
	* fails for any reason, this exception will be thrown.
	*/
	@:overload @:public @:synchronized public function isValid() : Bool;
	
	/**
	* <p>Returns an XML String representing the descriptor.</p>
	*
	* <p>The format is not defined, but an implementation must
	* ensure that the string returned by this method can be
	* used to build an equivalent descriptor when instantiated
	* using the constructor {@link #DescriptorSupport(String)
	* DescriptorSupport(String inStr)}.</p>
	*
	* <p>Fields which are not String objects will have toString()
	* called on them to create the value. The value will be
	* enclosed in parentheses.  It is not guaranteed that you can
	* reconstruct these objects unless they have been
	* specifically set up to support toString() in a meaningful
	* format and have a matching constructor that accepts a
	* String in the same format.</p>
	*
	* <p>If the descriptor is empty the following String is
	* returned: &lt;Descriptor&gt;&lt;/Descriptor&gt;</p>
	*
	* @return the XML string.
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  If the XML formatted string
	* construction fails for any reason, this exception will be
	* thrown.
	*/
	@:overload @:public @:synchronized public function toXMLString() : String;
	
	/**
	* Returns <pv>a human readable string representing the
	* descriptor</pv>.  The string will be in the format of
	* "fieldName=fieldValue,fieldName2=fieldValue2,..."<br>
	*
	* If there are no fields in the descriptor, then an empty String
	* is returned.<br>
	*
	* If a fieldValue is an object then the toString() method is
	* called on it and its returned value is used as the value for
	* the field enclosed in parenthesis.
	*
	* @exception RuntimeOperationsException for illegal value for
	* field Names or field Values.  If the descriptor string fails
	* for any reason, this exception will be thrown.
	*/
	@:overload @:public @:synchronized public function toString() : String;
	
	
}
