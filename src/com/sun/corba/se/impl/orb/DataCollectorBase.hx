package com.sun.corba.se.impl.orb;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class DataCollectorBase implements com.sun.corba.se.spi.orb.DataCollector
{
	private var localHostName : String;
	
	private var configurationHostName : String;
	
	@:overload public function new(props : java.util.Properties, localHostName : String, configurationHostName : String) : Void;
	
	@:overload public function initialHostIsLocal() : Bool;
	
	@:overload public function setParser(parser : com.sun.corba.se.spi.orb.PropertyParser) : Void;
	
	@:overload public function getProperties() : java.util.Properties;
	
	@:overload @:abstract public function isApplet() : Bool;
	
	@:overload @:abstract private function collect() : Void;
	
	@:overload private function checkPropertyDefaults() : Void;
	
	@:overload private function findPropertiesFromArgs(params : java.NativeArray<String>) : Void;
	
	@:overload private function findPropertiesFromApplet(app : java.applet.Applet) : Void;
	
	@:overload private function findPropertiesFromFile() : Void;
	
	@:overload private function findPropertiesFromProperties() : Void;
	
	@:overload private function findPropertiesFromSystem() : Void;
	
	
}
@:internal extern class PropertyCallback
{
	@:overload @:abstract public function get(name : String) : String;
	
	
}
