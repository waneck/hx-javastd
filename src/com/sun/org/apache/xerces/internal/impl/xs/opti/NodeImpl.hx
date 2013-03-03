package com.sun.org.apache.xerces.internal.impl.xs.opti;
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
/**
* @xerces.internal
*
* @author Rahul Srivastava, Sun Microsystems Inc.
*
*/
extern class NodeImpl extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultNode
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(prefix : String, localpart : String, rawname : String, uri : String, nodeType : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function getNodeName() : String;
	
	@:overload @:public override public function getNamespaceURI() : String;
	
	@:overload @:public override public function getPrefix() : String;
	
	@:overload @:public override public function getLocalName() : String;
	
	@:overload @:public override public function getNodeType() : java.StdTypes.Int16;
	
	@:overload @:public public function setReadOnly(hide : Bool, deep : Bool) : Void;
	
	@:overload @:public public function getReadOnly() : Bool;
	
	
}
