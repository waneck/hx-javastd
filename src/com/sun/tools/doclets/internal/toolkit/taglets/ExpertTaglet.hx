package com.sun.tools.doclets.internal.toolkit.taglets;
/*
* Copyright (c) 2006, 2012 Oracle and/or its affiliates. All rights reserved.
* ORACLE PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
*/
extern class ExpertTaglet implements com.sun.tools.doclets.Taglet
{
	@:overload public function inField() : Bool;
	
	@:overload public function inConstructor() : Bool;
	
	@:overload public function inMethod() : Bool;
	
	@:overload public function inOverview() : Bool;
	
	@:overload public function inPackage() : Bool;
	
	@:overload public function inType() : Bool;
	
	@:overload public function isInlineTag() : Bool;
	
	@:overload public function getName() : String;
	
	@:overload public static function register(map : java.util.Map<String, com.sun.tools.doclets.Taglet>) : Void;
	
	@:overload public function toString(tag : com.sun.javadoc.Tag) : String;
	
	@:overload public function toString(tags : java.NativeArray<com.sun.javadoc.Tag>) : String;
	
	
}
