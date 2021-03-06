package com.sun.org.apache.xalan.internal.xsltc.dom;
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
* $Id: NodeCounter.java,v 1.2.4.1 2005/09/12 11:52:36 pvedula Exp $
*/
extern class NodeCounter
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	*/
	@:public @:static @:final public static var END(default, null) : Int;
	
	@:protected private var _node : Int;
	
	@:protected private var _nodeType : Int;
	
	@:protected private var _value : Float;
	
	@:public @:final public var _document(default, null) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:public @:final public var _iterator(default, null) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:public @:final public var _translet(default, null) : com.sun.org.apache.xalan.internal.xsltc.Translet;
	
	@:protected private var _format : String;
	
	@:protected private var _lang : String;
	
	@:protected private var _letterValue : String;
	
	@:protected private var _groupSep : String;
	
	@:protected private var _groupSize : Int;
	
	/**
	* Indicates if this instance of xsl:number has a from pattern.
	*/
	@:protected private var _hasFrom : Bool;
	
	@:overload @:protected private function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload @:protected private function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, hasFrom : Bool) : Void;
	
	/**
	* Set the start node for this counter. The same <tt>NodeCounter</tt>
	* object can be used multiple times by resetting the starting node.
	*/
	@:overload @:abstract @:public public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	/**
	* If the user specified a value attribute, use this instead of
	* counting nodes.
	*/
	@:overload @:public public function setValue(value : Float) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	/**
	* Sets formatting fields before calling formatNumbers().
	*/
	@:overload @:protected private function setFormatting(format : String, lang : String, letterValue : String, groupSep : String, groupSize : String) : Void;
	
	/**
	* Sets formatting fields to their default values.
	*/
	@:overload @:public public function setDefaultFormatting() : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	/**
	* Returns the position of <tt>node</tt> according to the level and
	* the from and count patterns.
	*/
	@:overload @:abstract @:public public function getCounter() : String;
	
	/**
	* Returns the position of <tt>node</tt> according to the level and
	* the from and count patterns. This position is converted into a
	* string based on the arguments passed.
	*/
	@:overload @:public public function getCounter(format : String, lang : String, letterValue : String, groupSep : String, groupSize : String) : String;
	
	/**
	* Returns true if <tt>node</tt> matches the count pattern. By
	* default a node matches the count patterns if it is of the
	* same type as the starting node.
	*/
	@:overload @:public public function matchesCount(node : Int) : Bool;
	
	/**
	* Returns true if <tt>node</tt> matches the from pattern. By default,
	* no node matches the from pattern.
	*/
	@:overload @:public public function matchesFrom(node : Int) : Bool;
	
	/**
	* Format a single value according to the format parameters.
	*/
	@:overload @:protected private function formatNumbers(value : Int) : String;
	
	/**
	* Format a sequence of values according to the format paramaters
	* set by calling setFormatting().
	*/
	@:overload @:protected private function formatNumbers(values : java.NativeArray<Int>) : String;
	
	
}
