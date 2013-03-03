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
* $Id: EmptyIterator.java,v 1.2.4.1 2005/09/15 08:15:05 suresh_emailid Exp $
*/
extern class EmptyIterator implements com.sun.org.apache.xml.internal.dtm.DTMAxisIterator
{
	@:overload @:public @:static public static function getInstance() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public @:final public function next() : Int;
	
	@:overload @:public @:final public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public @:final public function getLast() : Int;
	
	@:overload @:public @:final public function getPosition() : Int;
	
	@:overload @:public @:final public function setMark() : Void;
	
	@:overload @:public @:final public function gotoMark() : Void;
	
	@:overload @:public @:final public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public @:final public function getStartNode() : Int;
	
	@:overload @:public @:final public function isReverse() : Bool;
	
	@:overload @:public @:final public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public @:final public function setRestartable(isRestartable : Bool) : Void;
	
	@:overload @:public @:final public function getNodeByPosition(position : Int) : Int;
	
	
}
