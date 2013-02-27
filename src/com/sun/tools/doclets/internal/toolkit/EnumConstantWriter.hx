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
* The interface for writing enum constant output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface EnumConstantWriter
{
	/**
	* Get the enum constants details tree header.
	*
	* @param classDoc the class being documented
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the enum constants details header
	*/
	@:overload public function getEnumConstantsDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the enum constants documentation tree header.
	*
	* @param enumConstant the enum constant being documented
	* @param enumConstantDetailsTree the content tree representing enum constant details
	* @return content tree for the enum constant documentation header
	*/
	@:overload public function getEnumConstantsTreeHeader(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the signature for the given enum constant.
	*
	* @param enumConstant the enum constant being documented
	* @return content tree for the enum constant signature
	*/
	@:overload public function getSignature(enumConstant : com.sun.javadoc.FieldDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the deprecated output for the given enum constant.
	*
	* @param enumConstant the enum constant being documented
	* @param enumConstantsTree content tree to which the deprecated information will be added
	*/
	@:overload public function addDeprecated(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the comments for the given enum constant.
	*
	* @param enumConstant the enum constant being documented
	* @param enumConstantsTree the content tree to which the comments will be added
	*/
	@:overload public function addComments(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tags for the given enum constant.
	*
	* @param enumConstant the enum constant being documented
	* @param enumConstantsTree the content tree to which the tags will be added
	*/
	@:overload public function addTags(enumConstant : com.sun.javadoc.FieldDoc, enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the enum constants details tree.
	*
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the enum constant details
	*/
	@:overload public function getEnumConstantsDetails(memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the enum constants documentation.
	*
	* @param enumConstantsTree the content tree representing enum constants documentation
	* @param isLastContent true if the content to be added is the last content
	* @return content tree for the enum constants documentation
	*/
	@:overload public function getEnumConstants(enumConstantsTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload public function close() : Void;
	
	
}
