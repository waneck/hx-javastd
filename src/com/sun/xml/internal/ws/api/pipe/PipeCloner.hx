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
extern class PipeCloner extends com.sun.xml.internal.ws.api.pipe.TubeCloner
{
	/**
	* {@link Pipe} version of {@link #clone(Tube)}
	*/
	@:overload @:public @:static public static function clone(p : com.sun.xml.internal.ws.api.pipe.Pipe) : com.sun.xml.internal.ws.api.pipe.Pipe;
	
	/**
	* {@link Pipe} version of {@link #copy(Tube)}
	*/
	@:overload @:public override public function copy<T : com.sun.xml.internal.ws.api.pipe.Pipe>(p : T) : T;
	
	/**
	* The {@link Pipe} version of {@link #add(Tube, Tube)}.
	*/
	@:overload @:public public function add(original : com.sun.xml.internal.ws.api.pipe.Pipe, copy : com.sun.xml.internal.ws.api.pipe.Pipe) : Void;
	
	/**
	* Disambiguation version.
	*/
	@:overload @:public public function add(original : com.sun.xml.internal.ws.api.pipe.helper.AbstractTubeImpl, copy : com.sun.xml.internal.ws.api.pipe.helper.AbstractTubeImpl) : Void;
	
	
}
