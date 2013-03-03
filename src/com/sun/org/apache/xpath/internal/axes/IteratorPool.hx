package com.sun.org.apache.xpath.internal.axes;
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
* $Id: IteratorPool.java,v 1.2.4.1 2005/09/14 19:45:19 jeffsuttor Exp $
*/
extern class IteratorPool implements java.io.Serializable
{
	/**
	* Constructor IteratorPool
	*
	* @param original The original iterator from which all others will be cloned.
	*/
	@:overload @:public public function new(original : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	/**
	* Get an instance of the given object in this pool
	*
	* @return An instance of the given object
	*/
	@:overload @:public @:synchronized public function getInstanceOrThrow() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Get an instance of the given object in this pool
	*
	* @return An instance of the given object
	*/
	@:overload @:public @:synchronized public function getInstance() : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Add an instance of the given object to the pool
	*
	*
	* @param obj Object to add.
	*/
	@:overload @:public @:synchronized public function freeInstance(obj : com.sun.org.apache.xml.internal.dtm.DTMIterator) : Void;
	
	
}
