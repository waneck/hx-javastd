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
* $Id: VariableBase.java,v 1.5 2005/09/28 13:48:18 pvedula Exp $
*/
@:internal extern class VariableBase extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	* @author Erwin Bolwidt <ejb@klomp.org>
	* @author John Howard <JohnH@schemasoft.com>
	*/
	private var _name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	private var _escapedName : String;
	
	private var _type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	private var _isLocal : Bool;
	
	private var _local : com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
	
	private var _loadInstruction : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	private var _storeInstruction : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	private var _select : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	private var select : String;
	
	private var _refs : java.util.Vector<Dynamic>;
	
	private var _dependencies : java.util.Vector<Dynamic>;
	
	private var _ignore : Bool;
	
	/**
	* Disable this variable/parameter
	*/
	@:overload public function disable() : Void;
	
	/**
	* Add a reference to this variable. Called by VariableRef when an
	* expression contains a reference to this variable.
	*/
	@:overload public function addReference(vref : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase) : Void;
	
	/**
	* When a variable is overriden by another, e.g. via xsl:import,
	* its references need to be copied or otherwise it may be
	* compiled away as dead code. This method can be used for that
	* purpose.
	*/
	@:overload public function copyReferences(_var : VariableBase) : Void;
	
	/**
	* Map this variable to a register
	*/
	@:overload public function mapRegister(methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Remove the mapping of this variable to a register.
	* Called when we leave the AST scope of the variable's declaration
	*/
	@:overload public function unmapRegister(methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Returns an instruction for loading the value of this variable onto
	* the JVM stack.
	*/
	@:overload public function loadInstruction() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Returns an instruction for storing a value from the JVM stack
	* into this variable.
	*/
	@:overload public function storeInstruction() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Returns the expression from this variable's select attribute (if any)
	*/
	@:overload public function getExpression() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	/**
	* Display variable as single string
	*/
	@:overload public function toString() : String;
	
	/**
	* Display variable in a full AST dump
	*/
	@:overload override public function display(indent : Int) : Void;
	
	/**
	* Returns the type of the variable
	*/
	@:overload public function getType() : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Returns the name of the variable or parameter as it will occur in the
	* compiled translet.
	*/
	@:overload public function getName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Returns the escaped qname of the variable or parameter
	*/
	@:overload public function getEscapedName() : String;
	
	/**
	* Set the name of the variable or paremeter. Escape all special chars.
	*/
	@:overload public function setName(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	/**
	* Returns the true if the variable is local
	*/
	@:overload public function isLocal() : Bool;
	
	/**
	* Parse the contents of the <xsl:decimal-format> element.
	*/
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Compile the value of the variable, which is either in an expression in
	* a 'select' attribute, or in the variable elements body
	*/
	@:overload public function translateValue(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
