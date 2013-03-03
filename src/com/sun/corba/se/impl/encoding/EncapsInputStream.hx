package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class EncapsInputStream extends com.sun.corba.se.impl.encoding.CDRInputStream
{
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, buf : java.NativeArray<java.StdTypes.Int8>, size : Int, littleEndian : Bool, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, byteBuffer : java.nio.ByteBuffer, size : Int, littleEndian : Bool, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, data : java.NativeArray<java.StdTypes.Int8>, size : Int) : Void;
	
	@:overload @:public public function new(eis : com.sun.corba.se.impl.encoding.EncapsInputStream) : Void;
	
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, data : java.NativeArray<java.StdTypes.Int8>, size : Int, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	/**
	* Full constructor with a CodeBase parameter useful for
	* unmarshaling RMI-IIOP valuetypes (technically against the
	* intention of an encapsulation, but necessary due to OMG
	* issue 4795.  Used by ServiceContexts.
	*/
	@:overload @:public public function new(orb : org.omg.CORBA.ORB, data : java.NativeArray<java.StdTypes.Int8>, size : Int, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, codeBase : com.sun.org.omg.SendingContext.CodeBase) : Void;
	
	@:overload @:public override public function dup() : com.sun.corba.se.impl.encoding.CDRInputStream;
	
	@:overload @:protected override private function createCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:protected override private function createWCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:public override public function getCodeBase() : com.sun.org.omg.SendingContext.CodeBase;
	
	
}
