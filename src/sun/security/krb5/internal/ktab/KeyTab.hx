package sun.security.krb5.internal.ktab;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyTab implements sun.security.krb5.internal.ktab.KeyTabConstants
{
	/**
	* Gets a KeyTab object.
	* @param s the key tab file name.
	* @return the KeyTab object, never null.
	*/
	@:overload public static function getInstance(s : String) : sun.security.krb5.internal.ktab.KeyTab;
	
	/**
	* Gets a KeyTab object.
	* @param file the key tab file.
	* @return the KeyTab object, never null.
	*/
	@:overload public static function getInstance(file : java.io.File) : sun.security.krb5.internal.ktab.KeyTab;
	
	/**
	* Gets the default KeyTab object.
	* @return the KeyTab object, never null.
	*/
	@:overload public static function getInstance() : sun.security.krb5.internal.ktab.KeyTab;
	
	@:overload public function isMissing() : Bool;
	
	@:overload public function isValid() : Bool;
	
	/**
	* Reads all keys for a service from the keytab file that have
	* etypes that have been configured for use. If there are multiple
	* keys with same etype, the one with the highest kvno is returned.
	* @param service the PrincipalName of the requested service
	* @return an array containing all the service keys, never null
	*/
	@:overload public function readServiceKeys(service : sun.security.krb5.PrincipalName) : java.NativeArray<sun.security.krb5.EncryptionKey>;
	
	/**
	* Searches for the service entry in the keytab file.
	* The etype of the key must be one that has been configured
	* to be used.
	* @param service the PrincipalName of the requested service.
	* @return true if the entry is found, otherwise, return false.
	*/
	@:overload public function findServiceEntry(service : sun.security.krb5.PrincipalName) : Bool;
	
	@:overload public function tabName() : String;
	
	/**
	* Adds a new entry in the key table.
	* @param service the service which will have a new entry in the key table.
	* @param psswd the password which generates the key.
	* @param kvno the kvno to use, -1 means automatic increasing
	* @param append false if entries with old kvno would be removed.
	* Note: if kvno is not -1, entries with the same kvno are always removed
	*/
	@:overload public function addEntry(service : sun.security.krb5.PrincipalName, psswd : java.NativeArray<java.StdTypes.Char16>, kvno : Int, append : Bool) : Void;
	
	/**
	* Gets the list of service entries in key table.
	* @return array of <code>KeyTabEntry</code>.
	*/
	@:overload public function getEntries() : java.NativeArray<sun.security.krb5.internal.ktab.KeyTabEntry>;
	
	/**
	* Creates a new default key table.
	*/
	@:overload @:synchronized public static function create() : sun.security.krb5.internal.ktab.KeyTab;
	
	/**
	* Creates a new default key table.
	*/
	@:overload @:synchronized public static function create(name : String) : sun.security.krb5.internal.ktab.KeyTab;
	
	/**
	* Saves the file at the directory.
	*/
	@:overload @:synchronized public function save() : Void;
	
	/**
	* Removes entries from the key table.
	* @param service the service <code>PrincipalName</code>.
	* @param etype the etype to match, remove all if -1
	* @param kvno what kvno to remove, -1 for all, -2 for old
	* @return the number of entries deleted
	*/
	@:overload public function deleteEntries(service : sun.security.krb5.PrincipalName, etype : Int, kvno : Int) : Int;
	
	/**
	* Creates key table file version.
	* @param file the key table file.
	* @exception IOException.
	*/
	@:overload @:synchronized public function createVersion(file : java.io.File) : Void;
	
	
}
