package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PresentationManagerImpl implements com.sun.corba.se.spi.presentation.rmi.PresentationManager
{
	@:overload public function new(useDynamicStubs : Bool) : Void;
	
	@:overload @:synchronized public function getDynamicMethodMarshaller(method : java.lang.reflect.Method) : com.sun.corba.se.spi.presentation.rmi.DynamicMethodMarshaller;
	
	@:overload @:synchronized public function getClassData(cls : Class<Dynamic>) : ClassData;
	
	@:overload public function getStubFactoryFactory(isDynamic : Bool) : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory;
	
	@:overload public function setStubFactoryFactory(isDynamic : Bool, sff : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_StubFactoryFactory) : Void;
	
	@:overload public function getTie() : javax.rmi.CORBA.Tie;
	
	@:overload public function useDynamicStubs() : Bool;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$PresentationManagerImpl$ClassDataImpl') @:internal extern class PresentationManagerImpl_ClassDataImpl implements com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_ClassData
{
	@:overload public function new(cls : Class<Dynamic>) : Void;
	
	@:overload public function getMyClass() : Class<Dynamic>;
	
	@:overload public function getIDLNameTranslator() : com.sun.corba.se.spi.presentation.rmi.IDLNameTranslator;
	
	@:overload public function getTypeIds() : java.NativeArray<String>;
	
	@:overload public function getInvocationHandlerFactory() : com.sun.corba.se.spi.orbutil.proxy.InvocationHandlerFactory;
	
	@:overload public function getDictionary() : java.util.Map<Dynamic, Dynamic>;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$PresentationManagerImpl$NodeImpl') @:internal extern class PresentationManagerImpl_NodeImpl implements com.sun.corba.se.impl.orbutil.graph.Node
{
	@:overload public function getInterface() : Class<Dynamic>;
	
	@:overload public function new(interf : Class<Dynamic>) : Void;
	
	@:overload public function getTypeId() : String;
	
	@:overload public function getChildren() : java.util.Set<Dynamic>;
	
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
