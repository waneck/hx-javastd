package com.sun.org.apache.xalan.internal.lib;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
* $Id: NodeInfo.java,v 1.2.4.1 2005/09/10 18:54:37 jeffsuttor Exp $
*/
extern class NodeInfo
{
	/**
	* <code>systemId</code> returns the system id of the current
	* context node.
	*
	* @param context an <code>ExpressionContext</code> value
	* @return a <code>String</code> value
	*/
	@:overload @:public @:static public static function systemId(context : com.sun.org.apache.xalan.internal.extensions.ExpressionContext) : String;
	
	/**
	* <code>systemId</code> returns the system id of the node passed as
	* argument. If a node set is passed as argument, the system id of
	* the first node in the set is returned.
	*
	* @param nodeList a <code>NodeList</code> value
	* @return a <code>String</code> value
	*/
	@:overload @:public @:static public static function systemId(nodeList : org.w3c.dom.NodeList) : String;
	
	/**
	* <code>publicId</code> returns the public identifier of the current
	* context node.
	*
	* Xalan does not currently record this value, and will return null.
	*
	* @param context an <code>ExpressionContext</code> value
	* @return a <code>String</code> value
	*/
	@:overload @:public @:static public static function publicId(context : com.sun.org.apache.xalan.internal.extensions.ExpressionContext) : String;
	
	/**
	* <code>publicId</code> returns the public identifier of the node passed as
	* argument. If a node set is passed as argument, the public identifier of
	* the first node in the set is returned.
	*
	* Xalan does not currently record this value, and will return null.
	*
	* @param nodeList a <code>NodeList</code> value
	* @return a <code>String</code> value
	*/
	@:overload @:public @:static public static function publicId(nodeList : org.w3c.dom.NodeList) : String;
	
	/**
	* <code>lineNumber</code> returns the line number of the current
	* context node.
	*
	* NOTE: Xalan does not normally record location information for each node.
	* To obtain it, you must set the custom TrAX attribute
	* "http://xml.apache.org/xalan/features/source_location"
	* true in the TransformerFactory before generating the Transformer and executing
	* the stylesheet. Storage cost per node will be noticably increased in this mode.
	*
	* @param context an <code>ExpressionContext</code> value
	* @return an <code>int</code> value. This may be -1 to indicate that the
	* line number is not known.
	*/
	@:overload @:public @:static public static function lineNumber(context : com.sun.org.apache.xalan.internal.extensions.ExpressionContext) : Int;
	
	/**
	* <code>lineNumber</code> returns the line number of the node
	* passed as argument. If a node set is passed as argument, the line
	* number of the first node in the set is returned.
	*
	* NOTE: Xalan does not normally record location information for each node.
	* To obtain it, you must set the custom TrAX attribute
	* "http://xml.apache.org/xalan/features/source_location"
	* true in the TransformerFactory before generating the Transformer and executing
	* the stylesheet. Storage cost per node will be noticably increased in this mode.
	*
	* @param nodeList a <code>NodeList</code> value
	* @return an <code>int</code> value. This may be -1 to indicate that the
	* line number is not known.
	*/
	@:overload @:public @:static public static function lineNumber(nodeList : org.w3c.dom.NodeList) : Int;
	
	/**
	* <code>columnNumber</code> returns the column number of the
	* current context node.
	*
	* NOTE: Xalan does not normally record location information for each node.
	* To obtain it, you must set the custom TrAX attribute
	* "http://xml.apache.org/xalan/features/source_location"
	* true in the TransformerFactory before generating the Transformer and executing
	* the stylesheet. Storage cost per node will be noticably increased in this mode.
	*
	* @param context an <code>ExpressionContext</code> value
	* @return an <code>int</code> value. This may be -1 to indicate that the
	* column number is not known.
	*/
	@:overload @:public @:static public static function columnNumber(context : com.sun.org.apache.xalan.internal.extensions.ExpressionContext) : Int;
	
	/**
	* <code>columnNumber</code> returns the column number of the node
	* passed as argument. If a node set is passed as argument, the line
	* number of the first node in the set is returned.
	*
	* NOTE: Xalan does not normally record location information for each node.
	* To obtain it, you must set the custom TrAX attribute
	* "http://xml.apache.org/xalan/features/source_location"
	* true in the TransformerFactory before generating the Transformer and executing
	* the stylesheet. Storage cost per node will be noticably increased in this mode.
	*
	* @param nodeList a <code>NodeList</code> value
	* @return an <code>int</code> value. This may be -1 to indicate that the
	* column number is not known.
	*/
	@:overload @:public @:static public static function columnNumber(nodeList : org.w3c.dom.NodeList) : Int;
	
	
}
