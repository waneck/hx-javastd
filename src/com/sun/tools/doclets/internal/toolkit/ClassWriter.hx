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
* The interface for writing class output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface ClassWriter
{
	/**
	* Get the header of the page.
	*
	* @param header the header string to write
	* @return header content that needs to be added to the documentation
	*/
	@:overload public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class content header.
	*
	* @return class content header that needs to be added to the documentation
	*/
	@:overload public function getClassContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the class tree documentation.
	*
	* @param classContentTree class content tree to which the documentation will be added
	*/
	@:overload public function addClassTree(classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the class information tree header.
	*
	* @return class informaion tree header that needs to be added to the documentation
	*/
	@:overload public function getClassInfoTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the type parameter information.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addTypeParamInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all super interfaces if this is an interface.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addSuperInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all implemented interfaces if this is a class.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addImplementedInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all the classes that extend this one.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addSubClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all the interfaces that extend this one.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addSubInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is an interface, add all classes that implement this
	* interface.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addInterfaceUsageInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is an inner class or interface, add the enclosing class or
	* interface.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addNestedClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the class information.
	*
	* @param classInfoTree content tree conatining the class information
	* @return a content tree for the class
	*/
	@:overload public function getClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* If this class is deprecated, add the appropriate information.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addClassDeprecationInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the signature of the current class content tree.
	*
	* @param modifiers the modifiers for the signature
	* @param classInfoTree the class content tree to which the signature will be added
	*/
	@:overload public function addClassSignature(modifiers : String, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the class description.
	*
	* @param classInfoTree content tree to which the documentation will be added
	*/
	@:overload public function addClassDescription(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tag information for the current class.
	*
	* @param classInfoTree content tree to which the tag information will be added
	*/
	@:overload public function addClassTagInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the member tree header for the class.
	*
	* @return a content tree for the member tree header
	*/
	@:overload public function getMemberTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the footer of the page.
	*
	* @param contentTree content tree to which the footer will be added
	*/
	@:overload public function addFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the document.
	*
	* @param contentTree content tree that will be printed as a document
	*/
	@:overload public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Close the writer.
	*/
	@:overload public function close() : Void;
	
	/**
	* Return the classDoc being documented.
	*
	* @return the classDoc being documented.
	*/
	@:overload public function getClassDoc() : com.sun.javadoc.ClassDoc;
	
	/**
	* Get the member summary tree.
	*
	* @param memberTree the content tree used to build the summary tree
	* @return a content tree for the member summary
	*/
	@:overload public function getMemberSummaryTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member details tree.
	*
	* @param memberTree the content tree used to build the details tree
	* @return a content tree for the member details
	*/
	@:overload public function getMemberDetailsTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}
