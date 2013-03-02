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
* $Id: FilterIterator.java,v 1.2.4.1 2005/09/06 06:21:10 pvedula Exp $
*/
extern class FilterIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload public function new(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, filter : com.sun.org.apache.xml.internal.dtm.DTMFilter) : Void;
	
	@:overload public function isReverse() : Bool;
	
	@:overload public function setRestartable(isRestartable : Bool) : Void;
	
	@:overload public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function next() : Int;
	
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function setMark() : Void;
	
	@:overload override public function gotoMark() : Void;
	
	
}
