package com.sun.xml.internal.ws.api.server;
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
extern class ContainerResolver
{
	/**
	* Sets the custom container resolver which can be used to get client's
	* {@link Container}.
	*
	* @param resolver container resolver
	*/
	@:overload @:public @:static public static function setInstance(resolver : com.sun.xml.internal.ws.api.server.ContainerResolver) : Void;
	
	/**
	* Returns the container resolver which can be used to get client's {@link Container}.
	*
	* @return container resolver instance
	*/
	@:overload @:public @:static public static function getInstance() : com.sun.xml.internal.ws.api.server.ContainerResolver;
	
	/**
	* Returns the default container resolver which can be used to get {@link Container}.
	*
	* @return default container resolver
	*/
	@:overload @:public @:static public static function getDefault() : com.sun.xml.internal.ws.api.server.ContainerResolver;
	
	/**
	* Returns the {@link Container} context in which client is running.
	*
	* @return container instance for the client
	*/
	@:overload @:public @:abstract public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	
}
