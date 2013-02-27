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
* A simple single argument custom tag.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Jamie Ho
*/
extern class SimpleTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseTaglet
{
	/**
	* The marker in the location string for excluded tags.
	*/
	public static var EXCLUDED(default, null) : String;
	
	/**
	* The marker in the location string for packages.
	*/
	public static var PACKAGE(default, null) : String;
	
	/**
	* The marker in the location string for types.
	*/
	public static var TYPE(default, null) : String;
	
	/**
	* The marker in the location string for constructors.
	*/
	public static var CONSTRUCTOR(default, null) : String;
	
	/**
	* The marker in the location string for fields.
	*/
	public static var FIELD(default, null) : String;
	
	/**
	* The marker in the location string for methods.
	*/
	public static var METHOD(default, null) : String;
	
	/**
	* The marker in the location string for overview.
	*/
	public static var OVERVIEW(default, null) : String;
	
	/**
	* Use in location string when the tag is to
	* appear in all locations.
	*/
	public static var ALL(default, null) : String;
	
	/**
	* The name of this tag.
	*/
	private var tagName : String;
	
	/**
	* The header to output.
	*/
	private var header : String;
	
	/**
	* The possible locations that this tag can appear in.
	*/
	private var locations : String;
	
	/**
	* Construct a <code>SimpleTaglet</code>.
	* @param tagName the name of this tag
	* @param header the header to output.
	* @param locations the possible locations that this tag
	* can appear in.  The <code>String</code> can contain 'p'
	* for package, 't' for type, 'm' for method, 'c' for constructor
	* and 'f' for field.
	*/
	@:overload public function new(tagName : String, header : String, locations : String) : Void;
	
	/**
	* Return the name of this <code>Taglet</code>.
	*/
	@:overload override public function getName() : String;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in constructor documentation.
	* @return true if this <code>SimpleTaglet</code>
	* is used in constructor documentation and false
	* otherwise.
	*/
	@:overload override public function inConstructor() : Bool;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in field documentation.
	* @return true if this <code>SimpleTaglet</code>
	* is used in field documentation and false
	* otherwise.
	*/
	@:overload override public function inField() : Bool;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in method documentation.
	* @return true if this <code>SimpleTaglet</code>
	* is used in method documentation and false
	* otherwise.
	*/
	@:overload override public function inMethod() : Bool;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in overview documentation.
	* @return true if this <code>SimpleTaglet</code>
	* is used in overview documentation and false
	* otherwise.
	*/
	@:overload override public function inOverview() : Bool;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in package documentation.
	* @return true if this <code>SimpleTaglet</code>
	* is used in package documentation and false
	* otherwise.
	*/
	@:overload override public function inPackage() : Bool;
	
	/**
	* Return true if this <code>SimpleTaglet</code>
	* is used in type documentation (classes or interfaces).
	* @return true if this <code>SimpleTaglet</code>
	* is used in type documentation and false
	* otherwise.
	*/
	@:overload override public function inType() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is an inline tag.
	* @return true if this <code>Taglet</code>
	* is an inline tag and false otherwise.
	*/
	@:overload override public function isInlineTag() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getTagletOutput(tag : com.sun.javadoc.Tag, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getTagletOutput(holder : com.sun.javadoc.Doc, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
