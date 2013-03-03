package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
//// -D62023   <klr> New file to implement CORBA 2.4 RTF
extern class Helper24 extends com.sun.tools.corba.se.idl.toJavaPortable.Helper
{
	/**
	* Public zero-argument constructor.
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* Generate the heading, including package, imports, class statements,
	* and open curly.
	* <d62023> - don't implement ValueHelper, make non-boxed helpers abstract
	**/
	@:overload @:protected override private function writeHeading() : Void;
	
	/**
	* Generate the instance variables.
	* <d62023> - no helper instance except for boxed valuetypes.
	*          - move truncatable_ids to mapped class.
	**/
	@:overload @:protected override private function writeInstVars() : Void;
	
	/**
	* <d62023> generate members of BoxedValueHelper interface if boxed
	*
	* <d62023> Hook in here to write factory methods for non-boxed ValueTypes
	*          into Helper.
	**/
	@:overload @:protected override private function writeValueHelperInterface() : Void;
	
	/**
	*
	**/
	@:overload @:protected private function writeHelperFactories() : Void;
	
	/**
	* <d62023> Generate constructors only for boxed valuetype helpers
	*            All other helpers are abstract.
	**/
	@:overload @:protected override private function writeCtors() : Void;
	
	
}
