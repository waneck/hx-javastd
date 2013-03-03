package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class BasePropertyTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseTaglet
{
	/**
	* An abstract class that implements the {@link Taglet} interface and
	* serves as a base for JavaFX property getter and setter taglets.
	*
	* This code is not part of an API.
	* It is implementation that is subject to change.
	* Do not use it as an API
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Given the <code>Tag</code> representation of this custom
	* tag, return its string representation, which is output
	* to the generated page.
	* @param tag the <code>Tag</code> representation of this custom tag.
	* @param tagletWriter the taglet writer for output.
	* @return the TagletOutput representation of this <code>Tag</code>.
	*/
	@:overload @:public override public function getTagletOutput(tag : com.sun.javadoc.Tag, tagletWriter : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* Will return false because this tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload @:public override public function inConstructor() : Bool;
	
	/**
	* Will return false because this tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload @:public override public function inOverview() : Bool;
	
	/**
	* Will return false because this tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload @:public override public function inPackage() : Bool;
	
	/**
	* Will return false because this tag may
	* only appear in Methods.
	* @return false since this is not a method.
	*/
	@:overload @:public override public function inType() : Bool;
	
	/**
	* Will return false because this tag is not inline.
	* @return false since this is not an inline tag.
	*/
	@:overload @:public override public function isInlineTag() : Bool;
	
	
}
