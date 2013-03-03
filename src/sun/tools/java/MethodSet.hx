package sun.tools.java;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* The MethodSet structure is used to store methods for a class.
* It maintains the invariant that it never stores two methods
* with the same signature.  MethodSets are able to lookup
* all methods with a given name and the unique method with a given
* signature (name, args).
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class MethodSet
{
	/**
	* Creates a brand new MethodSet
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the number of distinct methods stored in the MethodSet.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Adds `method' to the MethodSet.  No method of the same signature
	* should be already defined.
	*/
	@:overload @:public public function add(method : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* Adds `method' to the MethodSet, replacing any previous definition
	* with the same signature.
	*/
	@:overload @:public public function replace(method : sun.tools.java.MemberDefinition) : Void;
	
	/**
	* If the MethodSet contains a method with the same signature
	* then lookup() returns it.  Otherwise, this method returns null.
	*/
	@:overload @:public public function lookupSig(name : sun.tools.java.Identifier, type : sun.tools.java.Type) : sun.tools.java.MemberDefinition;
	
	/**
	* Returns an Iterator of all methods contained in the
	* MethodSet which have a given name.
	*/
	@:overload @:public public function lookupName(name : sun.tools.java.Identifier) : java.util.Iterator<Dynamic>;
	
	/**
	* Returns an Iterator of all methods in the MethodSet
	*/
	@:overload @:public public function iterator() : java.util.Iterator<Dynamic>;
	
	/**
	* After freeze() is called, the MethodSet becomes (mostly)
	* immutable.  Any calls to add() or addMeet() lead to
	* CompilerErrors.  Note that the entries themselves are still
	* (unfortunately) open for mischievous and wanton modification.
	*/
	@:overload @:public public function freeze() : Void;
	
	/**
	* Tells whether freeze() has been called on this MethodSet.
	*/
	@:overload @:public public function isFrozen() : Bool;
	
	/**
	* Returns a (big) string representation of this MethodSet
	*/
	@:overload @:public public function toString() : String;
	
	
}
