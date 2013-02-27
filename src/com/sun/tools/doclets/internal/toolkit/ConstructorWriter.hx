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
* The interface for writing constructor output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface ConstructorWriter
{
	/**
	* Get the constructor details tree header.
	*
	* @param classDoc the class being documented
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the constructor details header
	*/
	@:overload public function getConstructorDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the constructor documentation tree header.
	*
	* @param constructor the constructor being documented
	* @param constructorDetailsTree the content tree representing constructor details
	* @return content tree for the constructor documentation header
	*/
	@:overload public function getConstructorDocTreeHeader(constructor : com.sun.javadoc.ConstructorDoc, constructorDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the signature for the given constructor.
	*
	* @param constructor the constructor being documented
	* @return content tree for the constructor signature
	*/
	@:overload public function getSignature(constructor : com.sun.javadoc.ConstructorDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the deprecated output for the given constructor.
	*
	* @param constructor the constructor being documented
	* @param constructorDocTree content tree to which the deprecated information will be added
	*/
	@:overload public function addDeprecated(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the comments for the given constructor.
	*
	* @param constructor the constructor being documented
	* @param constructorDocTree the content tree to which the comments will be added
	*/
	@:overload public function addComments(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tags for the given constructor.
	*
	* @param constructor the constructor being documented
	* @param constructorDocTree the content tree to which the tags will be added
	*/
	@:overload public function addTags(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the constructor details tree.
	*
	* @param memberDetailsTree the content tree representing member details
	* @return content tree for the constructor details
	*/
	@:overload public function getConstructorDetails(memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the constructor documentation.
	*
	* @param constructorDocTree the content tree representing constructor documentation
	* @param isLastContent true if the content to be added is the last content
	* @return content tree for the constructor documentation
	*/
	@:overload public function getConstructorDoc(constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Let the writer know whether a non public constructor was found.
	*
	* @param foundNonPubConstructor true if we found a non public constructor.
	*/
	@:overload public function setFoundNonPubConstructor(foundNonPubConstructor : Bool) : Void;
	
	/**
	* Close the writer.
	*/
	@:overload public function close() : Void;
	
	
}
