package sun.security.jgss.wrapper;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* JGSS plugin for generic mechanisms provided through native GSS framework.
*
* @author Valerie Peng
*/
extern class NativeGSSFactory implements sun.security.jgss.spi.MechanismFactory
{
	@:overload @:public public function new(caller : sun.security.jgss.GSSCaller) : Void;
	
	@:overload @:public public function setMech(mech : org.ietf.jgss.Oid) : Void;
	
	@:overload @:public public function getNameElement(nameStr : String, nameType : org.ietf.jgss.Oid) : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload @:public public function getNameElement(name : java.NativeArray<java.StdTypes.Int8>, nameType : org.ietf.jgss.Oid) : sun.security.jgss.spi.GSSNameSpi;
	
	@:overload @:public public function getCredentialElement(name : sun.security.jgss.spi.GSSNameSpi, initLifetime : Int, acceptLifetime : Int, usage : Int) : sun.security.jgss.spi.GSSCredentialSpi;
	
	@:overload @:public public function getMechanismContext(peer : sun.security.jgss.spi.GSSNameSpi, myCred : sun.security.jgss.spi.GSSCredentialSpi, lifetime : Int) : sun.security.jgss.spi.GSSContextSpi;
	
	@:overload @:public public function getMechanismContext(myCred : sun.security.jgss.spi.GSSCredentialSpi) : sun.security.jgss.spi.GSSContextSpi;
	
	@:overload @:public public function getMechanismContext(exportedContext : java.NativeArray<java.StdTypes.Int8>) : sun.security.jgss.spi.GSSContextSpi;
	
	@:overload @:public @:final public function getMechanismOid() : org.ietf.jgss.Oid;
	
	@:overload @:public public function getProvider() : java.security.Provider;
	
	@:overload @:public public function getNameTypes() : java.NativeArray<org.ietf.jgss.Oid>;
	
	
}
