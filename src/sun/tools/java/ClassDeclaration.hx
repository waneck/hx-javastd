package sun.tools.java;
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
/**
* This class represents an Java class declaration. It refers
* to either a binary or source definition.
*
* ClassDefinitions are loaded on demand, this means that
* class declarations are late bound. The definition of the
* class is obtained in stages. The status field describes
* the state of the class definition:
*
* CS_UNDEFINED - the definition is not yet loaded
* CS_UNDECIDED - a binary definition is loaded, but it is
*                still unclear if the source definition need to
*                be loaded
* CS_BINARY    - the binary class is loaded
* CS_PARSED    - the class is loaded from the source file, the
*                type information is available, but the class has
*                not yet been compiled.
* CS_CHECKED   - the class is loaded from the source file and has
*                been type-checked.
* CS_COMPILED  - the class has been type checked, compiled,
*                and written out.
* CS_NOTFOUND  - no class definition could be found
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class ClassDeclaration implements sun.tools.java.Constants
{
	/**
	* Constructor
	*/
	@:overload @:public public function new(name : sun.tools.java.Identifier) : Void;
	
	/**
	* Get the status of the class
	*/
	@:overload @:public public function getStatus() : Int;
	
	/**
	* Get the name of the class
	*/
	@:overload @:public public function getName() : sun.tools.java.Identifier;
	
	/**
	* Get the type of the class
	*/
	@:overload @:public public function getType() : sun.tools.java.Type;
	
	/**
	* Check if the class is defined
	*/
	@:overload @:public public function isDefined() : Bool;
	
	/**
	* Get the definition of this class. Returns null if
	* the class is not yet defined.
	*/
	@:overload @:public public function getClassDefinition() : sun.tools.java.ClassDefinition;
	
	/**
	* Get the definition of this class, if the class is not
	* yet defined, load the definition. Loading a class may
	* throw various exceptions.
	*/
	@:overload @:public public function getClassDefinition(env : sun.tools.java.Environment) : sun.tools.java.ClassDefinition;
	
	/**
	* Get the definition of this class, if the class is not
	* yet defined, load the definition. Loading a class may
	* throw various exceptions.  Perform no basicCheck() on this
	* class.
	*/
	@:overload @:public public function getClassDefinitionNoCheck(env : sun.tools.java.Environment) : sun.tools.java.ClassDefinition;
	
	/**
	* Set the class definition
	*/
	@:overload @:public public function setDefinition(definition : sun.tools.java.ClassDefinition, status : Int) : Void;
	
	/**
	* Equality
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* toString
	*/
	@:overload @:public public function toString() : String;
	
	
}
