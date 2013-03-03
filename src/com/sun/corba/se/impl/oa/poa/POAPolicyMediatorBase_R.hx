package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class POAPolicyMediatorBase_R extends com.sun.corba.se.impl.oa.poa.POAPolicyMediatorBase
{
	@:protected private var activeObjectMap : com.sun.corba.se.impl.oa.poa.ActiveObjectMap;
	
	@:overload @:public override public function returnServant() : Void;
	
	@:overload @:public override public function clearAOM() : Void;
	
	@:overload @:protected private function internalKeyToServant(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : org.omg.PortableServer.Servant;
	
	@:overload @:protected private function internalIdToServant(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	@:overload @:protected private function activateServant(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key, entry : com.sun.corba.se.impl.oa.poa.AOMEntry, servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload @:public @:final override public function activateObject(id : java.NativeArray<java.StdTypes.Int8>, servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload @:public override public function deactivateObject(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	@:overload @:protected private function deactivateHelper(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key, entry : com.sun.corba.se.impl.oa.poa.AOMEntry, s : org.omg.PortableServer.Servant) : Void;
	
	@:overload @:public public function deactivateObject(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : org.omg.PortableServer.Servant;
	
	@:overload @:public override public function servantToId(servant : org.omg.PortableServer.Servant) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
