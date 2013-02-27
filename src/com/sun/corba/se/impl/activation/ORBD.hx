package com.sun.corba.se.impl.activation;
/*
*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
*
*/
extern class ORBD
{
	@:overload private function initializeBootNaming(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload private function createORB(args : java.NativeArray<String>) : com.sun.corba.se.spi.orb.ORB;
	
	/**
	* Ensure that the Db directory exists. If not, create the Db
	* and the log directory and return true. Otherwise return false.
	*/
	@:overload private function createSystemDirs(defaultDbDir : String) : Bool;
	
	private var dbDir : java.io.File;
	
	@:overload private function getDbDir() : java.io.File;
	
	@:overload private function getDbDirName() : String;
	
	@:overload private function startActivationObjects(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	private var locator : com.sun.corba.se.spi.activation.Locator;
	
	@:overload private function getLocator() : com.sun.corba.se.spi.activation.Locator;
	
	private var activator : com.sun.corba.se.spi.activation.Activator;
	
	@:overload private function getActivator() : com.sun.corba.se.spi.activation.Activator;
	
	private var repository : com.sun.corba.se.impl.activation.RepositoryImpl;
	
	@:overload private function getRepository() : com.sun.corba.se.impl.activation.RepositoryImpl;
	
	/**
	* Go through the list of ORB Servers and initialize and start
	* them up.
	*/
	@:overload private function installOrbServers(repository : com.sun.corba.se.impl.activation.RepositoryImpl, activator : com.sun.corba.se.spi.activation.Activator) : Void;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
