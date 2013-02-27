package com.sun.org.apache.xml.internal.serializer;
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
* $Id: SerializerTrace.java,v 1.2.4.1 2005/09/15 08:15:24 suresh_emailid Exp $
*/
extern interface SerializerTrace
{
	/**
	* Tell if trace listeners are present.
	*
	* @return True if there are trace listeners
	*/
	@:overload public function hasTraceListeners() : Bool;
	
	/**
	* Fire startDocument, endDocument events.
	*
	* @param eventType One of the EVENTTYPE_XXX constants.
	*/
	@:overload public function fireGenerateEvent(eventType : Int) : Void;
	
	/**
	* Fire startElement, endElement events.
	*
	* @param eventType One of the EVENTTYPE_XXX constants.
	* @param name The name of the element.
	* @param atts The SAX attribute list.
	*/
	@:overload public function fireGenerateEvent(eventType : Int, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Fire characters, cdata events.
	*
	* @param eventType One of the EVENTTYPE_XXX constants.
	* @param ch The char array from the SAX event.
	* @param start The start offset to be used in the char array.
	* @param length The end offset to be used in the chara array.
	*/
	@:overload public function fireGenerateEvent(eventType : Int, ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Fire processingInstruction events.
	*
	* @param eventType One of the EVENTTYPE_XXX constants.
	* @param name The name of the processing instruction.
	* @param data The processing instruction data.
	*/
	@:overload public function fireGenerateEvent(eventType : Int, name : String, data : String) : Void;
	
	/**
	* Fire comment and entity ref events.
	*
	* @param eventType One of the EVENTTYPE_XXX constants.
	* @param data The comment or entity ref data.
	*/
	@:overload public function fireGenerateEvent(eventType : Int, data : String) : Void;
	
	
}
