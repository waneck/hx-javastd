package com.sun.org.apache.xerces.internal.impl.dv;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern interface ValidationContext
{
	/**
	* ValidationContext has all the information required for the
	* validation of: id, idref, entity, notation, qname
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	* @version $Id: ValidationContext.java,v 1.6 2010/07/23 02:09:29 joehw Exp $
	*/
	@:overload @:public public function needFacetChecking() : Bool;
	
	@:overload @:public public function needExtraChecking() : Bool;
	
	@:overload @:public public function needToNormalize() : Bool;
	
	@:overload @:public public function useNamespaces() : Bool;
	
	@:overload @:public public function isEntityDeclared(name : String) : Bool;
	
	@:overload @:public public function isEntityUnparsed(name : String) : Bool;
	
	@:overload @:public public function isIdDeclared(name : String) : Bool;
	
	@:overload @:public public function addId(name : String) : Void;
	
	@:overload @:public public function addIdRef(name : String) : Void;
	
	@:overload @:public public function getSymbol(symbol : String) : String;
	
	@:overload @:public public function getURI(prefix : String) : String;
	
	@:overload @:public public function getLocale() : java.util.Locale;
	
	
}
