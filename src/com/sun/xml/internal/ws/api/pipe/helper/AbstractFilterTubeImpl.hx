package com.sun.xml.internal.ws.api.pipe.helper;
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
extern class AbstractFilterTubeImpl extends com.sun.xml.internal.ws.api.pipe.helper.AbstractTubeImpl
{
	/**
	* Convenient default implementation for filtering {@link Tube}.
	*
	* <p>
	* In this prototype, this is not that convenient, but in the real production
	* code where we have {@code preDestroy()} and {@code clone()}, this
	* is fairly handy.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:protected @:final private var next(default, null) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	@:overload @:protected private function new(next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload @:protected private function new(that : com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	/**
	* Default no-op implementation.
	*/
	@:overload @:public override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Default no-op implementation.
	*/
	@:overload @:public override public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Default no-op implementation.
	*/
	@:overload @:public override public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:public override public function preDestroy() : Void;
	
	
}
