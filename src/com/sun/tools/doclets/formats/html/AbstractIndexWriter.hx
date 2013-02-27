package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Generate Index for all the Member Names with Indexing in
* Unicode Order. This class is a base class for {@link SingleIndexWriter} and
* {@link SplitIndexWriter}. It uses the functionality from
* {@link HtmlDocletWriter} to generate the Index Contents.
*
* @see    IndexBuilder
* @author Atul M Dambalkar
* @author Bhavesh Patel (Modified)
*/
extern class AbstractIndexWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* The index of all the members with unicode character.
	*/
	private var indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder;
	
	/**
	* This constructor will be used by {@link SplitIndexWriter}. Initialises
	* path to this file and relative path from this file.
	*
	* @param path       Path to the file which is getting generated.
	* @param filename   Name of the file which is getting genrated.
	* @param relpath    Relative path from this file to the current directory.
	* @param indexbuilder Unicode based Index from {@link IndexBuilder}
	*/
	@:overload private function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, path : String, filename : String, relpath : String, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder) : Void;
	
	/**
	* This Constructor will be used by {@link SingleIndexWriter}.
	*
	* @param filename   Name of the file which is getting genrated.
	* @param indexbuilder Unicode based Index form {@link IndexBuilder}
	*/
	@:overload private function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder) : Void;
	
	/**
	* Get the index label for navigation bar.
	*
	* @return a content tree for the tree label
	*/
	@:overload override private function getNavLinkIndex() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the member information for the unicode character along with the
	* list of the members.
	*
	* @param unicode Unicode for which member list information to be generated
	* @param memberlist List of members for the unicode character
	* @param contentTree the content tree to which the information will be added
	*/
	@:overload private function addContents(unicode : Null<java.StdTypes.Char16>, memberlist : java.util.List<com.sun.javadoc.Doc>, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add one line summary comment for the package.
	*
	* @param pkg the package to be documented
	* @param dlTree the content tree to which the description will be added
	*/
	@:overload private function addDescription(pkg : com.sun.javadoc.PackageDoc, dlTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add one line summary comment for the class.
	*
	* @param cd the class being documented
	* @param dlTree the content tree to which the description will be added
	*/
	@:overload private function addDescription(cd : com.sun.javadoc.ClassDoc, dlTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add the classkind(class, interface, exception, error of the class
	* passed.
	*
	* @param cd the class being documented
	* @param contentTree the content tree to which the class info will be added
	*/
	@:overload private function addClassInfo(cd : com.sun.javadoc.ClassDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add description for Class, Field, Method or Constructor.
	*
	* @param member MemberDoc for the member of the Class Kind
	* @param dlTree the content tree to which the description will be added
	*/
	@:overload private function addDescription(member : com.sun.javadoc.MemberDoc, dlTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add comment for each element in the index. If the element is deprecated
	* and it has a @deprecated tag, use that comment. Else if the containing
	* class for this element is deprecated, then add the word "Deprecated." at
	* the start and then print the normal comment.
	*
	* @param element Index element
	* @param contentTree the content tree to which the comment will be added
	*/
	@:overload private function addComment(element : com.sun.javadoc.ProgramElementDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Add description about the Static Varible/Method/Constructor for a
	* member.
	*
	* @param member MemberDoc for the member within the Class Kind
	* @param contentTree the content tree to which the member description will be added
	*/
	@:overload private function addMemberDesc(member : com.sun.javadoc.MemberDoc, contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
