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
extern class BinaryConstantPool implements sun.tools.java.Constants
{
	/**
	* get a integer
	*/
	@:overload @:public public function getInteger(n : Int) : Int;
	
	/**
	* get a value
	*/
	@:overload @:public public function getValue(n : Int) : Dynamic;
	
	/**
	* get a string
	*/
	@:overload @:public public function getString(n : Int) : String;
	
	/**
	* get an identifier
	*/
	@:overload @:public public function getIdentifier(n : Int) : sun.tools.java.Identifier;
	
	/**
	* get class declaration
	*/
	@:overload @:public public function getDeclarationFromName(env : sun.tools.java.Environment, n : Int) : sun.tools.java.ClassDeclaration;
	
	/**
	* get class declaration
	*/
	@:overload @:public public function getDeclaration(env : sun.tools.java.Environment, n : Int) : sun.tools.java.ClassDeclaration;
	
	/**
	* get a type from a type signature
	*/
	@:overload @:public public function getType(n : Int) : sun.tools.java.Type;
	
	/**
	* get the type of constant given an index
	*/
	@:overload @:public public function getConstantType(n : Int) : Int;
	
	/**
	* get the n-th constant from the constant pool
	*/
	@:overload @:public public function getConstant(n : Int, env : sun.tools.java.Environment) : Dynamic;
	
	/**
	* Get a list of dependencies, ie: all the classes referenced in this
	* constant pool.
	*/
	@:overload @:public public function getDependencies(env : sun.tools.java.Environment) : java.util.Vector<Dynamic>;
	
	/**
	* Find the index of an Object in the constant pool
	*/
	@:overload @:public public function indexObject(obj : Dynamic, env : sun.tools.java.Environment) : Int;
	
	/**
	* Find the index of an ascii string in the constant pool.  If it's not in
	* the constant pool, then add it at the end.
	*/
	@:overload @:public public function indexString(string : String, env : sun.tools.java.Environment) : Int;
	
	/**
	* Create a hash table of all the items in the constant pool that could
	* possibly be referenced from the outside.
	*/
	@:overload @:public public function createIndexHash(env : sun.tools.java.Environment) : Void;
	
	/**
	* Write out the contents of the constant pool, including any additions
	* that have been added.
	*/
	@:overload @:public public function write(out : java.io.DataOutputStream, env : sun.tools.java.Environment) : Void;
	
	
}
