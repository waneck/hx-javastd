package com.sun.tools.doclets.internal.toolkit.builders;
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
* Builds the summary for a given annotation type.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern class AnnotationTypeBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder
{
	/**
	* The root element of the annotation type XML is {@value}.
	*/
	@:public @:static @:final public static var ROOT(default, null) : String;
	
	/**
	* Construct a new ClassBuilder.
	*
	* @param configuration     the current configuration of the doclet.
	* @param annotationTypeDoc the class being documented.
	* @param writer            the doclet specific writer.
	*/
	@:overload @:public @:static public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, annotationTypeDoc : com.sun.javadoc.AnnotationTypeDoc, writer : com.sun.tools.doclets.internal.toolkit.AnnotationTypeWriter) : com.sun.tools.doclets.internal.toolkit.builders.AnnotationTypeBuilder;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function build() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Build the annotation type documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeDoc(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the annotation information tree documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this annotation is deprecated, build the appropriate information.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildDeprecationInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the signature of the current annotation type.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeSignature(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the annotation type description.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeDescription(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the tag information for the current annotation type.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeTagInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the member summary contents of the page.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildMemberSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the member details contents of the page.
	*
	* @param node the XML element that specifies which components to document
	* @param annotationContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeMemberDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, annotationContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the annotation type optional member documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeOptionalMemberDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the annotation type required member documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildAnnotationTypeRequiredMemberDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
