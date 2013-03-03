package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* This taglet acts as a wrapper to enable
* {@link com.sun.tools.doclets.Taglet} type taglets to work
* with the current version of Javadoc.
* Note: this taglet only works with legacy taglets (those compatible with
* Javadoc 1.4.x) that writes strings.
* This taglet is able to wrap most most legacy taglets because
* the standard doclet is the only known doclet to use legacy taglets.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @since 1.5
* @author Jamie Ho
*/
@:require(java5) extern class LegacyTaglet implements com.sun.tools.doclets.internal.toolkit.taglets.Taglet
{
	@:overload @:public public function new(t : com.sun.tools.doclets.Taglet) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inField() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inConstructor() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inMethod() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inOverview() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inPackage() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function inType() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is an inline tag.
	* @return true if this <code>Taglet</code>
	* is an inline tag and false otherwise.
	*/
	@:overload @:public public function isInlineTag() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getTagletOutput(tag : com.sun.javadoc.Tag, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getTagletOutput(holder : com.sun.javadoc.Doc, writer : com.sun.tools.doclets.internal.toolkit.taglets.TagletWriter) : com.sun.tools.doclets.internal.toolkit.taglets.TagletOutput;
	
	
}
