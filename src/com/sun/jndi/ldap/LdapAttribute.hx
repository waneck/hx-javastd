package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
* This subclass is used by LDAP to implement the schema calls.
* Basically, it keeps track of which context it is an attribute of
* so it can get the schema for that cotnext.
*
* @author Jon Ruiz
*/
@:internal extern class LdapAttribute extends javax.naming.directory.BasicAttribute
{
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Adds a new value to this attribute.
	*
	* @param attrVal The value to be added. If null, a null value is added to
	*                the attribute.
	* @return true Always returns true.
	*/
	@:overload @:public override public function add(attrVal : Dynamic) : Bool;
	
	/**
	* Retrieves the syntax definition associated with this attribute.
	* @return This attribute's syntax definition.
	*/
	@:overload @:public override public function getAttributeSyntaxDefinition() : javax.naming.directory.DirContext;
	
	/**
	* Retrieves this attribute's schema definition.
	*
	* @return This attribute's schema definition.
	*/
	@:overload @:public override public function getAttributeDefinition() : javax.naming.directory.DirContext;
	
	
}
