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
* $Id: CollatorFactoryBase.java,v 1.2.4.1 2005/09/06 06:03:08 pvedula Exp $
*/
extern class CollatorFactoryBase implements com.sun.org.apache.xalan.internal.xsltc.CollatorFactory
{
	/**
	* @author W. Eliot Kimber (eliot@isogen.com)
	*/
	@:public @:static @:final public static var DEFAULT_LOCALE(default, null) : java.util.Locale;
	
	@:public @:static @:final public static var DEFAULT_COLLATOR(default, null) : java.text.Collator;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getCollator(lang : String, country : String) : java.text.Collator;
	
	@:overload @:public public function getCollator(locale : java.util.Locale) : java.text.Collator;
	
	
}
