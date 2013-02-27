package com.sun.xml.internal.ws.client;
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
@:internal extern class HandlerConfigurator
{
	
}
/**
* Configures handlers by calling {@link HandlerResolver}.
* <p>
* When a null {@link HandlerResolver} is set by the user to
* {@link Service#setHandlerResolver(HandlerResolver)}, we'll use this object
* with null {@link #resolver}.
*/
@:native('com$sun$xml$internal$ws$client$HandlerConfigurator$HandlerResolverImpl') @:internal extern class HandlerConfigurator_HandlerResolverImpl extends HandlerConfigurator
{
	@:overload public function new(resolver : javax.xml.ws.handler.HandlerResolver) : Void;
	
	
}
/**
* Configures handlers from {@link HandlerChain} annotation.
*
* <p>
* This class is a simple
* map of PortInfo objects to handler chains. It is used by a
* {@link WSServiceDelegate} object, and can
* be replaced by user code with a different class implementing
* HandlerResolver. This class is only used on the client side, and
* it includes a lot of logging to help when there are issues since
* it deals with port names, service names, and bindings. All three
* must match when getting a handler chain from the map.
*
* <p>It is created by the {@link WSServiceDelegate}
* class , which uses {@link HandlerAnnotationProcessor} to create
* a handler chain and then it sets the chains on this class and they
* are put into the map. The ServiceContext uses the map to set handler
* chains on bindings when they are created.
*/
@:native('com$sun$xml$internal$ws$client$HandlerConfigurator$AnnotationConfigurator') @:internal extern class HandlerConfigurator_AnnotationConfigurator extends HandlerConfigurator
{
	
}
