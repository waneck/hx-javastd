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
* Print method and constructor info.
*
* @author Robert Field
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class AbstractExecutableMemberWriter extends com.sun.tools.doclets.formats.html.AbstractMemberWriter
{
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	@:overload public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter) : Void;
	
	/**
	* Add the type parameters for the executable member.
	*
	* @param member the member to write type parameters for.
	* @param htmltree the content tree to which the parameters will be added.
	* @return the display length required to write this information.
	*/
	@:overload private function addTypeParameters(member : com.sun.javadoc.ExecutableMemberDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload private function getDeprecatedLink(member : com.sun.javadoc.ProgramElementDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the summary link for the member.
	*
	* @param context the id of the context where the link will be printed
	* @param classDoc the classDoc that we should link to
	* @param member the member being linked to
	* @param tdSummary the content tree to which the link will be added
	*/
	@:overload private function addSummaryLink(context : Int, cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, tdSummary : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the inherited summary link for the member.
	*
	* @param classDoc the classDoc that we should link to
	* @param member the member being linked to
	* @param linksTree the content tree to which the link will be added
	*/
	@:overload private function addInheritedSummaryLink(cd : com.sun.javadoc.ClassDoc, member : com.sun.javadoc.ProgramElementDoc, linksTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the parameter for the executable member.
	*
	* @param member the member to write parameter for.
	* @param param the parameter that needs to be written.
	* @param isVarArg true if this is a link to var arg.
	* @param tree the content tree to which the parameter information will be added.
	*/
	@:overload private function addParam(member : com.sun.javadoc.ExecutableMemberDoc, param : com.sun.javadoc.Parameter, isVarArg : Bool, tree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all the parameters for the executable member.
	*
	* @param member the member to write parameters for.
	* @param tree the content tree to which the parameters information will be added.
	*/
	@:overload private function addParameters(member : com.sun.javadoc.ExecutableMemberDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add all the parameters for the executable member.
	*
	* @param member the member to write parameters for.
	* @param includeAnnotations true if annotation information needs to be added.
	* @param tree the content tree to which the parameters information will be added.
	*/
	@:overload private function addParameters(member : com.sun.javadoc.ExecutableMemberDoc, includeAnnotations : Bool, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add exceptions for the executable member.
	*
	* @param member the member to write exceptions for.
	* @param htmltree the content tree to which the exceptions information will be added.
	*/
	@:overload private function addExceptions(member : com.sun.javadoc.ExecutableMemberDoc, htmltree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	@:overload private function getReturnTypeLength(member : com.sun.javadoc.ExecutableMemberDoc) : Int;
	
	@:overload private function implementsMethodInIntfac(method : com.sun.javadoc.MethodDoc, intfacs : java.NativeArray<com.sun.javadoc.ClassDoc>) : com.sun.javadoc.ClassDoc;
	
	/**
	* For backward compatibility, include an anchor using the erasures of the
	* parameters.  NOTE:  We won't need this method anymore after we fix
	* see tags so that they use the type instead of the erasure.
	*
	* @param emd the ExecutableMemberDoc to anchor to.
	* @return the 1.4.x style anchor for the ExecutableMemberDoc.
	*/
	@:overload private function getErasureAnchor(emd : com.sun.javadoc.ExecutableMemberDoc) : String;
	
	
}
