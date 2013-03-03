package com.sun.xml.internal.ws.api.model;
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
/**
* Denotes the binding of a parameter.
*
* <p>
* This is somewhat like an enumeration (but it is <b>NOT</b> an enumeration.)
*
* <p>
* The possible values are
* BODY, HEADER, UNBOUND, and ATTACHMENT. BODY, HEADER, and UNBOUND
* has a singleton semantics, but there are multiple ATTACHMENT instances
* as it carries additional MIME type parameter.
*
* <p>
* So don't use '==' for testing the equality.
*/
extern class ParameterBinding
{
	/**
	* Singleton instance that represents 'BODY'
	*/
	@:public @:static @:final public static var BODY(default, null) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Singleton instance that represents 'HEADER'
	*/
	@:public @:static @:final public static var HEADER(default, null) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Singleton instance that represents 'UNBOUND',
	* meaning the parameter doesn't have a representation in a SOAP message.
	*/
	@:public @:static @:final public static var UNBOUND(default, null) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Creates an instance that represents the attachment
	* with a given MIME type.
	*
	* <p>
	* TODO: shall we consider givint the singleton semantics by using
	* a cache? It's more elegant to do so, but
	* no where in JAX-WS RI two {@link ParameterBinding}s are compared today,
	*/
	@:overload @:public @:static public static function createAttachment(mimeType : String) : com.sun.xml.internal.ws.api.model.ParameterBinding;
	
	/**
	* Represents the kind of {@link ParameterBinding}.
	* Always non-null.
	*/
	@:public @:final public var kind(default, null) : com.sun.xml.internal.ws.api.model.ParameterBinding.ParameterBinding_Kind;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Returns the MIME type associated with this binding.
	*
	* @throws IllegalStateException
	*      if this binding doesn't represent an attachment.
	*      IOW, if {@link #isAttachment()} returns false.
	* @return
	*      Can be null, if the MIME type is not known.
	*/
	@:overload @:public public function getMimeType() : String;
	
	@:overload @:public public function isBody() : Bool;
	
	@:overload @:public public function isHeader() : Bool;
	
	@:overload @:public public function isUnbound() : Bool;
	
	@:overload @:public public function isAttachment() : Bool;
	
	
}
/**
* Represents 4 kinds of binding.
*/
@:native('com$sun$xml$internal$ws$api$model$ParameterBinding$Kind') extern enum ParameterBinding_Kind
{
	BODY;
	HEADER;
	UNBOUND;
	ATTACHMENT;
	
}

