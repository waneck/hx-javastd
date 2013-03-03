package com.sun.xml.internal.ws.api.pipe;
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
extern class PipelineAssemblerFactory
{
	/**
	* Creates a {@link PipelineAssembler} applicable for the given binding ID.
	*
	* @param bindingId
	*      The binding ID for which a pipeline will be created,
	*      such as {@link SOAPBinding#SOAP11HTTP_BINDING}.
	*      Must not be null.
	*
	* @return
	*      null if this factory doesn't recognize the given binding ID.
	*/
	@:overload @:public @:abstract public function doCreate(bindingId : com.sun.xml.internal.ws.api.BindingID) : com.sun.xml.internal.ws.api.pipe.PipelineAssembler;
	
	/**
	* Locates {@link PipelineAssemblerFactory}s and create
	* a suitable {@link PipelineAssembler}.
	*
	* @param bindingId
	*      The binding ID string for which the new {@link PipelineAssembler}
	*      is created. Must not be null.
	* @return
	*      Always non-null, since we fall back to our default {@link PipelineAssembler}.
	*/
	@:overload @:public @:static public static function create(classLoader : java.lang.ClassLoader, bindingId : com.sun.xml.internal.ws.api.BindingID) : com.sun.xml.internal.ws.api.pipe.PipelineAssembler;
	
	
}
