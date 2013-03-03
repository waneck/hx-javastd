package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSInputSource extends com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource
{
	@:overload @:public public function new(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>) : Void;
	
	@:overload @:public public function new(component : java.NativeArray<com.sun.org.apache.xerces.internal.xs.XSObject>) : Void;
	
	@:overload @:public public function getGrammars() : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>;
	
	@:overload @:public public function setGrammars(grammars : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>) : Void;
	
	@:overload @:public public function getComponents() : java.NativeArray<com.sun.org.apache.xerces.internal.xs.XSObject>;
	
	@:overload @:public public function setComponents(components : java.NativeArray<com.sun.org.apache.xerces.internal.xs.XSObject>) : Void;
	
	
}
