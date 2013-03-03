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
* The interface for writing annotation type output.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API.
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern interface AnnotationTypeWriter
{
	/**
	* Get the header of the page.
	*
	* @param header the header string to write
	* @return a content tree for the header documentation
	*/
	@:overload @:public public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the annotation content header.
	*
	* @return annotation content header that needs to be added to the documentation
	*/
	@:overload @:public public function getAnnotationContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the annotation information tree header.
	*
	* @return annotation information tree header that needs to be added to the documentation
	*/
	@:overload @:public public function getAnnotationInfoTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the annotation information.
	*
	* @param annotationInfoTree content tree containing the annotation information
	* @return a content tree for the annotation
	*/
	@:overload @:public public function getAnnotationInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the signature of the current annotation type.
	*
	* @param modifiers the modifiers for the signature
	* @param annotationInfoTree the annotation content tree to which the signature will be added
	*/
	@:overload @:public public function addAnnotationTypeSignature(modifiers : String, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the annotation type description.
	*
	* @param annotationInfoTree content tree to which the description will be added
	*/
	@:overload @:public public function addAnnotationTypeDescription(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the tag information for the current annotation type.
	*
	* @param annotationInfoTree content tree to which the tag information will be added
	*/
	@:overload @:public public function addAnnotationTypeTagInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this annotation is deprecated, add the appropriate information.
	*
	* @param annotationInfoTree content tree to which the deprecated information will be added
	*/
	@:overload @:public public function addAnnotationTypeDeprecationInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the annotation type details marker.
	*
	* @param memberDetails the content tree representing member details marker
	*/
	@:overload @:public public function addAnnotationDetailsMarker(memberDetails : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the member tree header for the annotation type.
	*
	* @return a content tree for the member tree header
	*/
	@:overload @:public public function getMemberTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member tree.
	*
	* @param memberTree the content tree that will be modified and returned
	* @return a content tree for the member
	*/
	@:overload @:public public function getMemberTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member summary tree.
	*
	* @param memberTree the content tree that will be used to build the summary tree
	* @return a content tree for the member summary
	*/
	@:overload @:public public function getMemberSummaryTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the member details tree.
	*
	* @param memberTree the content tree that will be used to build the details tree
	* @return a content tree for the member details
	*/
	@:overload @:public public function getMemberDetailsTree(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the footer of the page.
	*
	* @param contentTree content tree to which the footer will be added
	*/
	@:overload @:public public function addFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the document.
	*
	* @param contentTree content tree that will be printed as a document
	*/
	@:overload @:public public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Close the writer.
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Return the {@link AnnotationTypeDoc} being documented.
	*
	* @return the AnnotationTypeDoc being documented.
	*/
	@:overload @:public public function getAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	
}
