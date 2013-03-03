package com.sun.xml.internal.org.jvnet.mimepull;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MIMEConfig
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setParseEagerly(parseEagerly : Bool) : Void;
	
	/**
	* If the attachment is greater than the threshold, it is
	* written to the disk.
	*
	* @param memoryThreshold no of bytes per attachment
	*        if -1, then the whole attachment is kept in memory
	*/
	@:overload @:public public function setMemoryThreshold(memoryThreshold : haxe.Int64) : Void;
	
	/**
	* @param dir
	*/
	@:overload @:public public function setDir(dir : String) : Void;
	
	/**
	* Validates if it can create temporary files. Otherwise, it stores
	* attachment contents in memory.
	*/
	@:overload @:public public function validate() : Void;
	
	
}
