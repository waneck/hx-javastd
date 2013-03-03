package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* The interface for writing field output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface PropertyWriter
{
	/**
	* Get the field details tree header.
	*
	* @param classDoc the class being documented
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the field details header
	*/
	@:overload @:public public function getFieldDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the field documentation tree header.
	*
	* @param field the constructor being documented
	* @param fieldDetailsTree the content tree representing field details
	* @return content tree for the field documentation header
	*/
	@:overload @:public public function getFieldDocTreeHeader(field : com.sun.javadoc.MethodDoc, fieldDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the signature for the given field.
	*
	* @param field the field being documented
	* @return content tree for the field signature
	*/
	@:overload @:public public function getSignature(field : com.sun.javadoc.MethodDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the deprecated output for the given field.
	*
	* @param field the field being documented
	* @param fieldDocTree content tree to which the deprecated information will be added
	*/
	@:overload @:public public function addDeprecated(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the comments for the given field.
	*
	* @param field the field being documented
	* @param fieldDocTree the content tree to which the comments will be added
	*/
	@:overload @:public public function addComments(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tags for the given field.
	*
	* @param field the field being documented
	* @param fieldDocTree the content tree to which the tags will be added
	*/
	@:overload @:public public function addTags(field : com.sun.javadoc.MethodDoc, fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the field details tree.
	*
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the field details
	*/
	@:overload @:public public function getFieldDetails(memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the field documentation.
	*
	* @param fieldDocTree the content tree representing field documentation
	* @param isLastContent true if the content to be added is the last content
	* @return content tree for the field documentation
	*/
	@:overload @:public public function getFieldDoc(fieldDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload @:public public function close() : Void;
	
	
}
