package com.sun.org.apache.xerces.internal.impl.xs.models;
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
extern class XSCMUniOp extends com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode
{
	/**
	*
	* Content model Uni-Op node.
	*
	* @xerces.internal
	*
	* @author Neil Graham, IBM
	* @version $$
	*/
	@:overload @:public public function new(type : Int, childNode : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode) : Void;
	
	@:overload @:public override public function isNullable() : Bool;
	
	@:overload @:protected override private function calcFirstPos(toSet : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	@:overload @:protected override private function calcLastPos(toSet : com.sun.org.apache.xerces.internal.impl.dtd.models.CMStateSet) : Void;
	
	/**
	* Allows the user to set arbitrary data on this content model
	* node. This is used by the a{n,m} optimization that runs
	* in constant space. For convenience, set user data in
	* children node too.
	*/
	@:overload @:public override public function setUserData(userData : Dynamic) : Void;
	
	
}
