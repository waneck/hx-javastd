package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class StAXInputSource extends com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource
{
	@:overload @:public public function new(source : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:public public function new(source : javax.xml.stream.XMLStreamReader, consumeRemainingContent : Bool) : Void;
	
	@:overload @:public public function new(source : javax.xml.stream.XMLEventReader) : Void;
	
	@:overload @:public public function new(source : javax.xml.stream.XMLEventReader, consumeRemainingContent : Bool) : Void;
	
	@:overload @:public public function getXMLStreamReader() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public public function getXMLEventReader() : javax.xml.stream.XMLEventReader;
	
	@:overload @:public public function shouldConsumeRemainingContent() : Bool;
	
	@:overload @:public override public function setSystemId(systemId : String) : Void;
	
	
}
