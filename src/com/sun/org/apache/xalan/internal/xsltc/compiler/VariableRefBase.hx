package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: VariableRefBase.java,v 1.5 2005/09/28 13:48:18 pvedula Exp $
*/
@:internal extern class VariableRefBase extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	/**
	* A reference to the associated variable.
	*/
	private var _variable : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase;
	
	/**
	* A reference to the enclosing expression/instruction for which a
	* closure is needed (Predicate, Number or Sort).
	*/
	private var _closure : com.sun.org.apache.xalan.internal.xsltc.compiler.Closure;
	
	@:overload public function new(variable : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* Returns a reference to the associated variable
	*/
	@:overload public function getVariable() : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase;
	
	/**
	* If this variable reference is in a top-level element like
	* another variable, param or key, add a dependency between
	* that top-level element and the referenced variable. For
	* example,
	*
	*   <xsl:variable name="x" .../>
	*   <xsl:variable name="y" select="$x + 1"/>
	*
	* and assuming this class represents "$x", add a reference
	* between variable y and variable x.
	*/
	@:overload public function addParentDependency() : Void;
	
	/**
	* Two variable references are deemed equal if they refer to the
	* same variable.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this variable reference on the
	* format 'variable-ref(<var-name>)'.
	* @return Variable reference description
	*/
	@:overload override public function toString() : String;
	
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	
}
