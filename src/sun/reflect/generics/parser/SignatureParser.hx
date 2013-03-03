package sun.reflect.generics.parser;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Parser for type signatures, as defined in the Java Virtual
* Machine Specification (JVMS) chapter 4.
* Converts the signatures into an abstract syntax tree (AST) representation.
* See the package sun.reflect.generics.tree for details of the AST.
*/
extern class SignatureParser
{
	/**
	* Static factory method. Produces a parser instance.
	* @return an instance of <tt>SignatureParser</tt>
	*/
	@:overload @:public @:static public static function make() : sun.reflect.generics.parser.SignatureParser;
	
	/**
	* Parses a class signature (as defined in the JVMS, chapter 4)
	* and produces an abstract syntax tree representing it.
	* @param s a string representing the input class signature
	* @return An abstract syntax tree for a class signature
	* corresponding to the input string
	* @throws GenericSignatureFormatError if the input is not a valid
	* class signature
	*/
	@:overload @:public public function parseClassSig(s : String) : sun.reflect.generics.tree.ClassSignature;
	
	/**
	* Parses a method signature (as defined in the JVMS, chapter 4)
	* and produces an abstract syntax tree representing it.
	* @param s a string representing the input method signature
	* @return An abstract syntax tree for a method signature
	* corresponding to the input string
	* @throws GenericSignatureFormatError if the input is not a valid
	* method signature
	*/
	@:overload @:public public function parseMethodSig(s : String) : sun.reflect.generics.tree.MethodTypeSignature;
	
	/**
	* Parses a type signature
	* and produces an abstract syntax tree representing it.
	*
	* @param s a string representing the input type signature
	* @return An abstract syntax tree for a type signature
	* corresponding to the input string
	* @throws GenericSignatureFormatError if the input is not a valid
	* type signature
	*/
	@:overload @:public public function parseTypeSig(s : String) : sun.reflect.generics.tree.TypeSignature;
	
	
}
