package com.sun.org.apache.xerces.internal.impl.dv.dtd;
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
extern class XML11DTDDVFactoryImpl extends com.sun.org.apache.xerces.internal.impl.dv.dtd.DTDDVFactoryImpl
{
	/**
	* return a dtd type of the given name
	* This will call the super class if and only if it does not
	* recognize the passed-in name.
	*
	* @param name  the name of the datatype
	* @return      the datatype validator of the given name
	*/
	@:overload @:public override public function getBuiltInDV(name : String) : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/**
	* get all built-in DVs, which are stored in a hashtable keyed by the name
	* New XML 1.1 datatypes are inserted.
	*
	* @return      a hashtable which contains all datatypes
	*/
	@:overload @:public override public function getBuiltInTypes() : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
