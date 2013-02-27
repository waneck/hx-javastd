package com.sun.tools.doclets.internal.toolkit.builders;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Builds the serialized form.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern class SerializedFormBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder
{
	/**
	* The root element of the serialized form XML is {@value}.
	*/
	public static var NAME(default, null) : String;
	
	/**
	* The current member being documented.
	*/
	private var currentMember : com.sun.javadoc.MemberDoc;
	
	/**
	* Construct a new SerializedFormBuilder.
	* @param configuration the current configuration of the doclet.
	*/
	@:overload public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : SerializedFormBuilder;
	
	/**
	* Build the serialized form.
	*/
	@:overload override public function build() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getName() : String;
	
	/**
	* Build the serialized form.
	*
	* @param node the XML element that specifies which components to document
	* @param serializedTree content tree to which the documentation will be added
	*/
	@:overload public function buildSerializedForm(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the serialized form summaries.
	*
	* @param node the XML element that specifies which components to document
	* @param serializedTree content tree to which the documentation will be added
	*/
	@:overload public function buildSerializedFormSummaries(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the package serialized form for the current package being processed.
	*
	* @param node the XML element that specifies which components to document
	* @param serializedSummariesTree content tree to which the documentation will be added
	*/
	@:overload public function buildPackageSerializedForm(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, serializedSummariesTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the package header.
	*
	* @param node the XML element that specifies which components to document
	* @param packageSerializedTree content tree to which the documentation will be added
	*/
	@:overload public function buildPackageHeader(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, packageSerializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the class serialized form.
	*
	* @param node the XML element that specifies which components to document
	* @param packageSerializedTree content tree to which the documentation will be added
	*/
	@:overload public function buildClassSerializedForm(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, packageSerializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the serial UID information for the given class.
	*
	* @param node the XML element that specifies which components to document
	* @param classTree content tree to which the serial UID information will be added
	*/
	@:overload public function buildSerialUIDInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summaries for the methods and fields.
	*
	* @param node the XML element that specifies which components to document
	* @param classTree content tree to which the documentation will be added
	*/
	@:overload public function buildClassContent(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summaries for the methods that belong to the given
	* class.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildSerializableMethods(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the method sub header.
	*
	* @param node the XML element that specifies which components to document
	* @param methodsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildMethodSubHeader(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the deprecated method description.
	*
	* @param node the XML element that specifies which components to document
	* @param methodsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildDeprecatedMethodInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the information for the method.
	*
	* @param node the XML element that specifies which components to document
	* @param methodsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildMethodInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build method description.
	*
	* @param node the XML element that specifies which components to document
	* @param methodsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildMethodDescription(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the method tags.
	*
	* @param node the XML element that specifies which components to document
	* @param methodsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildMethodTags(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the field header.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildFieldHeader(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the serialization overview for the given class.
	*
	* @param classDoc the class to print the overview for.
	* @param classContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildFieldSerializationOverview(classDoc : com.sun.javadoc.ClassDoc, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the summaries for the fields that belong to the given class.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildSerializableFields(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the field sub header.
	*
	* @param node the XML element that specifies which components to document
	* @param fieldsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildFieldSubHeader(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, fieldsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the field deprecation information.
	*
	* @param node the XML element that specifies which components to document
	* @param fieldsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildFieldDeprecationInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, fieldsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the serial field tags information.
	*
	* @param serializableFieldsTree content tree to which the documentation will be added
	*/
	@:overload public function buildSerialFieldTagsInfo(serializableFieldsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the field information.
	*
	* @param node the XML element that specifies which components to document
	* @param fieldsContentTree content tree to which the documentation will be added
	*/
	@:overload public function buildFieldInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, fieldsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return true if the given Doc should be included
	* in the serialized form.
	*
	* @param doc the Doc object to check for serializability.
	*/
	@:overload public static function serialInclude(doc : com.sun.javadoc.Doc) : Bool;
	
	
}
