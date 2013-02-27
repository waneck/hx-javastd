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
* $Id: Util.java,v 1.2.4.1 2005/09/14 09:37:34 pvedula Exp $
*/
extern class Util
{
	/**
	* @author Santiago Pericas-Geertsen
	*/
	@:overload public static function baseName(name : String) : String;
	
	@:overload public static function noExtName(name : String) : String;
	
	@:overload public static function toJavaName(name : String) : String;
	
	/**
	* Creates a SAX2 InputSource object from a TrAX Source object
	*/
	@:overload public static function getInputSource(xsltc : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC, source : javax.xml.transform.Source) : org.xml.sax.InputSource;
	
	
}
