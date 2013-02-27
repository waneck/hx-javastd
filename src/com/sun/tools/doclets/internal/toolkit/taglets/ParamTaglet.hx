package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A taglet that represents the @param tag.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class ParamTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseTaglet implements com.sun.tools.doclets.internal.toolkit.taglets.InheritableTaglet
{
	/**
	* Construct a ParamTaglet.
	*/
	@:overload public function new() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function inherit(input : com.sun.tools.doclets.internal.toolkit.util.DocFinder.DocFinder_Input, output : com.sun.tools.doclets.internal.toolkit.util.DocFinder.DocFinder_Output) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function inField() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function inMethod() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function inOverview() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function inPackage() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function inType() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function isInlineTag() : Bool;
	
	/**
	* Given an array of <code>ParamTag</code>s,return its string representation.
	* @param holder the member that holds the param tags.
	* @param writer the TagletWriter that will write this tag.
	* @return the TagletOutput representation of these <code>ParamTag</code>s.
	*/
	@:overload override public function getTagletOutput(holder : com.sun.javadoc.Doc, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
