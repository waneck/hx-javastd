package javax.swing.text;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface MutableAttributeSet extends javax.swing.text.AttributeSet
{
	/**
	* Creates a new attribute set similar to this one except that it contains
	* an attribute with the given name and value.  The object must be
	* immutable, or not mutated by any client.
	*
	* @param name the name
	* @param value the value
	*/
	@:overload public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	/**
	* Creates a new attribute set similar to this one except that it contains
	* the given attributes and values.
	*
	* @param attributes the set of attributes
	*/
	@:overload public function addAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes an attribute with the given <code>name</code>.
	*
	* @param name the attribute name
	*/
	@:overload public function removeAttribute(name : Dynamic) : Void;
	
	/**
	* Removes an attribute set with the given <code>names</code>.
	*
	* @param names the set of names
	*/
	@:overload public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* Removes a set of attributes with the given <code>name</code>.
	*
	* @param attributes the set of attributes
	*/
	@:overload public function removeAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Sets the resolving parent.  This is the set
	* of attributes to resolve through if an attribute
	* isn't defined locally.
	*
	* @param parent the parent
	*/
	@:overload public function setResolveParent(parent : javax.swing.text.AttributeSet) : Void;
	
	
}
