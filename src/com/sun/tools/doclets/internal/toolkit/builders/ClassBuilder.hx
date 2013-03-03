package com.sun.tools.doclets.internal.toolkit.builders;
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
* Builds the summary for a given class.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
* @since 1.5
*/
@:require(java5) extern class ClassBuilder extends com.sun.tools.doclets.internal.toolkit.builders.AbstractBuilder
{
	/**
	* The root element of the class XML is {@value}.
	*/
	@:public @:static @:final public static var ROOT(default, null) : String;
	
	/**
	* Construct a new ClassBuilder.
	*
	* @param configuration the current configuration of the doclet.
	* @param classDoc the class being documented.
	* @param writer the doclet specific writer.
	*/
	@:overload @:public @:static public static function getInstance(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, classDoc : com.sun.javadoc.ClassDoc, writer : com.sun.tools.doclets.internal.toolkit.ClassWriter) : com.sun.tools.doclets.internal.toolkit.builders.ClassBuilder;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function build() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Handles the &lt;ClassDoc> tag.
	*
	* @param node the XML element that specifies which components to document
	* @param contentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassDoc(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the class tree documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassTree(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the class information tree documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the typeparameters of this class.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildTypeParamInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is an interface, list all super interfaces.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildSuperInterfacesInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is a class, list all interfaces implemented by this class.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildImplementedInterfacesInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* List all the classes extend this one.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildSubClassInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* List all the interfaces that extend this one.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildSubInterfacesInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is an interface, list all classes that implement this interface.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildInterfaceUsageInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this class is deprecated, build the appropriate information.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildDeprecationInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* If this is an inner class or interface, list the enclosing class or interface.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildNestedClassInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the signature of the current class.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassSignature(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the class description.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassDescription(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the tag information for the current class.
	*
	* @param node the XML element that specifies which components to document
	* @param classInfoTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildClassTagInfo(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the member summary contents of the page.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildMemberSummary(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the member details contents of the page.
	*
	* @param node the XML element that specifies which components to document
	* @param classContentTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildMemberDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the enum constants documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildEnumConstantsDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the field documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildFieldDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the property documentation.
	*
	* @param elements the XML elements that specify how a field is documented.
	*/
	@:overload @:public public function buildPropertyDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the constructor documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildConstructorDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Build the method documentation.
	*
	* @param node the XML element that specifies which components to document
	* @param memberDetailsTree the content tree to which the documentation will be added
	*/
	@:overload @:public public function buildMethodDetails(node : com.sun.tools.doclets.internal.toolkit.builders.XMLNode, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
