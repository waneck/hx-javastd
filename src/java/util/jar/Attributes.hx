package java.util.jar;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Attributes implements java.util.Map<Dynamic, Dynamic> implements java.lang.Cloneable
{
	/**
	* The attribute name-value mappings.
	*/
	private var map : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Constructs a new, empty Attributes object with default size.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new, empty Attributes object with the specified
	* initial size.
	*
	* @param size the initial number of attributes
	*/
	@:overload public function new(size : Int) : Void;
	
	/**
	* Constructs a new Attributes object with the same attribute name-value
	* mappings as in the specified Attributes.
	*
	* @param attr the specified Attributes
	*/
	@:overload public function new(attr : java.util.jar.Attributes) : Void;
	
	/**
	* Returns the value of the specified attribute name, or null if the
	* attribute name was not found.
	*
	* @param name the attribute name
	* @return the value of the specified attribute name, or null if
	*         not found.
	*/
	@:overload public function get(name : Dynamic) : Dynamic;
	
	/**
	* Returns the value of the specified attribute name, specified as
	* a string, or null if the attribute was not found. The attribute
	* name is case-insensitive.
	* <p>
	* This method is defined as:
	* <pre>
	*      return (String)get(new Attributes.Name((String)name));
	* </pre>
	*
	* @param name the attribute name as a string
	* @return the String value of the specified attribute name, or null if
	*         not found.
	* @throws IllegalArgumentException if the attribute name is invalid
	*/
	@:overload public function getValue(name : String) : String;
	
	/**
	* Returns the value of the specified Attributes.Name, or null if the
	* attribute was not found.
	* <p>
	* This method is defined as:
	* <pre>
	*     return (String)get(name);
	* </pre>
	*
	* @param name the Attributes.Name object
	* @return the String value of the specified Attribute.Name, or null if
	*         not found.
	*/
	@:overload public function getValue(name : java.util.jar.Attributes.Attributes_Name) : String;
	
	/**
	* Associates the specified value with the specified attribute name
	* (key) in this Map. If the Map previously contained a mapping for
	* the attribute name, the old value is replaced.
	*
	* @param name the attribute name
	* @param value the attribute value
	* @return the previous value of the attribute, or null if none
	* @exception ClassCastException if the name is not a Attributes.Name
	*            or the value is not a String
	*/
	@:overload public function put(name : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Associates the specified value with the specified attribute name,
	* specified as a String. The attributes name is case-insensitive.
	* If the Map previously contained a mapping for the attribute name,
	* the old value is replaced.
	* <p>
	* This method is defined as:
	* <pre>
	*      return (String)put(new Attributes.Name(name), value);
	* </pre>
	*
	* @param name the attribute name as a string
	* @param value the attribute value
	* @return the previous value of the attribute, or null if none
	* @exception IllegalArgumentException if the attribute name is invalid
	*/
	@:overload public function putValue(name : String, value : String) : String;
	
	/**
	* Removes the attribute with the specified name (key) from this Map.
	* Returns the previous attribute value, or null if none.
	*
	* @param name attribute name
	* @return the previous value of the attribute, or null if none
	*/
	@:overload public function remove(name : Dynamic) : Dynamic;
	
	/**
	* Returns true if this Map maps one or more attribute names (keys)
	* to the specified value.
	*
	* @param value the attribute value
	* @return true if this Map maps one or more attribute names to
	*         the specified value
	*/
	@:overload public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns true if this Map contains the specified attribute name (key).
	*
	* @param name the attribute name
	* @return true if this Map contains the specified attribute name
	*/
	@:overload public function containsKey(name : Dynamic) : Bool;
	
	/**
	* Copies all of the attribute name-value mappings from the specified
	* Attributes to this Map. Duplicate mappings will be replaced.
	*
	* @param attr the Attributes to be stored in this map
	* @exception ClassCastException if attr is not an Attributes
	*/
	@:overload public function putAll(attr : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Removes all attributes from this Map.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the number of attributes in this Map.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns true if this Map contains no attributes.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns a Set view of the attribute names (keys) contained in this Map.
	*/
	@:overload public function keySet() : java.util.Set<Dynamic>;
	
	/**
	* Returns a Collection view of the attribute values contained in this Map.
	*/
	@:overload public function values() : java.util.Collection<Dynamic>;
	
	/**
	* Returns a Collection view of the attribute name-value mappings
	* contained in this Map.
	*/
	@:overload public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	/**
	* Compares the specified Attributes object with this Map for equality.
	* Returns true if the given object is also an instance of Attributes
	* and the two Attributes objects represent the same mappings.
	*
	* @param o the Object to be compared
	* @return true if the specified Object is equal to this Map
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this Map.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a copy of the Attributes, implemented as follows:
	* <pre>
	*     public Object clone() { return new Attributes(this); }
	* </pre>
	* Since the attribute names and values are themselves immutable,
	* the Attributes returned can be safely modified without affecting
	* the original.
	*/
	@:overload public function clone() : Dynamic;
	
	
}
/**
* The Attributes.Name class represents an attribute name stored in
* this Map. Valid attribute names are case-insensitive, are restricted
* to the ASCII characters in the set [0-9a-zA-Z_-], and cannot exceed
* 70 characters in length. Attribute values can contain any characters
* and will be UTF8-encoded when written to the output stream.  See the
* <a href="../../../../technotes/guides/jar/jar.html">JAR File Specification</a>
* for more information about valid attribute names and values.
*/
@:native('java$util$jar$Attributes$Name') extern class Attributes_Name
{
	/**
	* Constructs a new attribute name using the given string name.
	*
	* @param name the attribute string name
	* @exception IllegalArgumentException if the attribute name was
	*            invalid
	* @exception NullPointerException if the attribute name was null
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Compares this attribute name to another for equality.
	* @param o the object to compare
	* @return true if this attribute name is equal to the
	*         specified attribute object
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Computes the hash value for this attribute name.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the attribute name as a String.
	*/
	@:overload public function toString() : String;
	
	/**
	* <code>Name</code> object for <code>Manifest-Version</code>
	* manifest attribute. This attribute indicates the version number
	* of the manifest standard to which a JAR file's manifest conforms.
	* @see <a href="../../../../technotes/guides/jar/jar.html#JAR Manifest">
	*      Manifest and Signature Specification</a>
	*/
	public static var MANIFEST_VERSION(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Signature-Version</code>
	* manifest attribute used when signing JAR files.
	* @see <a href="../../../../technotes/guides/jar/jar.html#JAR Manifest">
	*      Manifest and Signature Specification</a>
	*/
	public static var SIGNATURE_VERSION(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Content-Type</code>
	* manifest attribute.
	*/
	public static var CONTENT_TYPE(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Class-Path</code>
	* manifest attribute. Bundled extensions can use this attribute
	* to find other JAR files containing needed classes.
	* @see <a href="../../../../technotes/guides/extensions/spec.html#bundled">
	*      Extensions Specification</a>
	*/
	public static var CLASS_PATH(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Main-Class</code> manifest
	* attribute used for launching applications packaged in JAR files.
	* The <code>Main-Class</code> attribute is used in conjunction
	* with the <code>-jar</code> command-line option of the
	* <tt>java</tt> application launcher.
	*/
	public static var MAIN_CLASS(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Sealed</code> manifest attribute
	* used for sealing.
	* @see <a href="../../../../technotes/guides/extensions/spec.html#sealing">
	*      Extension Sealing</a>
	*/
	public static var SEALED(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Extension-List</code> manifest attribute
	* used for declaring dependencies on installed extensions.
	* @see <a href="../../../../technotes/guides/extensions/spec.html#dependency">
	*      Installed extension dependency</a>
	*/
	public static var EXTENSION_LIST(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Extension-Name</code> manifest attribute
	* used for declaring dependencies on installed extensions.
	* @see <a href="../../../../technotes/guides/extensions/spec.html#dependency">
	*      Installed extension dependency</a>
	*/
	public static var EXTENSION_NAME(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Extension-Name</code> manifest attribute
	* used for declaring dependencies on installed extensions.
	* @see <a href="../../../../technotes/guides/extensions/spec.html#dependency">
	*      Installed extension dependency</a>
	*/
	public static var EXTENSION_INSTALLATION(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Implementation-Title</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var IMPLEMENTATION_TITLE(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Implementation-Version</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var IMPLEMENTATION_VERSION(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Implementation-Vendor</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var IMPLEMENTATION_VENDOR(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Implementation-Vendor-Id</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var IMPLEMENTATION_VENDOR_ID(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Implementation-Vendor-URL</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var IMPLEMENTATION_URL(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Specification-Title</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var SPECIFICATION_TITLE(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Specification-Version</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var SPECIFICATION_VERSION(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	/**
	* <code>Name</code> object for <code>Specification-Vendor</code>
	* manifest attribute used for package versioning.
	* @see <a href="../../../../technotes/guides/versioning/spec/versioning2.html#wp90779">
	*      Java Product Versioning Specification</a>
	*/
	public static var SPECIFICATION_VENDOR(default, null) : java.util.jar.Attributes.Attributes_Name;
	
	
}
