package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class POAPolicyMediatorImpl_R_UDS extends com.sun.corba.se.impl.oa.poa.POAPolicyMediatorBase_R
{
	@:overload private function internalGetServant(id : java.NativeArray<java.StdTypes.Int8>, operation : String) : Dynamic;
	
	@:overload public function etherealizeAll() : Void;
	
	@:overload public function getServantManager() : org.omg.PortableServer.ServantManager;
	
	@:overload public function setServantManager(servantManager : org.omg.PortableServer.ServantManager) : Void;
	
	@:overload public function getDefaultServant() : org.omg.PortableServer.Servant;
	
	@:overload public function setDefaultServant(servant : org.omg.PortableServer.Servant) : Void;
	
	@:overload public function idToServant(id : java.NativeArray<java.StdTypes.Int8>) : org.omg.PortableServer.Servant;
	
	
}
