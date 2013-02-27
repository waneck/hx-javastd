package com.sun.beans.finder;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This is utility class that provides basic functionality
* to find an auxiliary class for a JavaBean specified by its type.
*
* @since 1.7
*
* @author Sergey A. Malenkov
*/
@:require(java7) @:internal extern class InstanceFinder<T>
{
	@:overload public function getPackages() : java.NativeArray<String>;
	
	@:overload public function setPackages(packages : java.NativeArray<String>) : Void;
	
	@:overload public function find(type : Class<Dynamic>) : T;
	
	@:overload private function instantiate(type : Class<Dynamic>, name : String) : T;
	
	@:overload private function instantiate(type : Class<Dynamic>, prefix : String, name : String) : T;
	
	
}
