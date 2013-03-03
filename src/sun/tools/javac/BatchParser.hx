package sun.tools.javac;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BatchParser extends sun.tools.java.Parser
{
	/**
	* The current package
	*/
	@:protected private var pkg : sun.tools.java.Identifier;
	
	/**
	* The current imports
	*/
	@:protected private var imports : sun.tools.java.Imports;
	
	/**
	* The classes defined in this file
	*/
	@:protected private var classes : java.util.Vector<Dynamic>;
	
	/**
	* The current class
	*/
	@:protected private var sourceClass : sun.tools.javac.SourceClass;
	
	/**
	* The toplevel environment
	*/
	@:protected private var toplevelEnv : sun.tools.java.Environment;
	
	/**
	* Create a batch file parser
	*/
	@:overload @:public public function new(env : sun.tools.java.Environment, _in : java.io.InputStream) : Void;
	
	/**
	* Package declaration
	*/
	@:overload @:public override public function packageDeclaration(where : haxe.Int64, t : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* Import class
	*/
	@:overload @:public override public function importClass(pos : haxe.Int64, t : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* Import package
	*/
	@:overload @:public override public function importPackage(pos : haxe.Int64, t : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* Define class
	*/
	@:overload @:public override public function beginClass(where : haxe.Int64, doc : String, mod : Int, t : sun.tools.java.IdentifierToken, sup : sun.tools.java.IdentifierToken, interfaces : java.NativeArray<sun.tools.java.IdentifierToken>) : sun.tools.java.ClassDefinition;
	
	/**
	* Report the current class under construction.
	*/
	@:overload @:public override public function getCurrentClass() : sun.tools.java.ClassDefinition;
	
	/**
	* End class
	*/
	@:overload @:public override public function endClass(where : haxe.Int64, c : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Define a method
	*/
	@:overload @:public override public function defineField(where : haxe.Int64, c : sun.tools.java.ClassDefinition, doc : String, mod : Int, t : sun.tools.java.Type, name : sun.tools.java.IdentifierToken, args : java.NativeArray<sun.tools.java.IdentifierToken>, exp : java.NativeArray<sun.tools.java.IdentifierToken>, val : sun.tools.tree.Node) : Void;
	
	
}
