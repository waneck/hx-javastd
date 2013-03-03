package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class EmptyXMLSchema extends com.sun.org.apache.xerces.internal.jaxp.validation.AbstractXMLSchema implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
{
	@:overload @:public public function new() : Void;
	
	/*
	* XMLGrammarPool methods
	*/
	@:overload @:public public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	@:overload @:public public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	@:overload @:public public function retrieveGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload @:public public function lockPool() : Void;
	
	@:overload @:public public function unlockPool() : Void;
	
	@:overload @:public public function clear() : Void;
	
	/*
	* XSGrammarPoolContainer methods
	*/
	@:overload @:public override public function getGrammarPool() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	@:overload @:public override public function isFullyComposed() : Bool;
	
	
}
