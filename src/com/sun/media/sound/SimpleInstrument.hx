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
extern class SimpleInstrument extends com.sun.media.sound.ModelInstrument
{
	private var preset : Int;
	
	private var bank : Int;
	
	private var percussion : Bool;
	
	private var name : String;
	
	private var parts : java.util.List<SimpleInstrument_SimpleInstrumentPart>;
	
	@:overload public function new() : Void;
	
	@:overload public function clear() : Void;
	
	@:overload public function add(performers : java.NativeArray<com.sun.media.sound.ModelPerformer>, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int, exclusiveClass : Int) : Void;
	
	@:overload public function add(performers : java.NativeArray<com.sun.media.sound.ModelPerformer>, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int) : Void;
	
	@:overload public function add(performers : java.NativeArray<com.sun.media.sound.ModelPerformer>, keyFrom : Int, keyTo : Int) : Void;
	
	@:overload public function add(performers : java.NativeArray<com.sun.media.sound.ModelPerformer>) : Void;
	
	@:overload public function add(performer : com.sun.media.sound.ModelPerformer, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int, exclusiveClass : Int) : Void;
	
	@:overload public function add(performer : com.sun.media.sound.ModelPerformer, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int) : Void;
	
	@:overload public function add(performer : com.sun.media.sound.ModelPerformer, keyFrom : Int, keyTo : Int) : Void;
	
	@:overload public function add(performer : com.sun.media.sound.ModelPerformer) : Void;
	
	@:overload public function add(ins : com.sun.media.sound.ModelInstrument, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int, exclusiveClass : Int) : Void;
	
	@:overload public function add(ins : com.sun.media.sound.ModelInstrument, keyFrom : Int, keyTo : Int, velFrom : Int, velTo : Int) : Void;
	
	@:overload public function add(ins : com.sun.media.sound.ModelInstrument, keyFrom : Int, keyTo : Int) : Void;
	
	@:overload public function add(ins : com.sun.media.sound.ModelInstrument) : Void;
	
	@:overload override public function getPerformers() : java.NativeArray<com.sun.media.sound.ModelPerformer>;
	
	@:overload override public function getData() : Dynamic;
	
	@:overload override public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	@:overload override public function getPatch() : com.sun.media.sound.ModelPatch;
	
	@:overload public function setPatch(patch : javax.sound.midi.Patch) : Void;
	
	
}
/**
* A simple instrument that is made of other ModelInstrument, ModelPerformer
* objects.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SimpleInstrument$SimpleInstrumentPart') @:internal extern class SimpleInstrument_SimpleInstrumentPart
{
	
}
