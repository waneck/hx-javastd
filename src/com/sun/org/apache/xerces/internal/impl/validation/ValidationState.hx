package com.sun.org.apache.xerces.internal.impl.validation;
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
extern class ValidationState implements com.sun.org.apache.xerces.internal.impl.dv.ValidationContext
{
	@:overload @:public public function setExtraChecking(newValue : Bool) : Void;
	
	@:overload @:public public function setFacetChecking(newValue : Bool) : Void;
	
	@:overload @:public public function setNormalizationRequired(newValue : Bool) : Void;
	
	@:overload @:public public function setUsingNamespaces(newValue : Bool) : Void;
	
	@:overload @:public public function setEntityState(state : com.sun.org.apache.xerces.internal.impl.validation.EntityState) : Void;
	
	@:overload @:public public function setNamespaceSupport(namespace : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	@:overload @:public public function setSymbolTable(sTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* return null if all IDREF values have a corresponding ID value;
	* otherwise return the first IDREF value without a matching ID value.
	*/
	@:overload @:public public function checkIDRefID() : String;
	
	@:overload @:public public function reset() : Void;
	
	/**
	* The same validation state can be used to validate more than one (schema)
	* validation roots. Entity/Namespace/Symbol are shared, but each validation
	* root needs its own id/idref tables. So we need this method to reset only
	* the two tables.
	*/
	@:overload @:public public function resetIDTables() : Void;
	
	@:overload @:public public function needExtraChecking() : Bool;
	
	@:overload @:public public function needFacetChecking() : Bool;
	
	@:overload @:public public function needToNormalize() : Bool;
	
	@:overload @:public public function useNamespaces() : Bool;
	
	@:overload @:public public function isEntityDeclared(name : String) : Bool;
	
	@:overload @:public public function isEntityUnparsed(name : String) : Bool;
	
	@:overload @:public public function isIdDeclared(name : String) : Bool;
	
	@:overload @:public public function addId(name : String) : Void;
	
	@:overload @:public public function addIdRef(name : String) : Void;
	
	@:overload @:public public function getSymbol(symbol : String) : String;
	
	@:overload @:public public function getURI(prefix : String) : String;
	
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	@:overload @:public public function getLocale() : java.util.Locale;
	
	
}
