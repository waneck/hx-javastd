package sun.management;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class RuntimeImpl implements java.lang.management.RuntimeMXBean
{
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getManagementSpecVersion() : String;
	
	@:overload @:public public function getVmName() : String;
	
	@:overload @:public public function getVmVendor() : String;
	
	@:overload @:public public function getVmVersion() : String;
	
	@:overload @:public public function getSpecName() : String;
	
	@:overload @:public public function getSpecVendor() : String;
	
	@:overload @:public public function getSpecVersion() : String;
	
	@:overload @:public public function getClassPath() : String;
	
	@:overload @:public public function getLibraryPath() : String;
	
	@:overload @:public public function getBootClassPath() : String;
	
	@:overload @:public public function getInputArguments() : java.util.List<String>;
	
	@:overload @:public public function getUptime() : haxe.Int64;
	
	@:overload @:public public function getStartTime() : haxe.Int64;
	
	@:overload @:public public function isBootClassPathSupported() : Bool;
	
	@:overload @:public public function getSystemProperties() : java.util.Map<String, String>;
	
	@:overload @:public public function getObjectName() : javax.management.ObjectName;
	
	
}
