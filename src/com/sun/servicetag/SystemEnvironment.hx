package com.sun.servicetag;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
//// This class is a copy of the com.sun.scn.servicetags.SystemEnvironment
//// class from the Sun Connection source.
////
//// The Service Tags team maintains the latest version of the implementation
//// for system environment data collection.  JDK will include a copy of
//// the most recent released version for a JDK release. We rename
//// the package to com.sun.servicetag so that the Sun Connection
//// product always uses the latest version from the com.sun.scn.servicetags
//// package. JDK and users of the com.sun.servicetag API
//// (e.g. NetBeans and SunStudio) will use the version in JDK.
extern class SystemEnvironment
{
	@:overload @:synchronized public static function getSystemEnvironment() : com.sun.servicetag.SystemEnvironment;
	
	/**
	* Sets the hostname.
	* @param hostname The hostname to set.
	*/
	@:overload public function setHostname(hostname : String) : Void;
	
	/**
	* Sets the OS name.
	* @param osName The osName to set.
	*/
	@:overload public function setOsName(osName : String) : Void;
	
	/**
	* Sets the OS version.
	* @param osVersion The osVersion to set.
	*/
	@:overload public function setOsVersion(osVersion : String) : Void;
	
	/**
	* Sets the OS architecture.
	* @param osArchitecture The osArchitecture to set.
	*/
	@:overload public function setOsArchitecture(osArchitecture : String) : Void;
	
	/**
	* Sets the system model.
	* @param systemModel The systemModel to set.
	*/
	@:overload public function setSystemModel(systemModel : String) : Void;
	
	/**
	* Sets the system manufacturer.
	* @param systemManufacturer The systemManufacturer to set.
	*/
	@:overload public function setSystemManufacturer(systemManufacturer : String) : Void;
	
	/**
	* Sets the cpu manufacturer.
	* @param cpuManufacturer The cpuManufacturer to set.
	*/
	@:overload public function setCpuManufacturer(cpuManufacturer : String) : Void;
	
	/**
	* Sets the serial number.
	* @param serialNumber The serialNumber to set.
	*/
	@:overload public function setSerialNumber(serialNumber : String) : Void;
	
	/**
	* Sets the hostid.  Truncates to a max length of 16 chars.
	* @param hostId The hostid to set.
	*/
	@:overload public function setHostId(hostId : String) : Void;
	
	/**
	* Returns the hostname.
	* @return The hostname.
	*/
	@:overload public function getHostname() : String;
	
	/**
	* Returns the osName.
	* @return The osName.
	*/
	@:overload public function getOsName() : String;
	
	/**
	* Returns the osVersion.
	* @return The osVersion.
	*/
	@:overload public function getOsVersion() : String;
	
	/**
	* Returns the osArchitecture.
	* @return The osArchitecture.
	*/
	@:overload public function getOsArchitecture() : String;
	
	/**
	* Returns the systemModel.
	* @return The systemModel.
	*/
	@:overload public function getSystemModel() : String;
	
	/**
	* Returns the systemManufacturer.
	* @return The systemManufacturer.
	*/
	@:overload public function getSystemManufacturer() : String;
	
	/**
	* Returns the serialNumber.
	* @return The serialNumber.
	*/
	@:overload public function getSerialNumber() : String;
	
	/**
	* Returns the hostId.
	* @return The hostId.
	*/
	@:overload public function getHostId() : String;
	
	/**
	* Returns the cpuManufacturer.
	* @return The cpuManufacturer.
	*/
	@:overload public function getCpuManufacturer() : String;
	
	@:overload private function getCommandOutput(command : java.NativeArray<String>) : String;
	
	@:overload private function getFileContent(filename : String) : String;
	
	
}
