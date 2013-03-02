package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
* An inline Taglet representing the <b>inheritDoc</b> tag. This tag should only
* be used with a method.  It is used to inherit documentation from overriden
* and implemented methods.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class InheritDocTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseInlineTaglet
{
	/**
	* The inline tag that would appear in the documentation if
	* the writer wanted documentation to be inherited.
	*/
	public static var INHERIT_DOC_INLINE_TAG(default, null) : String;
	
	/**
	* Construct a new InheritDocTaglet.
	*/
	@:overload public function new() : Void;
	
	/**
	* Will return false because this inline tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload public function inField() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload public function inConstructor() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload public function inOverview() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload public function inPackage() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload public function inType() : Bool;
	
	/**
	* Given the <code>Tag</code> representation of this custom
	* tag, return its string representation, which is output
	* to the generated page.
	* @param tag the <code>Tag</code> representation of this custom tag.
	* @param tagletWriter the taglet writer for output.
	* @return the TagletOutput representation of this <code>Tag</code>.
	*/
	@:overload public function getTagletOutput(tag : com.sun.javadoc.Tag, tagletWriter : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
