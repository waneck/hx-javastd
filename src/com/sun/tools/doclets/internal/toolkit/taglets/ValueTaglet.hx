package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
* An inline Taglet representing the value tag. This tag should only be used with
* constant fields that have a value.  It is used to access the value of constant
* fields.  This inline tag has an optional field name parameter.  If the name is
* specified, the constant value is retrieved from the specified field.  A link
* is also created to the specified field.  If a name is not specified, the value
* is retrieved for the field that the inline tag appears on.  The name is specifed
* in the following format:  [fully qualified class name]#[constant field name].
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class ValueTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseInlineTaglet
{
	/**
	* Construct a new ValueTaglet.
	*/
	@:overload public function new() : Void;
	
	/**
	* Will return false because this inline tag may
	* only appear in Fields.
	* @return false since this is not a method.
	*/
	@:overload override public function inMethod() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Fields.
	* @return false since this is not a method.
	*/
	@:overload override public function inConstructor() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Fields.
	* @return false since this is not a method.
	*/
	@:overload override public function inOverview() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Fields.
	* @return false since this is not a method.
	*/
	@:overload override public function inPackage() : Bool;
	
	/**
	* Will return false because this inline tag may
	* only appear in Fields.
	* @return false since this is not a method.
	*/
	@:overload override public function inType() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getTagletOutput(tag : com.sun.javadoc.Tag, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
