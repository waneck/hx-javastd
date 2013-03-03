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
* Writes method documentation in HTML format.
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Jamie Ho (rewrite)
* @author Bhavesh Patel (Modified)
*/
extern class MethodWriterImpl extends com.sun.tools.doclets.formats.html.AbstractExecutableMemberWriter implements com.sun.tools.doclets.internal.toolkit.MethodWriter implements com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter
{
	/**
	* Construct a new MethodWriterImpl.
	*
	* @param writer the writer for the class that the methods belong to.
	* @param classDoc the class being documented.
	*/
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classDoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Construct a new MethodWriterImpl.
	*
	* @param writer The writer for the class that the methods belong to.
	*/
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMemberSummaryHeader(classDoc : com.sun.javadoc.ClassDoc, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMethodDetailsTreeHeader(classDoc : com.sun.javadoc.ClassDoc, memberDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMethodDocTreeHeader(method : com.sun.javadoc.MethodDoc, methodDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the signature for the given method.
	*
	* @param method the method being documented.
	* @return a content object for the signature
	*/
	@:overload @:public public function getSignature(method : com.sun.javadoc.MethodDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addDeprecated(method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addComments(holder : com.sun.javadoc.Type, method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addTags(method : com.sun.javadoc.MethodDoc, methodDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMethodDetails(methodDetailsTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getMethodDoc(methodDocTree : com.sun.tools.doclets.internal.toolkit.Content, isLastContent : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Close the writer.
	*/
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getMemberKind() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addSummaryLabel(memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getTableSummary() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getCaption() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getSummaryTableHeader(member : com.sun.javadoc.ProgramElementDoc) : java.NativeArray<String>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addSummaryAnchor(cd : com.sun.javadoc.ClassDoc, memberTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addInheritedSummaryAnchor(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addInheritedSummaryLabel(cd : com.sun.javadoc.ClassDoc, inheritedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function addSummaryType(member : com.sun.javadoc.ProgramElementDoc, tdSummaryType : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected @:static private static function addOverridden(writer : com.sun.tools.doclets.formats.html.HtmlDocletWriter, overriddenType : com.sun.javadoc.Type, method : com.sun.javadoc.MethodDoc, dl : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Parse the &lt;Code&gt; tag and return the text.
	*/
	@:overload @:protected private function parseCodeTag(tag : String) : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected @:static private static function addImplementsInfo(writer : com.sun.tools.doclets.formats.html.HtmlDocletWriter, method : com.sun.javadoc.MethodDoc, dl : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the return type.
	*
	* @param method the method being documented.
	* @param htmltree the content tree to which the return type will be added
	*/
	@:overload @:protected private function addReturnType(method : com.sun.javadoc.MethodDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function addNavDetailLink(link : Bool, liNav : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
