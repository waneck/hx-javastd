package com.sun.xml.internal.ws.client.sei;
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
@:internal extern class ValueSetter
{
	
}
@:native('com$sun$xml$internal$ws$client$sei$ValueSetter$ReturnValue') @:internal extern class ValueSetter_ReturnValue extends com.sun.xml.internal.ws.client.sei.ValueSetter
{
	
}
@:native('com$sun$xml$internal$ws$client$sei$ValueSetter$Param') @:internal extern class ValueSetter_Param extends com.sun.xml.internal.ws.client.sei.ValueSetter
{
	@:overload public function new(idx : Int) : Void;
	
	
}
/**
* Used in case of async invocation, where there is only one OUT parameter
*/
@:native('com$sun$xml$internal$ws$client$sei$ValueSetter$SingleValue') @:internal extern class ValueSetter_SingleValue extends com.sun.xml.internal.ws.client.sei.ValueSetter
{
	
}
/**
* OUT parameters are set in async bean
*/
@:native('com$sun$xml$internal$ws$client$sei$ValueSetter$AsyncBeanValueSetter') @:internal extern class ValueSetter_AsyncBeanValueSetter extends com.sun.xml.internal.ws.client.sei.ValueSetter
{
	
}
