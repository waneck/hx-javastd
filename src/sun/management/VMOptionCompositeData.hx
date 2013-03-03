package sun.management;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class VMOptionCompositeData extends sun.management.LazyCompositeData
{
	@:overload @:public public function getVMOption() : com.sun.management.VMOption;
	
	@:overload @:public @:static public static function toCompositeData(option : com.sun.management.VMOption) : javax.management.openmbean.CompositeData;
	
	@:overload @:protected override private function getCompositeData() : javax.management.openmbean.CompositeData;
	
	@:overload @:public @:static public static function getName(cd : javax.management.openmbean.CompositeData) : String;
	
	@:overload @:public @:static public static function getValue(cd : javax.management.openmbean.CompositeData) : String;
	
	@:overload @:public @:static public static function getOrigin(cd : javax.management.openmbean.CompositeData) : com.sun.management.VMOption.VMOption_Origin;
	
	@:overload @:public @:static public static function isWriteable(cd : javax.management.openmbean.CompositeData) : Bool;
	
	/** Validate if the input CompositeData has the expected
	* CompositeType (i.e. contain all attributes with expected
	* names and types).
	*/
	@:overload @:public @:static public static function validateCompositeData(cd : javax.management.openmbean.CompositeData) : Void;
	
	
}
