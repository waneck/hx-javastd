package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Writes constructor documentation.
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class ConstructorWriterImpl extends com.sun.tools.doclets.formats.html.AbstractExecutableMemberWriter implements com.sun.tools.doclets.internal.toolkit.ConstructorWriter implements com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter
{
	/**
	* Construct a new ConstructorWriterImpl.
	*
	* @param writer The writer for the class that the constructors belong to.
	* @param classDoc the class being documented.
	*/
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classDoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Construct a new ConstructorWriterImpl.
	*
	* @param writer The writer for the class that the constructors belong to.
	*/
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMemberSummaryHeader(classDoc : com.sun.javadoc.ClassDoc, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstructorDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstructorDocTreeHeader(constructor : com.sun.javadoc.ConstructorDoc, constructorDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSignature(constructor : com.sun.javadoc.ConstructorDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function setSummaryColumnStyle(tdTree : com.sun.tools.doclets.formats.html.markup.HtmlTree) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addDeprecated(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addComments(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addTags(constructor : com.sun.javadoc.ConstructorDoc, constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstructorDetails(constructorDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getConstructorDoc(constructorDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload public function close() : Void;
	
	/**
	* Let the writer know whether a non public constructor was found.
	*
	* @param foundNonPubConstructor true if we found a non public constructor.
	*/
	@:overload public function setFoundNonPubConstructor(foundNonPubConstructor : Bool) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addSummaryLabel(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getTableSummary() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getCaption() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getSummaryTableHeader(member : com.sun.javadoc.ProgramElementDoc) : java.NativeArray<String>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addSummaryAnchor(cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addInheritedSummaryAnchor(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function addInheritedSummaryLabel(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload public function getMemberKind() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addNavDetailLink(link : Bool, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function addSummaryType(member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
