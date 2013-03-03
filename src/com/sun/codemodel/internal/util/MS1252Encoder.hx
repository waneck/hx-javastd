package com.sun.codemodel.internal.util;
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
/*
* @(#)$Id: MS1252Encoder.java,v 1.2 2005/09/10 19:07:33 kohsuke Exp $
*/
extern class MS1252Encoder extends com.sun.codemodel.internal.util.SingleByteEncoder
{
	/**
	* MS1252 encoder that corrects a bug in JDK1.4.2_01.
	*
	* <p>
	* See
	* http://www.microsoft.com/globaldev/reference/sbcs/1252.htm
	* for the normative definition.
	*
	* This code depends on Sun internal package, so we have to make sure
	* it won't be executed on other JDKs.
	*/
	@:overload @:public public function new(cs : java.nio.charset.Charset) : Void;
	
	@:overload @:public override public function canEncode(c : java.StdTypes.Char16) : Bool;
	
	
}
