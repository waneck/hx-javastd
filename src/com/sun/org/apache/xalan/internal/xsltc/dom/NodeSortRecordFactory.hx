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
* $Id: NodeSortRecordFactory.java,v 1.2.4.1 2005/09/06 09:53:40 pvedula Exp $
*/
extern class NodeSortRecordFactory
{
	/**
	*
	*/
	@:protected private var _collator : java.text.Collator;
	
	/**
	* Creates a NodeSortRecord producing object. The DOM specifies which tree
	* to get the nodes to sort from, the class name specifies what auxillary
	* class to use to sort the nodes (this class is generated by the Sort
	* class), and the translet parameter is needed for methods called by
	* this object.
	*
	* @deprecated This constructor is no longer used in generated code.  It
	*             exists only for backwards compatibility.
	*/
	@:overload @:public public function new(dom : com.sun.org.apache.xalan.internal.xsltc.DOM, className : String, translet : com.sun.org.apache.xalan.internal.xsltc.Translet, order : java.NativeArray<String>, type : java.NativeArray<String>) : Void;
	
	/**
	* Creates a NodeSortRecord producing object. The DOM specifies which tree
	* to get the nodes to sort from, the class name specifies what auxillary
	* class to use to sort the nodes (this class is generated by the Sort
	* class), and the translet parameter is needed for methods called by
	* this object.
	*/
	@:overload @:public public function new(dom : com.sun.org.apache.xalan.internal.xsltc.DOM, className : String, translet : com.sun.org.apache.xalan.internal.xsltc.Translet, order : java.NativeArray<String>, type : java.NativeArray<String>, lang : java.NativeArray<String>, caseOrder : java.NativeArray<String>) : Void;
	
	/**
	* Create an instance of a sub-class of NodeSortRecord. The name of this
	* sub-class is passed to us in the constructor.
	*/
	@:overload @:public public function makeNodeSortRecord(node : Int, last : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeSortRecord;
	
	@:overload @:public public function getClassName() : String;
	
	
}
