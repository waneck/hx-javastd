package com.sun.tools.corba.se.idl;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Noop implements com.sun.tools.corba.se.idl.AttributeGen implements com.sun.tools.corba.se.idl.ConstGen implements com.sun.tools.corba.se.idl.EnumGen implements com.sun.tools.corba.se.idl.ExceptionGen implements com.sun.tools.corba.se.idl.ForwardGen implements com.sun.tools.corba.se.idl.ForwardValueGen implements com.sun.tools.corba.se.idl.IncludeGen implements com.sun.tools.corba.se.idl.InterfaceGen implements com.sun.tools.corba.se.idl.ValueGen implements com.sun.tools.corba.se.idl.ValueBoxGen implements com.sun.tools.corba.se.idl.MethodGen implements com.sun.tools.corba.se.idl.ModuleGen implements com.sun.tools.corba.se.idl.NativeGen implements com.sun.tools.corba.se.idl.ParameterGen implements com.sun.tools.corba.se.idl.PragmaGen implements com.sun.tools.corba.se.idl.PrimitiveGen implements com.sun.tools.corba.se.idl.SequenceGen implements com.sun.tools.corba.se.idl.StringGen implements com.sun.tools.corba.se.idl.StructGen implements com.sun.tools.corba.se.idl.TypedefGen implements com.sun.tools.corba.se.idl.UnionGen implements com.sun.tools.corba.se.idl.GenFactory
{
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.AttributeEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ConstEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.EnumEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ExceptionEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ForwardEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ForwardValueEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.IncludeEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.InterfaceEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ValueEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ValueBoxEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.MethodEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ModuleEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.ParameterEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.PragmaEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.PrimitiveEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.SequenceEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.StringEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.StructEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.TypedefEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.UnionEntry, stream : java.io.PrintWriter) : Void;
	
	@:overload @:public public function generate(symbolTable : java.util.Hashtable<Dynamic, Dynamic>, entry : com.sun.tools.corba.se.idl.NativeEntry, stream : java.io.PrintWriter) : Void;
	
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
