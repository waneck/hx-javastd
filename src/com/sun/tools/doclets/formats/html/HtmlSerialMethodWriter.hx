package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Generate serialized form for Serializable/Externalizable methods.
* Documentation denoted by the <code>serialData</code> tag is processed.
*
* @author Joe Fialli
* @author Bhavesh Patel (Modified)
*/
extern class HtmlSerialMethodWriter extends com.sun.tools.doclets.formats.html.MethodWriterImpl implements com.sun.tools.doclets.internal.toolkit.SerializedFormWriter.SerializedFormWriter_SerialMethodWriter
{
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Return the header for serializable methods section.
	*
	* @return a content tree for the header
	*/
	@:overload @:public public function getSerializableMethodsHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Return the header for serializable methods content section.
	*
	* @param isLastContent true if the cotent being documented is the last content.
	* @return a content tree for the header
	*/
	@:overload @:public public function getMethodsContentHeader(isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add serializable methods.
	*
	* @param heading the heading for the section
	* @param serializableMethodContent the tree to be added to the serializable methods
	*        content tree
	* @return a content tree for the serializable methods content
	*/
	@:overload @:public public function getSerializableMethods(heading : String, serializableMethodContent : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Return the no customization message.
	*
	* @param msg the message to be displayed
	* @return no customization message content
	*/
	@:overload @:public public function getNoCustomizationMsg(msg : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the member header.
	*
	* @param member the method document to be listed
	* @param methodsContentTree the content tree to which the member header will be added
	*/
	@:overload @:public public function addMemberHeader(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the deprecated information for this member.
	*
	* @param member the method to document.
	* @param methodsContentTree the tree to which the deprecated info will be added
	*/
	@:overload @:public public function addDeprecatedMemberInfo(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the description text for this member.
	*
	* @param member the method to document.
	* @param methodsContentTree the tree to which the deprecated info will be added
	*/
	@:overload @:public public function addMemberDescription(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tag information for this member.
	*
	* @param member the method to document.
	* @param methodsContentTree the tree to which the member tags info will be added
	*/
	@:overload @:public public function addMemberTags(member : com.sun.javadoc.MethodDoc, methodsContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload @:protected private function printTypeLinkNoDimension(type : com.sun.javadoc.Type) : Void;
	
	
}
