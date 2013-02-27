package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern interface XMLEntityDescription extends com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier
{
	/**
	* Sets the name of the entity.
	*
	* @param name the name of the entity
	*/
	@:overload public function setEntityName(name : String) : Void;
	
	/**
	* Returns the name of the entity.
	*
	* @return the name of the entity
	*/
	@:overload public function getEntityName() : String;
	
	
}
