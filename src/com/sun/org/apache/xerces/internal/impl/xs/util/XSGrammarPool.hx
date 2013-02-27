package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
extern class XSGrammarPool extends com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl
{
	/**
	* Return an <code>XSModel</code> that represents components in
	* the schema grammars in this pool implementation.
	*
	* @return  an <code>XSModel</code> representing this schema grammar
	*/
	@:overload public function toXSModel() : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	@:overload public function toXSModel(schemaVersion : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	@:overload private function toXSModel(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>, schemaVersion : java.StdTypes.Int16) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	
}