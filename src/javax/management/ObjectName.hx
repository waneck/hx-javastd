package javax.management;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectName implements java.lang.Comparable<javax.management.ObjectName> implements javax.management.QueryExp
{
	/**
	* <p>Return an instance of ObjectName that can be used anywhere
	* an object obtained with {@link #ObjectName(String) new
	* ObjectName(name)} can be used.  The returned object may be of
	* a subclass of ObjectName.  Calling this method twice with the
	* same parameters may return the same object or two equal but
	* not identical objects.</p>
	*
	* @param name  A string representation of the object name.
	*
	* @return an ObjectName corresponding to the given String.
	*
	* @exception MalformedObjectNameException The string passed as a
	* parameter does not have the right format.
	* @exception NullPointerException The <code>name</code> parameter
	* is null.
	*
	*/
	@:overload @:public @:static public static function getInstance(name : String) : javax.management.ObjectName;
	
	/**
	* <p>Return an instance of ObjectName that can be used anywhere
	* an object obtained with {@link #ObjectName(String, String,
	* String) new ObjectName(domain, key, value)} can be used.  The
	* returned object may be of a subclass of ObjectName.  Calling
	* this method twice with the same parameters may return the same
	* object or two equal but not identical objects.</p>
	*
	* @param domain  The domain part of the object name.
	* @param key  The attribute in the key property of the object name.
	* @param value The value in the key property of the object name.
	*
	* @return an ObjectName corresponding to the given domain,
	* key, and value.
	*
	* @exception MalformedObjectNameException The
	* <code>domain</code>, <code>key</code>, or <code>value</code>
	* contains an illegal character, or <code>value</code> does not
	* follow the rules for quoting.
	* @exception NullPointerException One of the parameters is null.
	*
	*/
	@:overload @:public @:static public static function getInstance(domain : String, key : String, value : String) : javax.management.ObjectName;
	
	/**
	* <p>Return an instance of ObjectName that can be used anywhere
	* an object obtained with {@link #ObjectName(String, Hashtable)
	* new ObjectName(domain, table)} can be used.  The returned
	* object may be of a subclass of ObjectName.  Calling this method
	* twice with the same parameters may return the same object or
	* two equal but not identical objects.</p>
	*
	* @param domain  The domain part of the object name.
	* @param table A hash table containing one or more key
	* properties.  The key of each entry in the table is the key of a
	* key property in the object name.  The associated value in the
	* table is the associated value in the object name.
	*
	* @return an ObjectName corresponding to the given domain and
	* key mappings.
	*
	* @exception MalformedObjectNameException The <code>domain</code>
	* contains an illegal character, or one of the keys or values in
	* <code>table</code> contains an illegal character, or one of the
	* values in <code>table</code> does not follow the rules for
	* quoting.
	* @exception NullPointerException One of the parameters is null.
	*
	*/
	@:overload @:public @:static public static function getInstance(domain : String, table : java.util.Hashtable<String, String>) : javax.management.ObjectName;
	
	/**
	* <p>Return an instance of ObjectName that can be used anywhere
	* the given object can be used.  The returned object may be of a
	* subclass of ObjectName.  If <code>name</code> is of a subclass
	* of ObjectName, it is not guaranteed that the returned object
	* will be of the same class.</p>
	*
	* <p>The returned value may or may not be identical to
	* <code>name</code>.  Calling this method twice with the same
	* parameters may return the same object or two equal but not
	* identical objects.</p>
	*
	* <p>Since ObjectName is immutable, it is not usually useful to
	* make a copy of an ObjectName.  The principal use of this method
	* is to guard against a malicious caller who might pass an
	* instance of a subclass with surprising behavior to sensitive
	* code.  Such code can call this method to obtain an ObjectName
	* that is known not to have surprising behavior.</p>
	*
	* @param name an instance of the ObjectName class or of a subclass
	*
	* @return an instance of ObjectName or a subclass that is known to
	* have the same semantics.  If <code>name</code> respects the
	* semantics of ObjectName, then the returned object is equal
	* (though not necessarily identical) to <code>name</code>.
	*
	* @exception NullPointerException The <code>name</code> is null.
	*
	*/
	@:overload @:public @:static public static function getInstance(name : javax.management.ObjectName) : javax.management.ObjectName;
	
	/**
	* Construct an object name from the given string.
	*
	* @param name  A string representation of the object name.
	*
	* @exception MalformedObjectNameException The string passed as a
	* parameter does not have the right format.
	* @exception NullPointerException The <code>name</code> parameter
	* is null.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Construct an object name with exactly one key property.
	*
	* @param domain  The domain part of the object name.
	* @param key  The attribute in the key property of the object name.
	* @param value The value in the key property of the object name.
	*
	* @exception MalformedObjectNameException The
	* <code>domain</code>, <code>key</code>, or <code>value</code>
	* contains an illegal character, or <code>value</code> does not
	* follow the rules for quoting.
	* @exception NullPointerException One of the parameters is null.
	*/
	@:overload @:public public function new(domain : String, key : String, value : String) : Void;
	
	/**
	* Construct an object name with several key properties from a Hashtable.
	*
	* @param domain  The domain part of the object name.
	* @param table A hash table containing one or more key
	* properties.  The key of each entry in the table is the key of a
	* key property in the object name.  The associated value in the
	* table is the associated value in the object name.
	*
	* @exception MalformedObjectNameException The <code>domain</code>
	* contains an illegal character, or one of the keys or values in
	* <code>table</code> contains an illegal character, or one of the
	* values in <code>table</code> does not follow the rules for
	* quoting.
	* @exception NullPointerException One of the parameters is null.
	*/
	@:overload @:public public function new(domain : String, table : java.util.Hashtable<String, String>) : Void;
	
	/**
	* Checks whether the object name is a pattern.
	* <p>
	* An object name is a pattern if its domain contains a
	* wildcard or if the object name is a property pattern.
	*
	* @return  True if the name is a pattern, otherwise false.
	*/
	@:overload @:public public function isPattern() : Bool;
	
	/**
	* Checks whether the object name is a pattern on the domain part.
	*
	* @return  True if the name is a domain pattern, otherwise false.
	*
	*/
	@:overload @:public public function isDomainPattern() : Bool;
	
	/**
	* Checks whether the object name is a pattern on the key properties.
	* <p>
	* An object name is a pattern on the key properties if it is a
	* pattern on the key property list (e.g. "d:k=v,*") or on the
	* property values (e.g. "d:k=*") or on both (e.g. "d:k=*,*").
	*
	* @return  True if the name is a property pattern, otherwise false.
	*/
	@:overload @:public public function isPropertyPattern() : Bool;
	
	/**
	* Checks whether the object name is a pattern on the key property list.
	* <p>
	* For example, "d:k=v,*" and "d:k=*,*" are key property list patterns
	* whereas "d:k=*" is not.
	*
	* @return  True if the name is a property list pattern, otherwise false.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isPropertyListPattern() : Bool;
	
	/**
	* Checks whether the object name is a pattern on the value part
	* of at least one of the key properties.
	* <p>
	* For example, "d:k=*" and "d:k=*,*" are property value patterns
	* whereas "d:k=v,*" is not.
	*
	* @return  True if the name is a property value pattern, otherwise false.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isPropertyValuePattern() : Bool;
	
	/**
	* Checks whether the value associated with a key in a key
	* property is a pattern.
	*
	* @param property The property whose value is to be checked.
	*
	* @return True if the value associated with the given key property
	* is a pattern, otherwise false.
	*
	* @exception NullPointerException If <code>property</code> is null.
	* @exception IllegalArgumentException If <code>property</code> is not
	* a valid key property for this ObjectName.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function isPropertyValuePattern(property : String) : Bool;
	
	/**
	* <p>Returns the canonical form of the name; that is, a string
	* representation where the properties are sorted in lexical
	* order.</p>
	*
	* <p>More precisely, the canonical form of the name is a String
	* consisting of the <em>domain part</em>, a colon
	* (<code>:</code>), the <em>canonical key property list</em>, and
	* a <em>pattern indication</em>.</p>
	*
	* <p>The <em>canonical key property list</em> is the same string
	* as described for {@link #getCanonicalKeyPropertyListString()}.</p>
	*
	* <p>The <em>pattern indication</em> is:
	* <ul>
	* <li>empty for an ObjectName
	* that is not a property list pattern;
	* <li>an asterisk for an ObjectName
	* that is a property list pattern with no keys; or
	* <li>a comma and an
	* asterisk (<code>,*</code>) for an ObjectName that is a property
	* list pattern with at least one key.
	* </ul></p>
	*
	* @return The canonical form of the name.
	*/
	@:overload @:public public function getCanonicalName() : String;
	
	/**
	* Returns the domain part.
	*
	* @return The domain.
	*/
	@:overload @:public public function getDomain() : String;
	
	/**
	* Obtains the value associated with a key in a key property.
	*
	* @param property The property whose value is to be obtained.
	*
	* @return The value of the property, or null if there is no such
	* property in this ObjectName.
	*
	* @exception NullPointerException If <code>property</code> is null.
	*/
	@:overload @:public public function getKeyProperty(property : String) : String;
	
	/**
	* <p>Returns the key properties as a Hashtable.  The returned
	* value is a Hashtable in which each key is a key in the
	* ObjectName's key property list and each value is the associated
	* value.</p>
	*
	* <p>The returned value may be unmodifiable.  If it is
	* modifiable, changing it has no effect on this ObjectName.</p>
	*
	* @return The table of key properties.
	*/
	@:overload @:public public function getKeyPropertyList() : java.util.Hashtable<String, String>;
	
	/**
	* <p>Returns a string representation of the list of key
	* properties specified at creation time.  If this ObjectName was
	* constructed with the constructor {@link #ObjectName(String)},
	* the key properties in the returned String will be in the same
	* order as in the argument to the constructor.</p>
	*
	* @return The key property list string.  This string is
	* independent of whether the ObjectName is a pattern.
	*/
	@:overload @:public public function getKeyPropertyListString() : String;
	
	/**
	* Returns a string representation of the list of key properties,
	* in which the key properties are sorted in lexical order. This
	* is used in lexicographic comparisons performed in order to
	* select MBeans based on their key property list.  Lexical order
	* is the order implied by {@link String#compareTo(String)
	* String.compareTo(String)}.
	*
	* @return The canonical key property list string.  This string is
	* independent of whether the ObjectName is a pattern.
	*/
	@:overload @:public public function getCanonicalKeyPropertyListString() : String;
	
	/**
	* <p>Returns a string representation of the object name.  The
	* format of this string is not specified, but users can expect
	* that two ObjectNames return the same string if and only if they
	* are equal.</p>
	*
	* @return a string representation of this object name.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares the current object name with another object name.  Two
	* ObjectName instances are equal if and only if their canonical
	* forms are equal.  The canonical form is the string described
	* for {@link #getCanonicalName()}.
	*
	* @param object  The object name that the current object name is to be
	*        compared with.
	*
	* @return True if <code>object</code> is an ObjectName whose
	* canonical form is equal to that of this ObjectName.
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this object name.
	*
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* <p>Returns a quoted form of the given String, suitable for
	* inclusion in an ObjectName.  The returned value can be used as
	* the value associated with a key in an ObjectName.  The String
	* <code>s</code> may contain any character.  Appropriate quoting
	* ensures that the returned value is legal in an ObjectName.</p>
	*
	* <p>The returned value consists of a quote ('"'), a sequence of
	* characters corresponding to the characters of <code>s</code>,
	* and another quote.  Characters in <code>s</code> appear
	* unchanged within the returned value except:</p>
	*
	* <ul>
	* <li>A quote ('"') is replaced by a backslash (\) followed by a quote.</li>
	* <li>An asterisk ('*') is replaced by a backslash (\) followed by an
	* asterisk.</li>
	* <li>A question mark ('?') is replaced by a backslash (\) followed by
	* a question mark.</li>
	* <li>A backslash ('\') is replaced by two backslashes.</li>
	* <li>A newline character (the character '\n' in Java) is replaced
	* by a backslash followed by the character '\n'.</li>
	* </ul>
	*
	* @param s the String to be quoted.
	*
	* @return the quoted String.
	*
	* @exception NullPointerException if <code>s</code> is null.
	*
	*/
	@:overload @:public @:static public static function quote(s : String) : String;
	
	/**
	* <p>Returns an unquoted form of the given String.  If
	* <code>q</code> is a String returned by {@link #quote quote(s)},
	* then <code>unquote(q).equals(s)</code>.  If there is no String
	* <code>s</code> for which <code>quote(s).equals(q)</code>, then
	* unquote(q) throws an IllegalArgumentException.</p>
	*
	* <p>These rules imply that there is a one-to-one mapping between
	* quoted and unquoted forms.</p>
	*
	* @param q the String to be unquoted.
	*
	* @return the unquoted String.
	*
	* @exception IllegalArgumentException if <code>q</code> could not
	* have been returned by the {@link #quote} method, for instance
	* if it does not begin and end with a quote (").
	*
	* @exception NullPointerException if <code>q</code> is null.
	*
	*/
	@:overload @:public @:static public static function unquote(q : String) : String;
	
	/**
	* Defines the wildcard "*:*" ObjectName.
	*
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var WILDCARD(default, null) : javax.management.ObjectName;
	
	/**
	* <p>Test whether this ObjectName, which may be a pattern,
	* matches another ObjectName.  If <code>name</code> is a pattern,
	* the result is false.  If this ObjectName is a pattern, the
	* result is true if and only if <code>name</code> matches the
	* pattern.  If neither this ObjectName nor <code>name</code> is
	* a pattern, the result is true if and only if the two
	* ObjectNames are equal as described for the {@link
	* #equals(Object)} method.</p>
	*
	* @param name The name of the MBean to compare to.
	*
	* @return True if <code>name</code> matches this ObjectName.
	*
	* @exception NullPointerException if <code>name</code> is null.
	*
	*/
	@:overload @:public public function apply(name : javax.management.ObjectName) : Bool;
	
	/* Method inherited from QueryExp, no implementation needed here
	because ObjectName is not relative to an MBeanServer and does
	not contain a subquery.
	*/
	@:overload @:public public function setMBeanServer(mbs : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Compares two ObjectName instances. The ordering relation between
	* ObjectNames is not completely specified but is intended to be such
	* that a sorted list of ObjectNames will appear in an order that is
	* convenient for a person to read.</p>
	*
	* <p>In particular, if the two ObjectName instances have different
	* domains then their order is the lexicographical order of the domains.
	* The ordering of the key property list remains unspecified.</p>
	*
	* <p>For example, the ObjectName instances below:</p>
	* <ul>
	* <li>Shapes:type=Square,name=3</li>
	* <li>Colors:type=Red,name=2</li>
	* <li>Shapes:type=Triangle,side=isosceles,name=2</li>
	* <li>Colors:type=Red,name=1</li>
	* <li>Shapes:type=Square,name=1</li>
	* <li>Colors:type=Blue,name=1</li>
	* <li>Shapes:type=Square,name=2</li>
	* <li>JMImplementation:type=MBeanServerDelegate</li>
	* <li>Shapes:type=Triangle,side=scalene,name=1</li>
	* </ul>
	* <p>could be ordered as follows:</p>
	* <ul>
	* <li>Colors:type=Blue,name=1</li>
	* <li>Colors:type=Red,name=1</li>
	* <li>Colors:type=Red,name=2</li>
	* <li>JMImplementation:type=MBeanServerDelegate</li>
	* <li>Shapes:type=Square,name=1</li>
	* <li>Shapes:type=Square,name=2</li>
	* <li>Shapes:type=Square,name=3</li>
	* <li>Shapes:type=Triangle,side=scalene,name=1</li>
	* <li>Shapes:type=Triangle,side=isosceles,name=2</li>
	* </ul>
	*
	* @param name the ObjectName to be compared.
	*
	* @return a negative integer, zero, or a positive integer as this
	*         ObjectName is less than, equal to, or greater than the
	*         specified ObjectName.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function compareTo(name : javax.management.ObjectName) : Int;
	
	
}
/**
* A structure recording property structure and
* proposing minimal services
*/
@:native('javax$management$ObjectName$Property') @:internal extern class ObjectName_Property
{
	
}
/**
* Marker class for value pattern property.
*/
@:native('javax$management$ObjectName$PatternProperty') @:internal extern class ObjectName_PatternProperty extends javax.management.ObjectName.ObjectName_Property
{
	
}
