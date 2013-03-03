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
* $Id: XSLTCSource.java,v 1.2.4.1 2005/09/06 12:43:28 pvedula Exp $
*/
extern class XSLTCSource implements javax.xml.transform.Source
{
	/**
	* Create a new XSLTC-specific source from a system ID
	*/
	@:overload @:public public function new(systemId : String) : Void;
	
	/**
	* Create a new XSLTC-specific source from a JAXP Source
	*/
	@:overload @:public public function new(source : javax.xml.transform.Source) : Void;
	
	/**
	* Implements javax.xml.transform.Source.setSystemId()
	* Set the system identifier for this Source.
	* This Source can get its input either directly from a file (in this case
	* it will instanciate and use a JAXP parser) or it can receive it through
	* ContentHandler/LexicalHandler interfaces.
	* @param systemId The system Id for this Source
	*/
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	/**
	* Implements javax.xml.transform.Source.getSystemId()
	* Get the system identifier that was set with setSystemId.
	* @return The system identifier that was set with setSystemId,
	*         or null if setSystemId was not called.
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* Internal interface which returns a DOM for a given DTMManager and translet.
	*/
	@:overload @:protected private function getDOM(dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, translet : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	
}
