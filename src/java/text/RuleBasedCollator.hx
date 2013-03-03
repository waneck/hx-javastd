package java.text;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class RuleBasedCollator extends java.text.Collator
{
	/**
	* RuleBasedCollator constructor.  This takes the table rules and builds
	* a collation table out of them.  Please see RuleBasedCollator class
	* description for more details on the collation rule syntax.
	* @see java.util.Locale
	* @param rules the collation rules to build the collation table from.
	* @exception ParseException A format exception
	* will be thrown if the build process of the rules fails. For
	* example, build rule "a < ? < d" will cause the constructor to
	* throw the ParseException because the '?' is not quoted.
	*/
	@:overload @:public public function new(rules : String) : Void;
	
	/**
	* Gets the table-based rules for the collation object.
	* @return returns the collation rules that the table collation object
	* was created from.
	*/
	@:overload @:public public function getRules() : String;
	
	/**
	* Return a CollationElementIterator for the given String.
	* @see java.text.CollationElementIterator
	*/
	@:overload @:public public function getCollationElementIterator(source : String) : java.text.CollationElementIterator;
	
	/**
	* Return a CollationElementIterator for the given String.
	* @see java.text.CollationElementIterator
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getCollationElementIterator(source : java.text.CharacterIterator) : java.text.CollationElementIterator;
	
	/**
	* Compares the character data stored in two different strings based on the
	* collation rules.  Returns information about whether a string is less
	* than, greater than or equal to another string in a language.
	* This can be overriden in a subclass.
	*
	* @exception NullPointerException if <code>source</code> or <code>target</code> is null.
	*/
	@:overload @:public @:synchronized override public function compare(source : String, target : String) : Int;
	
	/**
	* Transforms the string into a series of characters that can be compared
	* with CollationKey.compareTo. This overrides java.text.Collator.getCollationKey.
	* It can be overriden in a subclass.
	*/
	@:overload @:public @:synchronized override public function getCollationKey(source : String) : java.text.CollationKey;
	
	/**
	* Standard override; no change in semantics.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Compares the equality of two collation objects.
	* @param obj the table-based collation object to be compared with this.
	* @return true if the current table-based collation object is the same
	* as the table-based collation object obj; false otherwise.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates the hash code for the table-based collation object
	*/
	@:overload @:public override public function hashCode() : Int;
	
	
}
