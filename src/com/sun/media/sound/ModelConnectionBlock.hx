package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class ModelConnectionBlock
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(scale : Float, destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function new(source : com.sun.media.sound.ModelSource, destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function new(source : com.sun.media.sound.ModelSource, scale : Float, destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function new(source : com.sun.media.sound.ModelSource, control : com.sun.media.sound.ModelSource, destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function new(source : com.sun.media.sound.ModelSource, control : com.sun.media.sound.ModelSource, scale : Float, destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function getDestination() : com.sun.media.sound.ModelDestination;
	
	@:overload @:public public function setDestination(destination : com.sun.media.sound.ModelDestination) : Void;
	
	@:overload @:public public function getScale() : Float;
	
	@:overload @:public public function setScale(scale : Float) : Void;
	
	@:overload @:public public function getSources() : java.NativeArray<com.sun.media.sound.ModelSource>;
	
	@:overload @:public public function setSources(source : java.NativeArray<com.sun.media.sound.ModelSource>) : Void;
	
	@:overload @:public public function addSource(source : com.sun.media.sound.ModelSource) : Void;
	
	
}
