package com.sun.org.apache.xerces.internal.xni.grammars;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004 The Apache Software Foundation.
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
extern interface XSGrammar extends com.sun.org.apache.xerces.internal.xni.grammars.Grammar
{
	/**
	* Return an <code>XSModel</code> that represents components in this schema
	* grammar and any schema grammars that are imported by this grammar
	* directly or indirectly.
	*
	* @return  an <code>XSModel</code> representing this schema grammar
	*/
	@:overload @:public public function toXSModel() : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	/**
	* Return an <code>XSModel</code> that represents components in this schema
	* grammar and the grammars in the <code>grammars</code>parameter,
	* any schema grammars that are imported by them directly or indirectly.
	*
	* @return  an <code>XSModel</code> representing these schema grammars
	*/
	@:overload @:public public function toXSModel(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar>) : com.sun.org.apache.xerces.internal.xs.XSModel;
	
	
}
