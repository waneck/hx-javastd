package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassWriterImpl extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter implements com.sun.tools.doclets.internal.toolkit.ClassWriter
{
	@:protected private var classDoc : com.sun.javadoc.ClassDoc;
	
	@:protected private var classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree;
	
	@:protected private var prev : com.sun.javadoc.ClassDoc;
	
	@:protected private var next : com.sun.javadoc.ClassDoc;
	
	/**
	* @param classDoc the class being documented.
	* @param prevClass the previous class that was documented.
	* @param nextClass the next class being documented.
	* @param classTree the class tree for the given class.
	*/
	@:overload @:public public function new(classDoc : com.sun.javadoc.ClassDoc, prevClass : com.sun.javadoc.ClassDoc, nextClass : com.sun.javadoc.ClassDoc, classTree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Get this package link.
	*
	* @return a content tree for the package link
	*/
	@:overload @:protected override private function getNavLinkPackage() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class link.
	*
	* @return a content tree for the class link
	*/
	@:overload @:protected override private function getNavLinkClass() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the class use link.
	*
	* @return a content tree for the class use link
	*/
	@:overload @:protected override private function getNavLinkClassUse() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to previous class.
	*
	* @return a content tree for the previous class link
	*/
	@:overload @:public override public function getNavLinkPrevious() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link to next class.
	*
	* @return a content tree for the next class link
	*/
	@:overload @:public override public function getNavLinkNext() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getClassContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addFooter(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function printDocument(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getClassInfoTreeHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassSignature(modifiers : String, classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassDescription(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassTagInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassTree(classContentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addTypeParamInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addSubClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addSubInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addInterfaceUsageInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addImplementedInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addSuperInterfacesInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addNestedClassInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addClassDeprecationInfo(classInfoTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function getNavLinkTree() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add summary details to the navigation bar.
	*
	* @param subDiv the content tree to which the summary detail links will be added
	*/
	@:overload @:protected override private function addSummaryDetailLinks(subDiv : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get summary links for navigation bar.
	*
	* @return the content tree for the navigation summary links
	*/
	@:overload @:protected private function getNavSummaryLinks() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get detail links for the navigation bar.
	*
	* @return the content tree for the detail links
	*/
	@:overload @:protected private function getNavDetailLinks() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add gap between navigation bar elements.
	*
	* @param liNav the content tree to which the gap will be added
	*/
	@:overload @:protected private function addNavGap(liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return the classDoc being documented.
	*
	* @return the classDoc being documented.
	*/
	@:overload @:public public function getClassDoc() : com.sun.javadoc.ClassDoc;
	
	
}
