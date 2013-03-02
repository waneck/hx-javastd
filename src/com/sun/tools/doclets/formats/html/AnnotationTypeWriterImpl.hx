package com.sun.tools.doclets.formats.html;
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
* Generate the Class Information Page.
* @see com.sun.javadoc.ClassDoc
* @see java.util.Collections
* @see java.util.List
* @see java.util.ArrayList
* @see java.util.HashMap
*
* @author Atul M Dambalkar
* @author Robert Field
* @author Bhavesh Patel (Modified)
*/
extern class AnnotationTypeWriterImpl extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter implements com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter
{
	private var annotationType : com.sun.javadoc.AnnotationTypeDoc;
	
	private var prev : com.sun.javadoc.Type;
	
	private var next : com.sun.javadoc.Type;
	
	/**
	* @param annotationType the annotation type being documented.
	* @param prevType the previous class that was documented.
	* @param nextType the next class being documented.
	*/
	@:overload public function new(annotationType : com.sun.javadoc.AnnotationTypeDoc, prevType : com.sun.javadoc.Type, nextType : com.sun.javadoc.Type) : Void;
	
	/**
	* Get this package link.
	*
	* @return a content tree for the package link
	*/
	@:overload private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class link.
	*
	* @return a content tree for the class link
	*/
	@:overload private function getNavLinkClass() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class use link.
	*
	* @return a content tree for the class use link
	*/
	@:overload private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to previous class.
	*
	* @return a content tree for the previous class link
	*/
	@:overload public function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to next class.
	*
	* @return a content tree for the next class link
	*/
	@:overload public function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationInfoTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addAnnotationTypeSignature(modifiers : String, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addAnnotationTypeDescription(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addAnnotationTypeTagInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addAnnotationTypeDeprecationInfo(annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addAnnotationDetailsMarker(memberDetails : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add summary details to the navigation bar.
	*
	* @param subDiv the content tree to which the summary detail links will be added
	*/
	@:overload private function addSummaryDetailLinks(subDiv : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get summary links for navigation bar.
	*
	* @return the content tree for the navigation summary links
	*/
	@:overload private function getNavSummaryLinks() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the navigation summary link.
	*
	* @param builder builder for the member to be documented
	* @param label the label for the navigation
	* @param type type to be documented
	* @param liNav the content tree to which the navigation summary link will be added
	*/
	@:overload private function addNavSummaryLink(builder : com.sun.tools.doclets.internal.toolkit.builders.MemberSummaryBuilder, label : String, type : Int, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get detail links for the navigation bar.
	*
	* @return the content tree for the detail links
	*/
	@:overload private function getNavDetailLinks() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add gap between navigation bar elements.
	*
	* @param liNav the content tree to which the gap will be added
	*/
	@:overload private function addNavGap(liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	
}
