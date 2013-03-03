package sun.security.x509;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
* @author      Ram Marti
*/
extern class AccessDescription
{
	@:public @:static @:final public static var Ad_OCSP_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var Ad_CAISSUERS_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var Ad_TIMESTAMPING_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	@:public @:static @:final public static var Ad_CAREPOSITORY_Id(default, null) : sun.security.util.ObjectIdentifier;
	
	@:overload @:public public function new(accessMethod : sun.security.util.ObjectIdentifier, accessLocation : sun.security.x509.GeneralName) : Void;
	
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	@:overload @:public public function getAccessMethod() : sun.security.util.ObjectIdentifier;
	
	@:overload @:public public function getAccessLocation() : sun.security.x509.GeneralName;
	
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
