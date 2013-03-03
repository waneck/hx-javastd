package javax.naming.directory;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
* This class represents a modification item.
* It consists of a modification code and an attribute on which to operate.
*<p>
* A ModificationItem instance is not synchronized against concurrent
* multithreaded access. Multiple threads trying to access and modify
* a single ModificationItem instance should lock the object.
*
* @author Rosanna Lee
* @author Scott Seligman
* @since 1.3
*/
/*
*<p>
* The serialized form of a ModificationItem object consists of the
* modification op (and int) and the corresponding Attribute.
*/
@:require(java3) extern class ModificationItem implements java.io.Serializable
{
	/**
	* Creates a new instance of ModificationItem.
	* @param mod_op Modification to apply.  It must be one of:
	*         DirContext.ADD_ATTRIBUTE
	*         DirContext.REPLACE_ATTRIBUTE
	*         DirContext.REMOVE_ATTRIBUTE
	* @param attr     The non-null attribute to use for modification.
	* @exception IllegalArgumentException If attr is null, or if mod_op is
	*         not one of the ones specified above.
	*/
	@:overload @:public public function new(mod_op : Int, attr : javax.naming.directory.Attribute) : Void;
	
	/**
	* Retrieves the modification code of this modification item.
	* @return The modification code.  It is one of:
	*         DirContext.ADD_ATTRIBUTE
	*         DirContext.REPLACE_ATTRIBUTE
	*         DirContext.REMOVE_ATTRIBUTE
	*/
	@:overload @:public public function getModificationOp() : Int;
	
	/**
	* Retrieves the attribute associated with this modification item.
	* @return The non-null attribute to use for the modification.
	*/
	@:overload @:public public function getAttribute() : javax.naming.directory.Attribute;
	
	/**
	* Generates the string representation of this modification item,
	* which consists of the modification operation and its related attribute.
	* The string representation is meant for debugging and not to be
	* interpreted programmatically.
	*
	* @return The non-null string representation of this modification item.
	*/
	@:overload @:public public function toString() : String;
	
	
}
