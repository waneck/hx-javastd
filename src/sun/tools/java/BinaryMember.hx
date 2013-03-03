package sun.tools.java;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BinaryMember extends sun.tools.java.MemberDefinition
{
	/**
	* Constructor
	*/
	@:overload @:public public function new(clazz : sun.tools.java.ClassDefinition, modifiers : Int, type : sun.tools.java.Type, name : sun.tools.java.Identifier, atts : sun.tools.java.BinaryAttribute) : Void;
	
	/**
	* Constructor for an inner class.
	*/
	@:overload @:public public function new(innerClass : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Inline allowed (currently only allowed for the constructor of Object).
	*/
	@:overload @:public override public function isInlineable(env : sun.tools.java.Environment, fromFinal : Bool) : Bool;
	
	/**
	* Get arguments
	*/
	@:overload @:public override public function getArguments() : java.util.Vector<Dynamic>;
	
	/**
	* Get exceptions
	*/
	@:overload @:public override public function getExceptions(env : sun.tools.java.Environment) : java.NativeArray<sun.tools.java.ClassDeclaration>;
	
	/**
	* Get documentation
	*/
	@:overload @:public override public function getDocumentation() : String;
	
	@:overload @:public override public function isConstant() : Bool;
	
	/**
	* Get the value
	*/
	@:overload @:public override public function getValue(env : sun.tools.java.Environment) : sun.tools.tree.Node;
	
	/**
	* Get a field attribute
	*/
	@:overload @:public public function getAttribute(name : sun.tools.java.Identifier) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function deleteAttribute(name : sun.tools.java.Identifier) : Bool;
	
	/*
	* Add an attribute to a field
	*/
	@:overload @:public public function addAttribute(name : sun.tools.java.Identifier, data : java.NativeArray<java.StdTypes.Int8>, env : sun.tools.java.Environment) : Void;
	
	
}
