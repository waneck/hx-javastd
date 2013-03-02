package com.sun.xml.internal.ws.server;
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
extern class AbstractMultiInstanceResolver<T> extends com.sun.xml.internal.ws.server.AbstractInstanceResolver<T>
{
	/**
	* Partial implementation of {@link InstanceResolver} with code
	* to handle multiple instances per server.
	*
	* @author Kohsuke Kawaguchi
	*/
	private var clazz(default, null) : Class<T>;
	
	/*almost final*/
	private var owner : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	@:overload public function new(clazz : Class<T>) : Void;
	
	/**
	* Perform resource injection on the given instance.
	*/
	@:overload @:final private function prepare(t : T) : Void;
	
	/**
	* Creates a new instance via the default constructor.
	*/
	@:overload @:final private function create() : T;
	
	@:overload public function start(wsc : com.sun.xml.internal.ws.api.server.WSWebServiceContext, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	@:overload @:final private function dispose(instance : T) : Void;
	
	
}
