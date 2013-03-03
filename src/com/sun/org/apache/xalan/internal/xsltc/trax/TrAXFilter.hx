package com.sun.org.apache.xalan.internal.xsltc.trax;
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
* $Id: TrAXFilter.java,v 1.2.4.1 2005/09/06 12:23:19 pvedula Exp $
*/
extern class TrAXFilter extends org.xml.sax.helpers.XMLFilterImpl
{
	@:overload @:public public function new(templates : javax.xml.transform.Templates) : Void;
	
	@:overload @:public public function getTransformer() : javax.xml.transform.Transformer;
	
	@:overload @:public override public function parse(input : org.xml.sax.InputSource) : Void;
	
	@:overload @:public override public function parse(systemId : String) : Void;
	
	@:overload @:public override public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function setErrorListener(handler : javax.xml.transform.ErrorListener) : Void;
	
	
}
