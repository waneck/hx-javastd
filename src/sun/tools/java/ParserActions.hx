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
* This is the protocol by which a Parser makes callbacks
* to the later phases of the compiler.
* <p>
* (As a backwards compatibility trick, Parser implements
* this protocol, so that an instance of a Parser subclass
* can handle its own actions.  The preferred way to use a
* Parser, however, is to instantiate it directly with a
* reference to your own ParserActions implementation.)
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
* @author      John R. Rose
*/
extern interface ParserActions
{
	/**
	* package declaration
	*/
	@:overload public function packageDeclaration(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* import class
	*/
	@:overload public function importClass(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* import package
	*/
	@:overload public function importPackage(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* Define class
	* @return a cookie for the class
	* This cookie is used by the parser when calling defineField
	* and endClass, and is not examined otherwise.
	*/
	@:overload public function beginClass(off : haxe.Int64, doc : String, mod : Int, nm : sun.tools.java.IdentifierToken, sup : sun.tools.java.IdentifierToken, impl : java.NativeArray<sun.tools.java.IdentifierToken>) : sun.tools.java.ClassDefinition;
	
	/**
	* End class
	* @param c a cookie returned by the corresponding beginClass call
	*/
	@:overload public function endClass(off : haxe.Int64, c : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Define a field
	* @param c a cookie returned by the corresponding beginClass call
	*/
	@:overload public function defineField(where : haxe.Int64, c : sun.tools.java.ClassDefinition, doc : String, mod : Int, t : sun.tools.java.Type, nm : sun.tools.java.IdentifierToken, args : java.NativeArray<sun.tools.java.IdentifierToken>, exp : java.NativeArray<sun.tools.java.IdentifierToken>, val : sun.tools.tree.Node) : Void;
	
	
}
