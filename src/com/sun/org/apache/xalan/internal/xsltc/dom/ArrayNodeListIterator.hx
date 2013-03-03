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
* $Id: ArrayNodeListIterator.java,v 1.0 2009-11-25 04:34:24 joehw Exp $
*/
extern class ArrayNodeListIterator implements com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
{
	@:overload @:public public function new(nodes : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function next() : Int;
	
	@:overload @:public public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getLast() : Int;
	
	@:overload @:public public function getPosition() : Int;
	
	@:overload @:public public function setMark() : Void;
	
	@:overload @:public public function gotoMark() : Void;
	
	@:overload @:public public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getStartNode() : Int;
	
	@:overload @:public public function isReverse() : Bool;
	
	@:overload @:public public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function setRestartable(isRestartable : Bool) : Void;
	
	@:overload @:public public function getNodeByPosition(position : Int) : Int;
	
	
}
