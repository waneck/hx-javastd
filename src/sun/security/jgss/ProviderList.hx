package sun.security.jgss;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ProviderList
{
	@:public @:static @:final public static var DEFAULT_MECH_OID(default, null) : org.ietf.jgss.Oid;
	
	@:overload @:public public function new(caller : sun.security.jgss.GSSCaller, useNative : Bool) : Void;
	
	@:overload @:synchronized @:public public function getMechFactory(mechOid : org.ietf.jgss.Oid) : sun.security.jgss.spi.MechanismFactory;
	
	/**
	* Obtains a MechanismFactory for a given mechanism. If the
	* specified provider is not null, then the impl from the
	* provider is used. Otherwise, the most preferred impl based
	* on the configured preferences is used.
	* @param mechOid the oid of the desired mechanism
	* @return a MechanismFactory for the desired mechanism.
	* @throws GSSException when the specified provider does not
	* support the desired mechanism, or when no provider supports
	* the desired mechanism.
	*/
	@:overload @:synchronized @:public public function getMechFactory(mechOid : org.ietf.jgss.Oid, p : java.security.Provider) : sun.security.jgss.spi.MechanismFactory;
	
	@:overload @:public public function getMechs() : java.NativeArray<org.ietf.jgss.Oid>;
	
	@:overload @:synchronized @:public public function addProviderAtFront(p : java.security.Provider, mechOid : org.ietf.jgss.Oid) : Void;
	
	@:overload @:synchronized @:public public function addProviderAtEnd(p : java.security.Provider, mechOid : org.ietf.jgss.Oid) : Void;
	
	
}
/**
* Stores a provider and a mechanism oid indicating that the
* provider should be used for the mechanism. If the mechanism
* Oid is null, then it indicates that this preference holds for
* any mechanism.<p>
*
* The ProviderList maintains an ordered list of
* PreferencesEntry's and iterates thru them as it tries to
* instantiate MechanismFactory's.
*/
@:native('sun$security$jgss$ProviderList$PreferencesEntry') @:internal extern class ProviderList_PreferencesEntry
{
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
