package sun.security.krb5;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class Config
{
	/**
	* Gets an instance of Config class. One and only one instance (the
	* singleton) is returned.
	*
	* @exception KrbException if error occurs when constructing a Config
	* instance. Possible causes would be either of java.security.krb5.realm or
	* java.security.krb5.kdc not specified, error reading configuration file.
	*/
	@:overload @:synchronized public static function getInstance() : Config;
	
	/**
	* Refresh and reload the Configuration. This could involve,
	* for example reading the Configuration file again or getting
	* the java.security.krb5.* system properties again.
	*
	* @exception KrbException if error occurs when constructing a Config
	* instance. Possible causes would be either of java.security.krb5.realm or
	* java.security.krb5.kdc not specified, error reading configuration file.
	*/
	@:overload @:synchronized public static function refresh() : Void;
	
	/**
	* Gets the default int value for the specified name.
	* @param name the name.
	* @return the default Integer, null is returned if no such name and
	* value are found in configuration file, or error occurs when parsing
	* string to integer.
	*/
	@:overload public function getDefaultIntValue(name : String) : Int;
	
	/**
	* Gets the default int value for the specified name in the specified
	* section. <br>This method is quicker by using section name as the
	* search key.
	* @param name the name.
	* @param sectio the name string of the section.
	* @return the default Integer, null is returned if no such name and
	* value are found in configuration file, or error occurs when parsing
	* string to integer.
	*/
	@:overload public function getDefaultIntValue(name : String, section : String) : Int;
	
	/**
	* Gets the default string value for the specified name.
	* @param name the name.
	* @return the default value, null is returned if it cannot be found.
	*/
	@:overload public function getDefault(name : String) : String;
	
	/**
	* Gets the default string value for the specified name in the
	* specified section.
	* <br>This method is quicker by using the section name as the search key.
	* @param name the name.
	* @param section the name of the section.
	* @return the default value, null is returned if it cannot be found.
	*/
	@:overload public function getDefault(name : String, section : String) : String;
	
	/**
	* Gets the default boolean value for the specified name.
	* @param name the name.
	* @return the default boolean value, false is returned if it cannot be
	* found.
	*/
	@:overload public function getDefaultBooleanValue(name : String) : Bool;
	
	/**
	* Gets the default boolean value for the specified name in the
	* specified section.
	* <br>This method is quicker by using the section name as the search key.
	* @param name the name.
	* @param section the name of the section.
	* @return the default boolean value, false is returned if it cannot be
	* found.
	*/
	@:overload public function getDefaultBooleanValue(name : String, section : String) : Bool;
	
	/**
	* For testing purpose. This method lists all information being parsed from
	* the configuration file to the hashtable.
	*/
	@:overload public function listTable() : Void;
	
	/**
	* Returns the default encryption types.
	*
	*/
	@:overload public function defaultEtype(enctypes : String) : java.NativeArray<Int>;
	
	/*
	* This method converts the string representation of encryption type and
	* checksum type to int value that can be later used by EType and
	* Checksum classes.
	*/
	@:overload public function getType(input : String) : Int;
	
	/**
	* Resets the default kdc realm.
	* We do not need to synchronize these methods since assignments are atomic
	*
	* This method was useless. Kept here in case some class still calls it.
	*/
	@:overload public function resetDefaultRealm(realm : String) : Void;
	
	/**
	* Check to use addresses in tickets
	* use addresses if "no_addresses" or "noaddresses" is set to false
	*/
	@:overload public function useAddresses() : Bool;
	
	/**
	* Check if need to use DNS to locate Kerberos services
	*/
	@:overload public function useDNS(name : String) : Bool;
	
	/**
	* Check if need to use DNS to locate the KDC
	*/
	@:overload public function useDNS_KDC() : Bool;
	
	/*
	* Check if need to use DNS to locate the Realm
	*/
	@:overload public function useDNS_Realm() : Bool;
	
	/**
	* Gets default realm.
	* @throws KrbException where no realm can be located
	* @return the default realm, always non null
	*/
	@:overload public function getDefaultRealm() : String;
	
	/**
	* Returns a list of KDC's with each KDC separated by a space
	*
	* @param realm the realm for which the KDC list is desired
	* @throws KrbException if there's no way to find KDC for the realm
	* @return the list of KDCs separated by a space, always non null
	*/
	@:overload public function getKDCList(realm : String) : String;
	
	@:overload public function toString() : String;
	
	
}
@:native('sun$security$krb5$Config$FileExistsAction') @:internal extern class Config_FileExistsAction implements java.security.PrivilegedAction<Null<Bool>>
{
	@:overload public function new(fileName : String) : Void;
	
	@:overload public function run() : Null<Bool>;
	
	
}
