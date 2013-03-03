package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* COMPONENT_NAME: idl.toJava
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -09/23/98 <klr> Ported -td option to change output directory
//// -09/23/98 <klr> Ported -m option to generate make dependencies
//// -F46082.51<daz> Transferred -m, -mmin, mall, -mdepend options to com.sun.tools.corba.se.idl.toJava
//// since these are IBM-specific (see f46838); cleaned-out dead code.
//// -D57482   <klr> Added method setDefaultEmitter so could be overridden.
//// -F60858.1<daz> Set corba level to 2.3.
extern class Arguments extends com.sun.tools.corba.se.idl.Arguments
{
	/**
	* Public, zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	*
	**/
	@:overload @:protected override private function parseOtherArgs(args : java.NativeArray<String>, properties : java.util.Properties) : Void;
	
	/**
	*
	**/
	@:overload @:protected private function collectUnknownArg(args : java.NativeArray<String>, i : Int, unknownArgs : java.util.Vector<Dynamic>) : Int;
	
	/**
	*
	**/
	@:overload @:protected private function packageFromProps(props : java.util.Properties) : Void;
	
	/**
	* d57482 <klr> method added so default emitter check could be overriden.
	**/
	@:overload @:protected private function setDefaultEmitter() : Void;
	
	@:overload @:protected private function setNameModifiers(skeletonPattern : String, tiePattern : String) : Void;
	
	@:public public var packages : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:public public var separator : String;
	
	@:public @:static @:final public static var None(default, null) : Int;
	
	@:public public var emit : Int;
	
	@:public public var TIEServer : Bool;
	
	@:public public var POAServer : Bool;
	
	@:public public var LocalOptimization : Bool;
	
	@:public public var skeletonNameModifier : com.sun.tools.corba.se.idl.toJavaPortable.NameModifier;
	
	@:public public var tieNameModifier : com.sun.tools.corba.se.idl.toJavaPortable.NameModifier;
	
	@:public public var packageTranslation : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:public public var targetDir : String;
	
	
}
