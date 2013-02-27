package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* The interface for writing serialized form output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.5
*/
@:require(java5) extern interface SerializedFormWriter
{
	/**
	* Get the header.
	*
	* @param header the header to write.
	* @return the header content tree
	*/
	@:overload public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serialized form summaries header.
	*
	* @return the serialized form summary header tree
	*/
	@:overload public function getSerializedSummariesHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the package serialized form header.
	*
	* @return the package serialized form header tree
	*/
	@:overload public function getPackageSerializedHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the given package header.
	*
	* @param packageName the package header to write
	* @return a content tree for the package header
	*/
	@:overload public function getPackageHeader(packageName : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serialized class header.
	*
	* @return a content tree for the serialized class header
	*/
	@:overload public function getClassSerializedHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the heading for the serializable class.
	*
	* @param classDoc the class being processed
	* @return a content tree for the class heading
	*/
	@:overload public function getClassHeader(classDoc : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serial UID info header.
	*
	* @return a content tree for the serial uid info header
	*/
	@:overload public function getSerialUIDInfoHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the serial UID info.
	*
	* @param header the header that will show up before the UID.
	* @param serialUID the serial UID to print.
	* @param serialUidTree the serial UID tree to which the content will be added.
	*/
	@:overload public function addSerialUIDInfo(header : String, serialUID : String, serialUidTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the class serialize content header.
	*
	* @return a content tree for the class serialize content header
	*/
	@:overload public function getClassContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Return an instance of a SerialFieldWriter.
	*
	* @return an instance of a SerialFieldWriter.
	*/
	@:overload public function getSerialFieldWriter(classDoc : com.sun.javadoc.ClassDoc) : SerializedFormWriter_SerialFieldWriter;
	
	/**
	* Return an instance of a SerialMethodWriter.
	*
	* @return an instance of a SerialMethodWriter.
	*/
	@:overload public function getSerialMethodWriter(classDoc : com.sun.javadoc.ClassDoc) : SerializedFormWriter_SerialMethodWriter;
	
	/**
	* Close the writer.
	*/
	@:overload @:abstract public function close() : Void;
	
	/**
	* Get the serialized content.
	*
	* @param serializedTreeContent content for serialized data
	* @return a content tree for serialized information
	*/
	@:overload public function getSerializedContent(serializedTreeContent : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the footer.
	*
	* @param serializedTree the serialized tree to be added
	*/
	@:overload public function addFooter(serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the serialized form document.
	*
	* @param serializedTree the content tree that will be printed
	*/
	@:overload @:abstract public function printDocument(serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
/**
* Write the serialized form for a given field.
*/
@:native('com$sun$tools$doclets$internal$toolkit$SerializedFormWriter$SerialFieldWriter') extern interface SerializedFormWriter_SerialFieldWriter
{
	/**
	* Get the serializable field header.
	*
	* @return serialized fields header content tree
	*/
	@:overload public function getSerializableFieldsHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the field content header.
	*
	* @param isLastContent true if this is the last content to be documented
	* @return fields header content tree
	*/
	@:overload public function getFieldsContentHeader(isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the fields content.
	*
	* @param heading the heading to write.
	* @param contentTree content tree to which the heading will be added
	* @return serializable fields content tree
	*/
	@:overload public function getSerializableFields(heading : String, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the deprecated information for this member.
	*
	* @param field the field to document.
	* @param contentTree content tree to which the deprecated information will be added
	*/
	@:overload public function addMemberDeprecatedInfo(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the description text for this member.
	*
	* @param field the field to document.
	* @param contentTree content tree to which the member description will be added
	*/
	@:overload public function addMemberDescription(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the description text for this member represented by the tag.
	*
	* @param serialFieldTag the field to document (represented by tag).
	* @param contentTree content tree to which the member description will be added
	*/
	@:overload public function addMemberDescription(serialFieldTag : com.sun.javadoc.SerialFieldTag, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the tag information for this member.
	*
	* @param field the field to document.
	* @param contentTree content tree to which the member tags will be added
	*/
	@:overload public function addMemberTags(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the member header.
	*
	* @param fieldType the type of the field.
	* @param fieldTypeStr the type of the field in string format.  We will
	* print this out if we can't link to the type.
	* @param fieldDimensions the dimensions of the field.
	* @param fieldName the name of the field.
	* @param contentTree content tree to which the member header will be added
	*/
	@:overload public function addMemberHeader(fieldType : com.sun.javadoc.ClassDoc, fieldTypeStr : String, fieldDimensions : String, fieldName : String, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Check to see if overview details should be printed. If
	* nocomment option set or if there is no text to be printed
	* for deprecation info, inline comment or tags,
	* do not print overview details.
	*
	* @param field the field to check overview details for.
	* @return true if overview details need to be printed
	*/
	@:overload public function shouldPrintOverview(field : com.sun.javadoc.FieldDoc) : Bool;
	
	
}
/**
* Write the serialized form for a given field.
*/
@:native('com$sun$tools$doclets$internal$toolkit$SerializedFormWriter$SerialMethodWriter') extern interface SerializedFormWriter_SerialMethodWriter
{
	/**
	* Get the serializable method header.
	*
	* @return serializable methods content tree
	*/
	@:overload public function getSerializableMethodsHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the method content header.
	*
	* @param isLastContent true if this is the last content to be documented
	* @return methods content tree
	*/
	@:overload public function getMethodsContentHeader(isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Write the given heading.
	*
	* @param heading the heading to write
	* @param serializableMethodTree content tree which will be added
	* @return serializable methods content tree
	*/
	@:overload public function getSerializableMethods(heading : String, serializableMethodTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Write a warning that no serializable methods exist.
	*
	* @param msg the warning to print
	* @return no customization message tree
	*/
	@:overload public function getNoCustomizationMsg(msg : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the header.
	*
	* @param member the member to write the header for
	* @param methodsContentTree content tree to which the header will be added
	*/
	@:overload public function addMemberHeader(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the deprecated information for this member.
	*
	* @param member the member to write the deprecated information for
	* @param methodsContentTree content tree to which the deprecated
	* information will be added
	*/
	@:overload public function addDeprecatedMemberInfo(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the description for this member.
	*
	* @param member the member to write the information for
	* @param methodsContentTree content tree to which the member
	* information will be added
	*/
	@:overload public function addMemberDescription(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Adds the tag information for this member.
	*
	* @param member the member to write the tags information for
	* @param methodsContentTree content tree to which the tags
	* information will be added
	*/
	@:overload public function addMemberTags(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
