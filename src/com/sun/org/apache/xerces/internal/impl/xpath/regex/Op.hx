package com.sun.org.apache.xerces.internal.impl.xpath.regex;
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
@:internal extern class Op
{
	@:overload private function new(type : Int) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$CharOp') @:internal extern class Op_CharOp extends Op
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$UnionOp') @:internal extern class Op_UnionOp extends Op
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$ChildOp') @:internal extern class Op_ChildOp extends Op
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$ModifierOp') @:internal extern class Op_ModifierOp extends Op_ChildOp
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$RangeOp') @:internal extern class Op_RangeOp extends Op
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$StringOp') @:internal extern class Op_StringOp extends Op
{
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xpath$regex$Op$ConditionOp') @:internal extern class Op_ConditionOp extends Op
{
	
}
