package sun.tools.java;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Information about the occurrence of an identifier.
* The parser produces these to represent name which cannot yet be
* bound to field definitions.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
* @see
*/
extern class IdentifierToken
{
	@:overload public function new(where : haxe.Int64, id : sun.tools.java.Identifier) : Void;
	
	/** Use this constructor when the identifier is synthesized.
	* The location will be 0.
	*/
	@:overload public function new(id : sun.tools.java.Identifier) : Void;
	
	@:overload public function new(where : haxe.Int64, id : sun.tools.java.Identifier, modifiers : Int) : Void;
	
	/** The source location of this identifier occurrence. */
	@:overload public function getWhere() : haxe.Int64;
	
	/** The identifier itself (possibly qualified). */
	@:overload public function getName() : sun.tools.java.Identifier;
	
	/** The modifiers associated with the occurrence, if any. */
	@:overload public function getModifiers() : Int;
	
	@:overload public function toString() : String;
	
	/**
	* Return defaultWhere if id is null or id.where is missing (0).
	* Otherwise, return id.where.
	*/
	@:native('getWhere') @:overload public static function _getWhere(id : sun.tools.java.IdentifierToken, defaultWhere : haxe.Int64) : haxe.Int64;
	
	
}
