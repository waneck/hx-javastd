package com.sun.tools.javah;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeSignature
{
	@:overload @:public public function new(elems : javax.lang.model.util.Elements) : Void;
	
	/*
	* Returns the type signature of a field according to JVM specs
	*/
	@:overload @:public public function getTypeSignature(javasignature : String) : String;
	
	/*
	* Returns the type signature of a method according to JVM specs
	*/
	@:overload @:public public function getTypeSignature(javasignature : String, returnType : javax.lang.model.type.TypeMirror) : String;
	
	
}
/**
* Returns internal type signature.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*
* @author Sucheta Dambalkar
*/
@:native('com$sun$tools$javah$TypeSignature$SignatureException') @:internal extern class TypeSignature_SignatureException extends java.lang.Exception
{
	
}
