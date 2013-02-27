package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
* $Id: AnyNodeCounter.java,v 1.2.4.1 2005/09/06 05:54:53 pvedula Exp $
*/
extern class AnyNodeCounter extends com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, hasFrom : Bool) : Void;
	
	@:overload override public function setStartNode(node : Int) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	@:overload override public function getCounter() : String;
	
	@:overload public static function getDefaultNodeCounter(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : com.sun.org.apache.xalan.internal.xsltc.dom.NodeCounter;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$AnyNodeCounter$DefaultAnyNodeCounter') @:internal extern class AnyNodeCounter_DefaultAnyNodeCounter extends AnyNodeCounter
{
	@:overload public function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, document : com.sun.org.apache.xalan.internal.xsltc.DOM, iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	@:overload override public function getCounter() : String;
	
	
}
