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
extern class DLSSampleOptions
{
	/**
	* This class stores options how to playback sampled data like pitch/tuning,
	* attenuation and loops.
	* It is stored as a "wsmp" chunk inside DLS files.
	*
	* @author Karl Helgason
	*/
	@:protected private var unitynote : Int;
	
	@:protected private var finetune : java.StdTypes.Int16;
	
	@:protected private var attenuation : Int;
	
	@:protected private var options : haxe.Int64;
	
	@:protected private var loops : java.util.List<com.sun.media.sound.DLSSampleLoop>;
	
	@:overload @:public public function getAttenuation() : Int;
	
	@:overload @:public public function setAttenuation(attenuation : Int) : Void;
	
	@:overload @:public public function getFinetune() : java.StdTypes.Int16;
	
	@:overload @:public public function setFinetune(finetune : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function getLoops() : java.util.List<com.sun.media.sound.DLSSampleLoop>;
	
	@:overload @:public public function getOptions() : haxe.Int64;
	
	@:overload @:public public function setOptions(options : haxe.Int64) : Void;
	
	@:overload @:public public function getUnitynote() : Int;
	
	@:overload @:public public function setUnitynote(unitynote : Int) : Void;
	
	
}
