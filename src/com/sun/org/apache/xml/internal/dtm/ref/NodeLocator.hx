package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: NodeLocator.java,v 1.2.4.1 2005/09/15 08:15:08 suresh_emailid Exp $
*/
extern class NodeLocator implements javax.xml.transform.SourceLocator
{
	/**
	* <code>NodeLocator</code> maintains information on an XML source
	* node.
	*
	* @author <a href="mailto:ovidiu@cup.hp.com">Ovidiu Predescu</a>
	* @since May 23, 2001
	*/
	private var m_publicId : String;
	
	private var m_systemId : String;
	
	private var m_lineNumber : Int;
	
	private var m_columnNumber : Int;
	
	/**
	* Creates a new <code>NodeLocator</code> instance.
	*
	* @param publicId a <code>String</code> value
	* @param systemId a <code>String</code> value
	* @param lineNumber an <code>int</code> value
	* @param columnNumber an <code>int</code> value
	*/
	@:overload public function new(publicId : String, systemId : String, lineNumber : Int, columnNumber : Int) : Void;
	
	/**
	* <code>getPublicId</code> returns the public ID of the node.
	*
	* @return a <code>String</code> value
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* <code>getSystemId</code> returns the system ID of the node.
	*
	* @return a <code>String</code> value
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* <code>getLineNumber</code> returns the line number of the node.
	*
	* @return an <code>int</code> value
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* <code>getColumnNumber</code> returns the column number of the
	* node.
	*
	* @return an <code>int</code> value
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* <code>toString</code> returns a string representation of this
	* NodeLocator instance.
	*
	* @return a <code>String</code> value
	*/
	@:overload public function toString() : String;
	
	
}
