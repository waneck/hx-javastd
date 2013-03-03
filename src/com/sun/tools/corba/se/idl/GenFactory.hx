package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
* COMPONENT_NAME: idl.parser
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
/**
* To extend this compiler framework to generate something other than
* the default, this factory interface must be implemented and the name
* of it must be set in the main method (see idl.Compile).
* <p>
* The implementation of each method should be quite simple.  Take
* createAttributeGen, for instance.  If the interface AttributeGen is
* implemented by a class called MyAttributeGen, then createAttributeGen
* will be the following:
* <pre>
* public AttributeGen createAttributeGen ()
* {
*   return new MyAttributeGen ();
* }
* </pre>
* <p>
* If it is desired that a generator do nothing, it is not necessary to
* implement one which does nothing; you may simply write that particular
* create method so that it returns null.
* <p>
* Note that this class MUST have a public default constructor (one which
* takes no parameters).
**/
extern interface GenFactory
{
	@:overload @:public public function createAttributeGen() : com.sun.tools.corba.se.idl.AttributeGen;
	
	@:overload @:public public function createConstGen() : com.sun.tools.corba.se.idl.ConstGen;
	
	@:overload @:public public function createEnumGen() : com.sun.tools.corba.se.idl.EnumGen;
	
	@:overload @:public public function createExceptionGen() : com.sun.tools.corba.se.idl.ExceptionGen;
	
	@:overload @:public public function createForwardGen() : com.sun.tools.corba.se.idl.ForwardGen;
	
	@:overload @:public public function createForwardValueGen() : com.sun.tools.corba.se.idl.ForwardValueGen;
	
	@:overload @:public public function createIncludeGen() : com.sun.tools.corba.se.idl.IncludeGen;
	
	@:overload @:public public function createInterfaceGen() : com.sun.tools.corba.se.idl.InterfaceGen;
	
	@:overload @:public public function createValueGen() : com.sun.tools.corba.se.idl.ValueGen;
	
	@:overload @:public public function createValueBoxGen() : com.sun.tools.corba.se.idl.ValueBoxGen;
	
	@:overload @:public public function createMethodGen() : com.sun.tools.corba.se.idl.MethodGen;
	
	@:overload @:public public function createModuleGen() : com.sun.tools.corba.se.idl.ModuleGen;
	
	@:overload @:public public function createNativeGen() : com.sun.tools.corba.se.idl.NativeGen;
	
	@:overload @:public public function createParameterGen() : com.sun.tools.corba.se.idl.ParameterGen;
	
	@:overload @:public public function createPragmaGen() : com.sun.tools.corba.se.idl.PragmaGen;
	
	@:overload @:public public function createPrimitiveGen() : com.sun.tools.corba.se.idl.PrimitiveGen;
	
	@:overload @:public public function createSequenceGen() : com.sun.tools.corba.se.idl.SequenceGen;
	
	@:overload @:public public function createStringGen() : com.sun.tools.corba.se.idl.StringGen;
	
	@:overload @:public public function createStructGen() : com.sun.tools.corba.se.idl.StructGen;
	
	@:overload @:public public function createTypedefGen() : com.sun.tools.corba.se.idl.TypedefGen;
	
	@:overload @:public public function createUnionGen() : com.sun.tools.corba.se.idl.UnionGen;
	
	
}
