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
* An abstract class for that implements the {@link Taglet} interface
* for tags in <code>ExecutableMembers</code>.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API.
*
* @author Jamie Ho
* @since 1.4
*/
@:require(java4) extern class BaseExecutableMemberTaglet extends com.sun.tools.doclets.internal.toolkit.taglets.BaseTaglet
{
	/**
	* Return true if this <code>Taglet</code>
	* is used in field documentation.
	* @return true if this <code>Taglet</code>
	* is used in field documentation and false
	* otherwise.
	*/
	@:overload @:public override public function inField() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is used in overview documentation.
	* @return true if this <code>Taglet</code>
	* is used in overview documentation and false
	* otherwise.
	*/
	@:overload @:public override public function inOverview() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is used in package documentation.
	* @return true if this <code>Taglet</code>
	* is used in package documentation and false
	* otherwise.
	*/
	@:overload @:public override public function inPackage() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is used in type documentation (classes or interfaces).
	* @return true if this <code>Taglet</code>
	* is used in type documentation and false
	* otherwise.
	*/
	@:overload @:public override public function inType() : Bool;
	
	/**
	* Return true if this <code>Taglet</code>
	* is an inline tag.
	* @return true if this <code>Taglet</code>
	* is an inline tag and false otherwise.
	*/
	@:overload @:public override public function isInlineTag() : Bool;
	
	
}
