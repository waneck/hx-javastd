package javax.imageio.metadata;
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
extern class IIOMetadataFormatImpl implements javax.imageio.metadata.IIOMetadataFormat
{
	/**
	* A <code>String</code> constant containing the standard format
	* name, <code>"javax_imageio_1.0"</code>.
	*/
	public static var standardMetadataFormatName(default, null) : String;
	
	/**
	* Constructs a blank <code>IIOMetadataFormatImpl</code> instance,
	* with a given root element name and child policy (other than
	* <code>CHILD_POLICY_REPEAT</code>).  Additional elements, and
	* their attributes and <code>Object</code> reference information
	* may be added using the various <code>add</code> methods.
	*
	* @param rootName the name of the root element.
	* @param childPolicy one of the <code>CHILD_POLICY_*</code> constants,
	* other than <code>CHILD_POLICY_REPEAT</code>.
	*
	* @exception IllegalArgumentException if <code>rootName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>childPolicy</code> is
	* not one of the predefined constants.
	*/
	@:overload public function new(rootName : String, childPolicy : Int) : Void;
	
	/**
	* Constructs a blank <code>IIOMetadataFormatImpl</code> instance,
	* with a given root element name and a child policy of
	* <code>CHILD_POLICY_REPEAT</code>.  Additional elements, and
	* their attributes and <code>Object</code> reference information
	* may be added using the various <code>add</code> methods.
	*
	* @param rootName the name of the root element.
	* @param minChildren the minimum number of children of the node.
	* @param maxChildren the maximum number of children of the node.
	*
	* @exception IllegalArgumentException if <code>rootName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>minChildren</code>
	* is negative or larger than <code>maxChildren</code>.
	*/
	@:overload public function new(rootName : String, minChildren : Int, maxChildren : Int) : Void;
	
	/**
	* Sets a new base name for locating <code>ResourceBundle</code>s
	* containing descriptions of elements and attributes for this
	* format.
	*
	* <p> Prior to the first time this method is called, the base
	* name will be equal to <code>this.getClass().getName() +
	* "Resources"</code>.
	*
	* @param resourceBaseName a <code>String</code> containg the new
	* base name.
	*
	* @exception IllegalArgumentException if
	* <code>resourceBaseName</code> is <code>null</code>.
	*
	* @see #getResourceBaseName
	*/
	@:overload private function setResourceBaseName(resourceBaseName : String) : Void;
	
	/**
	* Returns the currently set base name for locating
	* <code>ResourceBundle</code>s.
	*
	* @return a <code>String</code> containing the base name.
	*
	* @see #setResourceBaseName
	*/
	@:overload private function getResourceBaseName() : String;
	
	/**
	* Adds a new element type to this metadata document format with a
	* child policy other than <code>CHILD_POLICY_REPEAT</code>.
	*
	* @param elementName the name of the new element.
	* @param parentName the name of the element that will be the
	* parent of the new element.
	* @param childPolicy one of the <code>CHILD_POLICY_*</code>
	* constants, other than <code>CHILD_POLICY_REPEAT</code>,
	* indicating the child policy of the new element.
	*
	* @exception IllegalArgumentException if <code>parentName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>childPolicy</code>
	* is not one of the predefined constants.
	*/
	@:overload private function addElement(elementName : String, parentName : String, childPolicy : Int) : Void;
	
	/**
	* Adds a new element type to this metadata document format with a
	* child policy of <code>CHILD_POLICY_REPEAT</code>.
	*
	* @param elementName the name of the new element.
	* @param parentName the name of the element that will be the
	* parent of the new element.
	* @param minChildren the minimum number of children of the node.
	* @param maxChildren the maximum number of children of the node.
	*
	* @exception IllegalArgumentException if <code>parentName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>minChildren</code>
	* is negative or larger than <code>maxChildren</code>.
	*/
	@:overload private function addElement(elementName : String, parentName : String, minChildren : Int, maxChildren : Int) : Void;
	
	/**
	* Adds an existing element to the list of legal children for a
	* given parent node type.
	*
	* @param parentName the name of the element that will be the
	* new parent of the element.
	* @param elementName the name of the element to be addded as a
	* child.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>parentName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	*/
	@:overload private function addChildElement(elementName : String, parentName : String) : Void;
	
	/**
	* Removes an element from the format.  If no element with the
	* given name was present, nothing happens and no exception is
	* thrown.
	*
	* @param elementName the name of the element to be removed.
	*/
	@:overload private function removeElement(elementName : String) : Void;
	
	/**
	* Adds a new attribute to a previously defined element that may
	* be set to an arbitrary value.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being added.
	* @param dataType the data type (string format) of the attribute,
	* one of the <code>DATATYPE_*</code> constants.
	* @param required <code>true</code> if the attribute must be present.
	* @param defaultValue the default value for the attribute, or
	* <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>dataType</code> is
	* not one of the predefined constants.
	*/
	@:overload private function addAttribute(elementName : String, attrName : String, dataType : Int, required : Bool, defaultValue : String) : Void;
	
	/**
	* Adds a new attribute to a previously defined element that will
	* be defined by a set of enumerated values.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being added.
	* @param dataType the data type (string format) of the attribute,
	* one of the <code>DATATYPE_*</code> constants.
	* @param required <code>true</code> if the attribute must be present.
	* @param defaultValue the default value for the attribute, or
	* <code>null</code>.
	* @param enumeratedValues a <code>List</code> of
	* <code>String</code>s containing the legal values for the
	* attribute.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>dataType</code> is
	* not one of the predefined constants.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> is <code>null</code>.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> does not contain at least one
	* entry.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> contains an element that is not a
	* <code>String</code> or is <code>null</code>.
	*/
	@:overload private function addAttribute(elementName : String, attrName : String, dataType : Int, required : Bool, defaultValue : String, enumeratedValues : java.util.List<String>) : Void;
	
	/**
	* Adds a new attribute to a previously defined element that will
	* be defined by a range of values.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being added.
	* @param dataType the data type (string format) of the attribute,
	* one of the <code>DATATYPE_*</code> constants.
	* @param required <code>true</code> if the attribute must be present.
	* @param defaultValue the default value for the attribute, or
	* <code>null</code>.
	* @param minValue the smallest (inclusive or exclusive depending
	* on the value of <code>minInclusive</code>) legal value for the
	* attribute, as a <code>String</code>.
	* @param maxValue the largest (inclusive or exclusive depending
	* on the value of <code>minInclusive</code>) legal value for the
	* attribute, as a <code>String</code>.
	* @param minInclusive <code>true</code> if <code>minValue</code>
	* is inclusive.
	* @param maxInclusive <code>true</code> if <code>maxValue</code>
	* is inclusive.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>dataType</code> is
	* not one of the predefined constants.
	*/
	@:overload private function addAttribute(elementName : String, attrName : String, dataType : Int, required : Bool, defaultValue : String, minValue : String, maxValue : String, minInclusive : Bool, maxInclusive : Bool) : Void;
	
	/**
	* Adds a new attribute to a previously defined element that will
	* be defined by a list of values.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being added.
	* @param dataType the data type (string format) of the attribute,
	* one of the <code>DATATYPE_*</code> constants.
	* @param required <code>true</code> if the attribute must be present.
	* @param listMinLength the smallest legal number of list items.
	* @param listMaxLength the largest legal number of list items.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code>.
	* @exception IllegalArgumentException if <code>dataType</code> is
	* not one of the predefined constants.
	* @exception IllegalArgumentException if
	* <code>listMinLength</code> is negative or larger than
	* <code>listMaxLength</code>.
	*/
	@:overload private function addAttribute(elementName : String, attrName : String, dataType : Int, required : Bool, listMinLength : Int, listMaxLength : Int) : Void;
	
	/**
	* Adds a new attribute to a previously defined element that will
	* be defined by the enumerated values <code>TRUE</code> and
	* <code>FALSE</code>, with a datatype of
	* <code>DATATYPE_BOOLEAN</code>.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being added.
	* @param hasDefaultValue <code>true</code> if a default value
	* should be present.
	* @param defaultValue the default value for the attribute as a
	* <code>boolean</code>, ignored if <code>hasDefaultValue</code>
	* is <code>false</code>.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code>.
	*/
	@:overload private function addBooleanAttribute(elementName : String, attrName : String, hasDefaultValue : Bool, defaultValue : Bool) : Void;
	
	/**
	* Removes an attribute from a previously defined element.  If no
	* attribute with the given name was present in the given element,
	* nothing happens and no exception is thrown.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute being removed.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this format.
	*/
	@:overload private function removeAttribute(elementName : String, attrName : String) : Void;
	
	/**
	* Allows an <code>Object</code> reference of a given class type
	* to be stored in nodes implementing the named element.  The
	* value of the <code>Object</code> is unconstrained other than by
	* its class type.
	*
	* <p> If an <code>Object</code> reference was previously allowed,
	* the previous settings are overwritten.
	*
	* @param elementName the name of the element.
	* @param classType a <code>Class</code> variable indicating the
	* legal class type for the object value.
	* @param required <code>true</code> if an object value must be present.
	* @param defaultValue the default value for the
	* <code>Object</code> reference, or <code>null</code>.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this format.
	*/
	@:overload private function addObjectValue<T>(elementName : String, classType : Class<T>, required : Bool, defaultValue : T) : Void;
	
	/**
	* Allows an <code>Object</code> reference of a given class type
	* to be stored in nodes implementing the named element.  The
	* value of the <code>Object</code> must be one of the values
	* given by <code>enumeratedValues</code>.
	*
	* <p> If an <code>Object</code> reference was previously allowed,
	* the previous settings are overwritten.
	*
	* @param elementName the name of the element.
	* @param classType a <code>Class</code> variable indicating the
	* legal class type for the object value.
	* @param required <code>true</code> if an object value must be present.
	* @param defaultValue the default value for the
	* <code>Object</code> reference, or <code>null</code>.
	* @param enumeratedValues a <code>List</code> of
	* <code>Object</code>s containing the legal values for the
	* object reference.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this format.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> is <code>null</code>.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> does not contain at least one
	* entry.
	* @exception IllegalArgumentException if
	* <code>enumeratedValues</code> contains an element that is not
	* an instance of the class type denoted by <code>classType</code>
	* or is <code>null</code>.
	*/
	@:overload private function addObjectValue<T>(elementName : String, classType : Class<T>, required : Bool, defaultValue : T, enumeratedValues : java.util.List<T>) : Void;
	
	/**
	* Allows an <code>Object</code> reference of a given class type
	* to be stored in nodes implementing the named element.  The
	* value of the <code>Object</code> must be within the range given
	* by <code>minValue</code> and <code>maxValue</code>.
	* Furthermore, the class type must implement the
	* <code>Comparable</code> interface.
	*
	* <p> If an <code>Object</code> reference was previously allowed,
	* the previous settings are overwritten.
	*
	* @param elementName the name of the element.
	* @param classType a <code>Class</code> variable indicating the
	* legal class type for the object value.
	* @param defaultValue the default value for the
	* @param minValue the smallest (inclusive or exclusive depending
	* on the value of <code>minInclusive</code>) legal value for the
	* object value, as a <code>String</code>.
	* @param maxValue the largest (inclusive or exclusive depending
	* on the value of <code>minInclusive</code>) legal value for the
	* object value, as a <code>String</code>.
	* @param minInclusive <code>true</code> if <code>minValue</code>
	* is inclusive.
	* @param maxInclusive <code>true</code> if <code>maxValue</code>
	* is inclusive.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this
	* format.
	*/
	@:overload private function addObjectValue<T : Dynamic, java.lang.Comparable<T>>(elementName : String, classType : Class<T>, defaultValue : T, minValue : java.lang.Comparable<T>, maxValue : java.lang.Comparable<T>, minInclusive : Bool, maxInclusive : Bool) : Void;
	
	/**
	* Allows an <code>Object</code> reference of a given class type
	* to be stored in nodes implementing the named element.  The
	* value of the <code>Object</code> must an array of objects of
	* class type given by <code>classType</code>, with at least
	* <code>arrayMinLength</code> and at most
	* <code>arrayMaxLength</code> elements.
	*
	* <p> If an <code>Object</code> reference was previously allowed,
	* the previous settings are overwritten.
	*
	* @param elementName the name of the element.
	* @param classType a <code>Class</code> variable indicating the
	* legal class type for the object value.
	* @param arrayMinLength the smallest legal length for the array.
	* @param arrayMaxLength the largest legal length for the array.
	*
	* @exception IllegalArgumentException if <code>elementName</code> is
	* not a legal element name for this format.
	*/
	@:overload private function addObjectValue(elementName : String, classType : Class<Dynamic>, arrayMinLength : Int, arrayMaxLength : Int) : Void;
	
	/**
	* Disallows an <code>Object</code> reference from being stored in
	* nodes implementing the named element.
	*
	* @param elementName the name of the element.
	*
	* @exception IllegalArgumentException if <code>elementName</code> is
	* not a legal element name for this format.
	*/
	@:overload private function removeObjectValue(elementName : String) : Void;
	
	@:overload public function getRootName() : String;
	
	@:overload @:abstract public function canNodeAppear(elementName : String, imageType : javax.imageio.ImageTypeSpecifier) : Bool;
	
	@:overload public function getElementMinChildren(elementName : String) : Int;
	
	@:overload public function getElementMaxChildren(elementName : String) : Int;
	
	/**
	* Returns a <code>String</code> containing a description of the
	* named element, or <code>null</code>.  The desciption will be
	* localized for the supplied <code>Locale</code> if possible.
	*
	* <p> The default implementation will first locate a
	* <code>ResourceBundle</code> using the current resource base
	* name set by <code>setResourceBaseName</code> and the supplied
	* <code>Locale</code>, using the fallback mechanism described in
	* the comments for <code>ResourceBundle.getBundle</code>.  If a
	* <code>ResourceBundle</code> is found, the element name will be
	* used as a key to its <code>getString</code> method, and the
	* result returned.  If no <code>ResourceBundle</code> is found,
	* or no such key is present, <code>null</code> will be returned.
	*
	* <p> If <code>locale</code> is <code>null</code>, the current
	* default <code>Locale</code> returned by <code>Locale.getLocale</code>
	* will be used.
	*
	* @param elementName the name of the element.
	* @param locale the <code>Locale</code> for which localization
	* will be attempted.
	*
	* @return the element description.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this format.
	*
	* @see #setResourceBaseName
	*/
	@:overload public function getElementDescription(elementName : String, locale : java.util.Locale) : String;
	
	@:overload public function getChildPolicy(elementName : String) : Int;
	
	@:overload public function getChildNames(elementName : String) : java.NativeArray<String>;
	
	@:overload public function getAttributeNames(elementName : String) : java.NativeArray<String>;
	
	@:overload public function getAttributeValueType(elementName : String, attrName : String) : Int;
	
	@:overload public function getAttributeDataType(elementName : String, attrName : String) : Int;
	
	@:overload public function isAttributeRequired(elementName : String, attrName : String) : Bool;
	
	@:overload public function getAttributeDefaultValue(elementName : String, attrName : String) : String;
	
	@:overload public function getAttributeEnumerations(elementName : String, attrName : String) : java.NativeArray<String>;
	
	@:overload public function getAttributeMinValue(elementName : String, attrName : String) : String;
	
	@:overload public function getAttributeMaxValue(elementName : String, attrName : String) : String;
	
	@:overload public function getAttributeListMinLength(elementName : String, attrName : String) : Int;
	
	@:overload public function getAttributeListMaxLength(elementName : String, attrName : String) : Int;
	
	/**
	* Returns a <code>String</code> containing a description of the
	* named attribute, or <code>null</code>.  The desciption will be
	* localized for the supplied <code>Locale</code> if possible.
	*
	* <p> The default implementation will first locate a
	* <code>ResourceBundle</code> using the current resource base
	* name set by <code>setResourceBaseName</code> and the supplied
	* <code>Locale</code>, using the fallback mechanism described in
	* the comments for <code>ResourceBundle.getBundle</code>.  If a
	* <code>ResourceBundle</code> is found, the element name followed
	* by a "/" character followed by the attribute name
	* (<code>elementName + "/" + attrName</code>) will be used as a
	* key to its <code>getString</code> method, and the result
	* returned.  If no <code>ResourceBundle</code> is found, or no
	* such key is present, <code>null</code> will be returned.
	*
	* <p> If <code>locale</code> is <code>null</code>, the current
	* default <code>Locale</code> returned by <code>Locale.getLocale</code>
	* will be used.
	*
	* @param elementName the name of the element.
	* @param attrName the name of the attribute.
	* @param locale the <code>Locale</code> for which localization
	* will be attempted, or <code>null</code>.
	*
	* @return the attribute description.
	*
	* @exception IllegalArgumentException if <code>elementName</code>
	* is <code>null</code>, or is not a legal element name for this format.
	* @exception IllegalArgumentException if <code>attrName</code> is
	* <code>null</code> or is not a legal attribute name for this
	* element.
	*
	* @see #setResourceBaseName
	*/
	@:overload public function getAttributeDescription(elementName : String, attrName : String, locale : java.util.Locale) : String;
	
	@:overload public function getObjectValueType(elementName : String) : Int;
	
	@:overload public function getObjectClass(elementName : String) : Class<Dynamic>;
	
	@:overload public function getObjectDefaultValue(elementName : String) : Dynamic;
	
	@:overload public function getObjectEnumerations(elementName : String) : java.NativeArray<Dynamic>;
	
	@:overload public function getObjectMinValue(elementName : String) : java.lang.Comparable<Dynamic>;
	
	@:overload public function getObjectMaxValue(elementName : String) : java.lang.Comparable<Dynamic>;
	
	@:overload public function getObjectArrayMinLength(elementName : String) : Int;
	
	@:overload public function getObjectArrayMaxLength(elementName : String) : Int;
	
	/**
	* Returns an <code>IIOMetadataFormat</code> object describing the
	* standard, plug-in neutral <code>javax.imageio_1.0</code>
	* metadata document format described in the comment of the
	* <code>javax.imageio.metadata</code> package.
	*
	* @return a predefined <code>IIOMetadataFormat</code> instance.
	*/
	@:overload public static function getStandardFormatInstance() : javax.imageio.metadata.IIOMetadataFormat;
	
	
}
@:native('javax$imageio$metadata$IIOMetadataFormatImpl$Element') @:internal extern class IIOMetadataFormatImpl_Element
{
	
}
@:native('javax$imageio$metadata$IIOMetadataFormatImpl$Attribute') @:internal extern class IIOMetadataFormatImpl_Attribute
{
	
}
@:native('javax$imageio$metadata$IIOMetadataFormatImpl$ObjectValue') @:internal extern class IIOMetadataFormatImpl_ObjectValue
{
	
}
