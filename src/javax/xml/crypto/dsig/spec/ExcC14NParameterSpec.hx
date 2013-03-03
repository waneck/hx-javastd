package javax.xml.crypto.dsig.spec;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: ExcC14NParameterSpec.java,v 1.7 2005/05/13 18:45:42 mullan Exp $
*/
extern class ExcC14NParameterSpec implements javax.xml.crypto.dsig.spec.C14NMethodParameterSpec
{
	/**
	* Indicates the default namespace ("#default").
	*/
	@:public @:static @:final public static var DEFAULT(default, null) : String;
	
	/**
	* Creates a <code>ExcC14NParameterSpec</code> with an empty prefix
	* list.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a <code>ExcC14NParameterSpec</code> with the specified list
	* of prefixes. The list is copied to protect against subsequent
	* modification.
	*
	* @param prefixList the inclusive namespace prefix list. Each entry in
	*    the list is a <code>String</code> that represents a namespace prefix.
	* @throws NullPointerException if <code>prefixList</code> is
	*    <code>null</code>
	* @throws ClassCastException if any of the entries in the list are not
	*    of type <code>String</code>
	*/
	@:overload @:public public function new(prefixList : java.util.List<Dynamic>) : Void;
	
	/**
	* Returns the inclusive namespace prefix list. Each entry in the list
	* is a <code>String</code> that represents a namespace prefix.
	*
	* <p>This implementation returns an {@link
	* java.util.Collections#unmodifiableList unmodifiable list}.
	*
	* @return the inclusive namespace prefix list (may be empty but never
	*    <code>null</code>)
	*/
	@:overload @:public public function getPrefixList() : java.util.List<Dynamic>;
	
	
}
