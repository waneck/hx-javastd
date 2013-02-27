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
	public static var END(default, null) : Int;
	
	private var _node : Int;
	
	private var _nodeType : Int;
	
	private var _value : Float;
	
	public var _document(default, null) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	public var _iterator(default, null) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	public var _translet(default, null) : com.sun.org.apache.xalan.internal.xsltc.Translet;
	
	private var _format : String;
	
	private var _lang : String;
	
	private var _letterValue : String;
	
	private var _groupSep : String;
	
	private var _groupSize : Int;
	
	/**
	* Indicates if this instance of xsl:number has a from pattern.
	*/
	private var _hasFrom : Bool;
	
	@:overload private function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload private function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, hasFrom : Bool) : Void;
	
	/**
	* Set the start node for this counter. The same <tt>NodeCounter</tt>
	* object can be used multiple times by resetting the starting node.
	*/
	@:overload @:abstract public function setStartNode(node : Int) : NodeCounter;
	
	/**
	* If the user specified a value attribute, use this instead of
	* counting nodes.
	*/
	@:overload public function setValue(value : Float) : NodeCounter;
	
	/**
	* Sets formatting fields before calling formatNumbers().
	*/
	@:overload private function setFormatting(format : String, lang : String, letterValue : String, groupSep : String, groupSize : String) : Void;
	
	/**
	* Sets formatting fields to their default values.
	*/
	@:overload public function setDefaultFormatting() : NodeCounter;
	
	/**
	* Returns the position of <tt>node</tt> according to the level and
	* the from and count patterns.
	*/
	@:overload @:abstract public function getCounter() : String;
	
	/**
	* Returns the position of <tt>node</tt> according to the level and
	* the from and count patterns. This position is converted into a
	* string based on the arguments passed.
	*/
	@:overload public function getCounter(format : String, lang : String, letterValue : String, groupSep : String, groupSize : String) : String;
	
	/**
	* Returns true if <tt>node</tt> matches the count pattern. By
	* default a node matches the count patterns if it is of the
	* same type as the starting node.
	*/
	@:overload public function matchesCount(node : Int) : Bool;
	
	/**
	* Returns true if <tt>node</tt> matches the from pattern. By default,
	* no node matches the from pattern.
	*/
	@:overload public function matchesFrom(node : Int) : Bool;
	
	/**
	* Format a single value according to the format parameters.
	*/
	@:overload private function formatNumbers(value : Int) : String;
	
	/**
	* Format a sequence of values according to the format paramaters
	* set by calling setFormatting().
	*/
	@:overload private function formatNumbers(values : java.NativeArray<Int>) : String;
	
	
}
