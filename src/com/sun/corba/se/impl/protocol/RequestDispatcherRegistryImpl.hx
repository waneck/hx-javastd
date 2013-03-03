package com.sun.corba.se.impl.protocol;
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
extern class RequestDispatcherRegistryImpl implements com.sun.corba.se.spi.protocol.RequestDispatcherRegistry
{
	@:protected private var defaultId : Int;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, defaultId : Int) : Void;
	
	@:overload @:public @:synchronized public function registerClientRequestDispatcher(csc : com.sun.corba.se.pept.protocol.ClientRequestDispatcher, scid : Int) : Void;
	
	@:overload @:public @:synchronized public function registerLocalClientRequestDispatcherFactory(csc : com.sun.corba.se.spi.protocol.LocalClientRequestDispatcherFactory, scid : Int) : Void;
	
	@:overload @:public @:synchronized public function registerServerRequestDispatcher(ssc : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher, scid : Int) : Void;
	
	@:overload @:public @:synchronized public function registerServerRequestDispatcher(scc : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher, name : String) : Void;
	
	@:overload @:public @:synchronized public function registerObjectAdapterFactory(oaf : com.sun.corba.se.spi.oa.ObjectAdapterFactory, scid : Int) : Void;
	
	@:overload @:public public function getServerRequestDispatcher(scid : Int) : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher;
	
	@:overload @:public public function getServerRequestDispatcher(name : String) : com.sun.corba.se.spi.protocol.CorbaServerRequestDispatcher;
	
	@:overload @:public public function getLocalClientRequestDispatcherFactory(scid : Int) : com.sun.corba.se.spi.protocol.LocalClientRequestDispatcherFactory;
	
	@:overload @:public public function getClientRequestDispatcher(scid : Int) : com.sun.corba.se.pept.protocol.ClientRequestDispatcher;
	
	@:overload @:public public function getObjectAdapterFactory(scid : Int) : com.sun.corba.se.spi.oa.ObjectAdapterFactory;
	
	@:overload @:public public function getObjectAdapterFactories() : java.util.Set<Dynamic>;
	
	
}
