package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Generate serialized form for serializable fields.
* Documentation denoted by the tags <code>serial</code> and
* <code>serialField</code> is processed.
*
* @author Joe Fialli
* @author Bhavesh Patel (Modified)
*/
extern class HtmlSerialFieldWriter extends com.sun.tools.doclets.formats.html.FieldWriterImpl implements com.sun.tools.doclets.internal.toolkit.SerializedFormWriter.SerializedFormWriter_SerialFieldWriter
{
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	@:overload @:public public function members(cd : com.sun.javadoc.ClassDoc) : java.util.List<com.sun.javadoc.FieldDoc>;
	
	@:overload @:protected private function printTypeLinkNoDimension(type : com.sun.javadoc.Type) : Void;
	
	/**
	* Return the header for serializable fields section.
	*
	* @return a content tree for the header
	*/
	@:overload @:public public function getSerializableFieldsHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Return the header for serializable fields content section.
	*
	* @param isLastContent true if the cotent being documented is the last content.
	* @return a content tree for the header
	*/
	@:overload @:public public function getFieldsContentHeader(isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add serializable fields.
	*
	* @param heading the heading for the section
	* @param serializableFieldsTree the tree to be added to the serializable fileds
	*        content tree
	* @return a content tree for the serializable fields content
	*/
	@:overload @:public public function getSerializableFields(heading : String, serializableFieldsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the member header.
	*
	* @param fieldsType the class document to be listed
	* @param fieldTypeStr the string for the filed type to be documented
	* @param fieldDimensions the dimensions of the field string to be added
	* @param firldName name of the field to be added
	* @param contentTree the content tree to which the member header will be added
	*/
	@:overload @:public public function addMemberHeader(fieldType : com.sun.javadoc.ClassDoc, fieldTypeStr : String, fieldDimensions : String, fieldName : String, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the deprecated information for this member.
	*
	* @param field the field to document.
	* @param contentTree the tree to which the deprecated info will be added
	*/
	@:overload @:public public function addMemberDeprecatedInfo(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the description text for this member.
	*
	* @param field the field to document.
	* @param contentTree the tree to which the deprecated info will be added
	*/
	@:overload @:public public function addMemberDescription(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the description text for this member represented by the tag.
	*
	* @param serialFieldTag the field to document (represented by tag)
	* @param contentTree the tree to which the deprecated info will be added
	*/
	@:overload @:public public function addMemberDescription(serialFieldTag : com.sun.javadoc.SerialFieldTag, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tag information for this member.
	*
	* @param field the field to document.
	* @param contentTree the tree to which the member tags info will be added
	*/
	@:overload @:public public function addMemberTags(field : com.sun.javadoc.FieldDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Check to see if overview details should be printed. If
	* nocomment option set or if there is no text to be printed
	* for deprecation info, comment or tags, do not print overview details.
	*
	* @param field the field to check overview details for.
	* @return true if overview details need to be printed
	*/
	@:overload @:public public function shouldPrintOverview(field : com.sun.javadoc.FieldDoc) : Bool;
	
	
}
