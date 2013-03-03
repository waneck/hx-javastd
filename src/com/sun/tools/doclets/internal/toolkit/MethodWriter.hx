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
* The interface for writing method output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface MethodWriter
{
	/**
	* Get the method details tree header.
	*
	* @param classDoc the class being documented
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the method details header
	*/
	@:overload @:public public function getMethodDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the method documentation tree header.
	*
	* @param method the method being documented
	* @param methodDetailsTree the content tree representing method details
	* @return content tree for the method documentation header
	*/
	@:overload @:public public function getMethodDocTreeHeader(method : com.sun.javadoc.MethodDoc, methodDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the signature for the given method.
	*
	* @param method the method being documented
	* @return content tree for the method signature
	*/
	@:overload @:public public function getSignature(method : com.sun.javadoc.MethodDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the deprecated output for the given method.
	*
	* @param method the method being documented
	* @param methodDocTree content tree to which the deprecated information will be added
	*/
	@:overload @:public public function addDeprecated(method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the comments for the given method.
	*
	* @param holder the holder type (not erasure) of the method
	* @param method the method being documented
	* @param methodDocTree the content tree to which the comments will be added
	*/
	@:overload @:public public function addComments(holder : com.sun.javadoc.Type, method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tags for the given method.
	*
	* @param method the method being documented
	* @param methodDocTree the content tree to which the tags will be added
	*/
	@:overload @:public public function addTags(method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the method details tree.
	*
	* @param methodDetailsTree the content tree representing method details
	* @return content tree for the method details
	*/
	@:overload @:public public function getMethodDetails(methodDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the method documentation.
	*
	* @param methodDocTree the content tree representing method documentation
	* @param isLastContent true if the content to be added is the last content
	* @return content tree for the method documentation
	*/
	@:overload @:public public function getMethodDoc(methodDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload @:public public function close() : Void;
	
	
}
