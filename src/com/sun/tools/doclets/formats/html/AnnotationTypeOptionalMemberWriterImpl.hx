package com.sun.tools.doclets.formats.html;
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
* Writes annotation type optional member documentation in HTML format.
*
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
*/
extern class AnnotationTypeOptionalMemberWriterImpl extends com.sun.tools.doclets.formats.html.AnnotationTypeRequiredMemberWriterImpl implements com.sun.tools.doclets.internal.toolkit.AnnotationTypeOptionalMemberWriter implements com.sun.tools.doclets.internal.toolkit.MemberSummaryWriter
{
	/**
	* Construct a new AnnotationTypeOptionalMemberWriterImpl.
	*
	* @param writer         the writer that will write the output.
	* @param annotationType the AnnotationType that holds this member.
	*/
	@:overload @:public public function new(writer : com.sun.tools.doclets.formats.html.SubWriterHolderWriter, annotationType : com.sun.javadoc.AnnotationTypeDoc) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function getMemberSummaryHeader(classDoc : com.sun.javadoc.ClassDoc, memberSummaryTree : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function addDefaultValueInfo(member : com.sun.javadoc.MemberDoc, annotationDocTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function close() : Void;
	
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
	@:overload @:protected override private function getNavSummaryLink(cd : com.sun.javadoc.ClassDoc, link : Bool) : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}
