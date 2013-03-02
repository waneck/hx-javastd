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
* $Id: NodeSortRecord.java,v 1.5 2005/09/28 13:48:36 pvedula Exp $
*/
extern class NodeSortRecord
{
	/**
	* Base class for sort records containing application specific sort keys
	*/
	public static var COMPARE_STRING(default, null) : Int;
	
	public static var COMPARE_NUMERIC(default, null) : Int;
	
	public static var COMPARE_ASCENDING(default, null) : Int;
	
	public static var COMPARE_DESCENDING(default, null) : Int;
	
	/**
	* A reference to the first Collator
	* @deprecated This field continues to exist for binary compatibility.
	*             New code should not refer to it.
	*/
	private var _collator : java.text.Collator;
	
	private var _collators : java.NativeArray<java.text.Collator>;
	
	/**
	* A locale field that might be set by an instance of a subclass.
	* @deprecated This field continues to exist for binary compatibility.
	*             New code should not refer to it.
	*/
	private var _locale : java.util.Locale;
	
	private var _collatorFactory : com.sun.org.apache.xalan.internal.xsltc.CollatorFactory;
	
	private var _settings : com.sun.org.apache.xalan.internal.xsltc.dom.SortSettings;
	
	/**
	* This constructor is run by a call to ClassLoader in the
	* makeNodeSortRecord method in the NodeSortRecordFactory class. Since we
	* cannot pass any parameters to the constructor in that case we just set
	* the default values here and wait for new values through initialize().
	*/
	@:overload public function new(node : Int) : Void;
	
	@:overload public function new() : Void;
	
	/**
	* This method allows the caller to set the values that could not be passed
	* to the default constructor.
	*/
	@:overload @:final public function initialize(node : Int, last : Int, dom : com.sun.org.apache.xalan.internal.xsltc.DOM, settings : com.sun.org.apache.xalan.internal.xsltc.dom.SortSettings) : Void;
	
	/**
	* Returns the node for this sort object
	*/
	@:overload @:final public function getNode() : Int;
	
	/**
	*
	*/
	@:overload @:final public function compareDocOrder(other : com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecord) : Int;
	
	/**
	* Compare this sort element to another. The first level is checked first,
	* and we proceed to the next level only if the first level keys are
	* identical (and so the key values may not even be extracted from the DOM)
	*
	* !!!!MUST OPTIMISE - THIS IS REALLY, REALLY SLOW!!!!
	*/
	@:overload public function compareTo(other : com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecord) : Int;
	
	/**
	* Returns the array of Collators used for text comparisons in this object.
	* May be overridden by inheriting classes
	*/
	@:overload public function getCollator() : java.NativeArray<java.text.Collator>;
	
	/**
	* Extract the sort value for a level of this key.
	*/
	@:overload @:abstract public function extractValueFromDOM(dom : com.sun.org.apache.xalan.internal.xsltc.DOM, current : Int, level : Int, translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet, last : Int) : String;
	
	
}
