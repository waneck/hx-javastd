package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: ExtendedLexicalHandler.java,v 1.2.4.1 2005/09/15 08:15:18 suresh_emailid Exp $
*/
@:internal extern interface ExtendedLexicalHandler extends org.xml.sax.ext.LexicalHandler
{
	/**
	* This method is used to notify of a comment
	* @param comment the comment, but unlike the SAX comment() method this
	* method takes a String rather than a character array.
	* @throws SAXException
	*/
	@:overload @:public public function comment(comment : String) : Void;
	
	
}
