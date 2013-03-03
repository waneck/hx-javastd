package com.sun.org.apache.xerces.internal.impl.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class ValidationManager
{
	/**
	* ValidationManager is a coordinator property for validators in the
	* pipeline. Each validator must know how to interact with
	* this property. Validators are not required to know what kind of
	* other validators present in the pipeline, but should understand
	* that there are others and that some coordination is required.
	*
	* @xerces.internal
	*
	* @author Elena Litani, IBM
	*/
	@:protected @:final private var fVSs(default, null) : java.util.Vector<Dynamic>;
	
	@:protected private var fGrammarFound : Bool;
	
	@:protected private var fCachedDTD : Bool;
	
	/**
	* Each validator should call this method to add its ValidationState into
	* the validation manager.
	*/
	@:overload @:public @:final public function addValidationState(vs : com.sun.org.apache.xerces.internal.impl.validation.ValidationState) : Void;
	
	/**
	* Set the information required to validate entity values.
	*/
	@:overload @:public @:final public function setEntityState(state : com.sun.org.apache.xerces.internal.impl.validation.EntityState) : Void;
	
	@:overload @:public @:final public function setGrammarFound(grammar : Bool) : Void;
	
	@:overload @:public @:final public function isGrammarFound() : Bool;
	
	@:overload @:public @:final public function setCachedDTD(cachedDTD : Bool) : Void;
	
	@:overload @:public @:final public function isCachedDTD() : Bool;
	
	@:overload @:public @:final public function reset() : Void;
	
	
}
