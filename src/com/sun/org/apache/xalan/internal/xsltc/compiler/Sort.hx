package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
* $Id: Sort.java,v 1.2.4.1 2005/09/12 11:08:12 pvedula Exp $
*/
@:internal extern class Sort extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction implements com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
{
	/**
	* Returns true if this closure is compiled in an inner class (i.e.
	* if this is a real closure).
	*/
	@:overload @:public public function inInnerClass() : Bool;
	
	/**
	* Returns a reference to its parent closure or null if outermost.
	*/
	@:overload @:public public function getParentClosure() : com.sun.org.apache.xalan.internal.xsltc.compiler.Closure;
	
	/**
	* Returns the name of the auxiliary class or null if this predicate
	* is compiled inside the Translet.
	*/
	@:overload @:public public function getInnerClassName() : String;
	
	/**
	* Add new variable to the closure.
	*/
	@:overload @:public public function addVariable(variableRef : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase) : Void;
	
	/**
	* Parse the attributes of the xsl:sort element
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Run type checks on the attributes; expression must return a string
	* which we will use as a sort key
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* These two methods are needed in the static methods that compile the
	* overloaded NodeSortRecord.compareType() and NodeSortRecord.sortOrder()
	*/
	@:overload @:public public function translateSortType(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public public function translateSortOrder(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public public function translateCaseOrder(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public public function translateLang(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* This method compiles code for the select expression for this
	* xsl:sort element. The method is called from the static code-generating
	* methods in this class.
	*/
	@:overload @:public public function translateSelect(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* This method should not produce any code
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Compiles code that instantiates a SortingIterator object.
	* This object's constructor needs referencdes to the current iterator
	* and a node sort record producing objects as its parameters.
	*/
	@:overload @:public @:static public static function translateSortIterator(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, nodeSet : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, sortObjects : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Compiles code that instantiates a NodeSortRecordFactory object which
	* will produce NodeSortRecord objects of a specific type.
	*/
	@:overload @:public @:static public static function compileSortRecordFactory(sortObjects : java.util.Vector<Dynamic>, classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public @:static public static function compileSortRecordFactory(sortObjects : java.util.Vector<Dynamic>, classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, sortRecordClass : String) : String;
	
	
}
