package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CDRInputStream_1_1 extends com.sun.corba.se.impl.encoding.CDRInputStream_1_0
{
	private var fragmentOffset : Int;
	
	@:overload override public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload override public function dup() : com.sun.corba.se.impl.encoding.CDRInputStreamBase;
	
	@:overload override private function get_offset() : Int;
	
	@:overload override private function alignAndCheck(align : Int, n : Int) : Void;
	
	@:overload override private function grow(align : Int, n : Int) : Void;
	
	@:overload override public function createStreamMemento() : Dynamic;
	
	@:overload override public function restoreInternalState(streamMemento : Dynamic) : Void;
	
	@:overload override public function read_wchar() : java.StdTypes.Char16;
	
	@:overload override public function read_wstring() : String;
	
	
}
@:native('com$sun$corba$se$impl$encoding$CDRInputStream_1_1$FragmentableStreamMemento') @:internal extern class CDRInputStream_1_1_FragmentableStreamMemento extends StreamMemento
{
	@:overload public function new() : Void;
	
	
}
