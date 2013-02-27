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
* $Id: MultipleNodeCounter.java,v 1.2.4.1 2005/09/12 11:49:56 pvedula Exp $
*/
extern class MultipleNodeCounter extends com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
{
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, hasFrom : Bool) : Void;
	
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	@:overload override public function getCounter() : String;
	
	@:overload public static function getDefaultNodeCounter(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$MultipleNodeCounter$DefaultMultipleNodeCounter') @:internal extern class MultipleNodeCounter_DefaultMultipleNodeCounter extends MultipleNodeCounter
{
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	
}