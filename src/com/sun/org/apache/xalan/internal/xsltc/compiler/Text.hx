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
* $Id: Text.java,v 1.2.4.1 2005/09/12 11:33:09 pvedula Exp $
*/
@:internal extern class Text extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Create a blank Text syntax tree node.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create text syntax tree node.
	* @param text is the text to put in the node.
	*/
	@:overload @:public public function new(text : String) : Void;
	
	/**
	* Returns the text wrapped inside this node
	* @return The text wrapped inside this node
	*/
	@:overload @:protected private function getText() : String;
	
	/**
	* Set the text for this node. Appends the given text to any already
	* existing text (using string concatenation, so use only when needed).
	* @param text is the text to wrap inside this node.
	*/
	@:overload @:protected private function setText(text : String) : Void;
	
	@:overload @:public override public function display(indent : Int) : Void;
	
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload @:public public function ignore() : Void;
	
	@:overload @:public public function isIgnore() : Bool;
	
	@:overload @:public public function isTextElement() : Bool;
	
	@:overload @:protected override private function contextDependent() : Bool;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Check whether this Text node can be stored in a char[] in the translet.
	* Calling this is precondition to calling loadAsArrayOffsetLength.
	* @see #loadAsArrayOffsetLength(ClassGenerator,MethodGenerator)
	* @return true if this Text node can be
	*/
	@:overload @:public public function canLoadAsArrayOffsetLength() : Bool;
	
	/**
	* Generates code that loads the array that will contain the character
	* data represented by this Text node, followed by the offset of the
	* data from the start of the array, and then the length of the data.
	*
	* The pre-condition to calling this method is that
	* canLoadAsArrayOffsetLength() returns true.
	* @see #canLoadArrayOffsetLength()
	*/
	@:overload @:public public function loadAsArrayOffsetLength(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
