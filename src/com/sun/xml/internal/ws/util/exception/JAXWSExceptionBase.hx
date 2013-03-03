package com.sun.xml.internal.ws.util.exception;
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
extern class JAXWSExceptionBase extends javax.xml.ws.WebServiceException implements com.sun.xml.internal.ws.util.localization.Localizable
{
	/**
	* @deprecated
	*      Should use the localizable constructor instead.
	*/
	@:overload @:protected private function new(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:protected private function new(message : String) : Void;
	
	/**
	* Creates a new exception that wraps the specified exception.
	*/
	@:overload @:protected private function new(throwable : java.lang.Throwable) : Void;
	
	@:overload @:protected private function new(msg : com.sun.xml.internal.ws.util.localization.Localizable) : Void;
	
	@:overload @:protected private function new(msg : com.sun.xml.internal.ws.util.localization.Localizable, cause : java.lang.Throwable) : Void;
	
	@:overload @:public override public function getMessage() : String;
	
	/**
	* Gets the default resource bundle name for this kind of exception.
	* Used for {@link #JAXWSExceptionBase(String, Object[])}.
	*/
	@:overload @:protected @:abstract private function getDefaultResourceBundleName() : String;
	
	@:overload @:public @:final public function getKey() : String;
	
	@:overload @:public @:final public function getArguments() : java.NativeArray<Dynamic>;
	
	@:overload @:public @:final public function getResourceBundleName() : String;
	
	
}
